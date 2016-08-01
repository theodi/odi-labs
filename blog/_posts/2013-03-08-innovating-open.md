---
author:
  name: Sam Pikesley
  slug: sam-pikesley
description: 
---

<p>The idea of &ldquo;Innovation time&rdquo; originated, as far as I&rsquo;ve been able to establish, at 3M in 1948. HP are reported to have allowed their engineers to work on whatever they wanted on a Friday afternoon, and &ldquo;20% time&rdquo; is a firm fixture at Google.</p>

<p>Here at the ODI, the Tech Team are fortunate enough to be given 20% time, but it&rsquo;s not always easy to think of something to work on. However yesterday we were having a discussion around how we manage deployments (and there&rsquo;ll doubtless be lots more about that in future blosts as we move towards the Holy Grail of continuous deployment) and something <a rel="external" href="http://theodi.org/people/james-smith">James</a> said gave me an idea.</p>

<p>So I&rsquo;ve created a <a rel="external" href="http://docs.opscode.com/essentials_cookbooks.html">cookbook</a> for the <a rel="external" href="http://www.opscode.com/chef/">Chef</a> configuration-management tool; this will certainly solve a problem for us, but because we&rsquo;re <a rel="external" href="http://www.theodi.org/blog/better-living-through-openness">all about Open</a> it&rsquo;s available to anybody who wants it under the <a rel="external" href="http://opensource.org/licenses/MIT">MIT license</a>. The hope is that it will help other people with a similar itch to scratch, but more than that, that some of those people can help us to make it better - we hold it as axiomatic that there are more good ideas in the world than there are in the ODI.</p>

<h2>The Technical Stuff</h2>

<p>Our applications rely on a bunch of configuration variables (API keys, Oauth tokens, URLs etc) which up until now we&rsquo;ve been storing in our shared password file and passing around between nodes as required. This process is clearly error prone (&ldquo;Why is the Jenkins build broken again?&rdquo; &ldquo;Oh, I forgot to add that new env thing, sorry&rdquo;) and would (as with so many other things) be much better handled by robots. So, let&rsquo;s automate!</p>

<p>Our configuration-management weapon of choice is <a rel="external" href="http://www.opscode.com/chef/">Chef</a>, which has the concept of <a rel="external" href="http://docs.opscode.com/essentials_data_bags.html">data bags</a>. We&rsquo;ll store our configuration data as JSON in one of these.</p>

<p>So we have a bit of JSON that looks like this:</p>

<pre><code>{
  "id": "development",
  "content": {
    "capsulecrm": {
      "account_name": "foobar",
      "api_token": "123abc",
      "default_owner": "some_user"
    },
    "eventbrite": {
      "api_key": "456xyz",
      "organizer_id": "6031769",
      "user_key": "s00pahs3kr3t"
    },
    "github": {
      "login": "user",
      "organisation": "theodi",
      "password": "icouldtellyoubutthenidhavetokillyou"
    },
    "leftronic": {
      "api_key": "igot99problems",
      "github": {
        "forks": "987fgh",
        "issues": "asdf1974"
      }
    }
  }
}
</code></pre>

<p>(NOTE: FAKE DATA!!!) Now we&rsquo;re using the rather splendid <a rel="external" href="https://github.com/bkeepers/dotenv">Dotenv</a> gem, which expects to read environment files in either a conventional Unix-ish <em>KEY=value</em> format or, more interestingly for us, a YAML-ish <em>KEY: value</em> style. It&rsquo;s only YAML-<em>ish</em>, though, it doesn&rsquo;t support nesting (AFAIK). We could just stuff the JSON with the raw keys, but doing them hierarchically like this reduces redundancy, improves readability, and makes processing the data a lot more interesting.</p>

<p>So I have this data and I need to turn it into something Dotenv-friendly like this:</p>

<pre><code>CAPSULECRM_ACCOUNT_NAME: foobar
CAPSULECRM_API_TOKEN: 123abc
CAPSULECRM_DEFAULT_OWNER: some_user
EVENTBRITE_API_KEY: 456xyz
EVENTBRITE_ORGANIZER_ID: 6031769
EVENTBRITE_USER_KEY: s00pahs3kr3t
GITHUB_LOGIN: user
GITHUB_ORGANISATION: theodi
GITHUB_PASSWORD: icouldtellyoubutthenidhavetokillyou
LEFTRONIC_API_KEY: igot99problems
LEFTRONIC_GITHUB_FORKS: 987fgh
LEFTRONIC_GITHUB_ISSUES: asdf1974
</code></pre>

<p>which means recursion.</p>

<p>Once, a long time ago, I knew how to do recursion. It&rsquo;s astonishing how completely you can forget things. So, for the benefit of me and anybody else who&rsquo;s stumbled across this because they&rsquo;re having similar problems, here&rsquo;s the solution at which I arrived after several hours of headscratching and Googling:</p>

<pre><code>def walk hash, stack = [], output = []
  hash.each do |key, val|
    stack &lt;&lt; key
    if val.is_a?(Hash)
      walk val, stack, output
    else
      output &lt;&lt; "%s: %s" % [
          stack.join("_").upcase,
          val
      ]
      stack.pop
    end
  end
  stack.pop

  output.join "\n"
end
</code></pre>

<p>So, we pass in our hash, plus two arrays (which default to empty). We step through the top level of the hash, and for each entry, push the key onto our stack, and examine the value. If it&rsquo;s a hash, we go around again, but this time the arrays may contain some stuff: particularly, the stack might have one or more keys in it.</p>

<p>Sometimes, the value is not a hash, it&rsquo;s a string. We have a winner! So we take our current stack of keys and glue them together, with underscores, into a string, and attach our value, and throw this into our output array. And because we&rsquo;ve now got the value for this (compound) key, we can pop the last value off the stack and bin it.</p>

<p>And now we come to the bit that caused the most swearing: when we&rsquo;ve processed the entire hash, <em>we need to pop the remaining value off the stack</em>. Because I&rsquo;d constructed my test JSON poorly, it all looked superficially successful until I pointed it at the real stuff. There&rsquo;s a lesson there somewhere.</p>

<p>Anyway, that&rsquo;s enough CompSci 101. If you&rsquo;re of a DevOps-ish bent and would like to actually use this cookbook, you can find it <a rel="external" href="https://github.com/theodi/chef-envbuilder">here</a>; and if you&rsquo;d like to help us improve it, we are <em>always</em> open to pull-requests.</p>
