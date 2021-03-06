---
id: http://contentapi.theodi.org/kicking-aruba-into-a-bin.json
web_url: http://theodi.org/blog/kicking-aruba-into-a-bin
slug: kicking-aruba-into-a-bin
title: Kicking Aruba into a bin
format: article
updated_at: '2016-02-15T13:56:09+00:00'
created_at: '2016-01-07T16:56:25+00:00'
tag_ids:
- blog
- ruby
- aruba
- rspec
tags:
- id: http://contentapi.theodi.org/tags/articles/blog.json
  web_url: 
  title: Blog Post
  details:
    description: Blog Post
    short_description: 
    type: article
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?article=blog
    web_url: http://theodi.org/tags/blog
    slug: blog
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/ruby.json
  web_url: 
  title: ruby
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=ruby
    web_url: http://theodi.org/tags/ruby
    slug: ruby
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/aruba.json
  web_url: 
  title: aruba
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=aruba
    web_url: http://theodi.org/tags/aruba
    slug: aruba
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/rspec.json
  web_url: 
  title: rspec
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=rspec
    web_url: http://theodi.org/tags/rspec
    slug: rspec
  parent: 
related:
- id: http://contentapi.theodi.org/labs.json
  web_url: http://theodi.org/labs
  slug: labs
  title: ODI Labs
  format: article
  updated_at: '2016-02-04T16:14:59+00:00'
  created_at: '2015-07-29T15:44:31+01:00'
  tag_ids:
  - page
  - research-and-development
  - data-science
  - odi-labs
- id: http://contentapi.theodi.org/blockchain-and-open-data-how-could-it-work.json
  web_url: http://theodi.org/blog/blockchain-and-open-data-how-could-it-work
  slug: blockchain-and-open-data-how-could-it-work
  title: 'Blockchain and open data: how could it work?'
  format: article
  updated_at: '2016-01-19T10:34:16+00:00'
  created_at: '2016-01-18T13:08:34+00:00'
  tag_ids:
  - blog
  - blockchain
  - labs
  - odi-labs
details:
  need_id: 
  business_proposition: false
  description: ODI Head of Robots Sam Pikesley uncovers some new features in Rspec
    in his search for alternative tools for building Ruby command-line interface apps
  excerpt: ODI Head of Robots Sam Pikesley uncovers some new features in Rspec in
    his search for alternative tools for building Ruby command-line interface apps
  language: en
  need_extended_font: false
  url: ''
  content: "<p><em>ODI Head of Robots Sam Pikesley uncovers some new features in Rspec
    in his search for alternative tools for building Ruby command-line interface apps</em></p>\n\n<p><img
    src=\"http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/c1/d4/56c1d4f2d0d4622145000001/2016-02-15_13.16.16.jpg\"
    alt=\"\" class=\"img text-center\" id=\"attachment-56c1d4f2f362be07f1000008\"
    /></p>\n\n<p><small>&lsquo;Doing it all with Rspec.&rsquo; Photo: Sam Pikesley</small></p>\n\n<p>Once
    upon a time, I was a UNIX SysAdmin, which means I&rsquo;ve spent a lot of my working
    life deep in the command-line. As a consequence, many of the Ruby tools I&rsquo;ve
    built in recent years have been CLI ones.</p>\n\n<p>My weapon-of-choice for building
    Ruby command-line interface (CLI) apps has long been the mighty <a rel=\"external\"
    href=\"http://whatisthor.com/\">Thor</a>, and up until now I&rsquo;ve always used
    <a rel=\"external\" href=\"https://github.com/cucumber/aruba\">Aruba</a> to test
    my Thor apps (while sticking with <a rel=\"external\" href=\"http://rspec.info/\">Rspec</a>
    to TDD the actual workings of my gems). This has mostly worked OK, but I&rsquo;m
    also (for better or worse) a big fan of <a rel=\"external\" href=\"https://github.com/vcr/vcr\">VCR</a>,
    and these things really do not play nicely together.</p>\n\n<h3>Oh hi, technical
    debt</h3>\n\n<p>Because Aruba spawns a separate Ruby process to run its tests,
    it&rsquo;s all invisible to VCR. There are a number of (<a rel=\"external\" href=\"https://groups.google.com/forum/#!topic/cukes/UQRkro-AeVg\">now
    deprecated</a>) <a rel=\"external\" href=\"http://georgemcintosh.com/vcr-and-aruba/\">hacks</a>
    to get around this problem, but I was finding that I had to write my features
    in very contrived ways (which definitely defeats the purpose of Cucumber), and
    it still behaved unexpectedly. And when Aruba also started to interfere with some
    of my other <a rel=\"external\" href=\"https://github.com/travisjeffery/timecop\">favourite</a>
    <a rel=\"external\" href=\"https://coveralls.io/\">tools</a>, I decided it was
    Different Solution time.</p>\n\n<h3>Doing it all with Rspec</h3>\n\n<p>I came
    across <a rel=\"external\" href=\"http://bokstuff.com/blog/testing-thor-command-lines-with-rspec/\">this
    blogpost</a> which mentions <a rel=\"external\" href=\"https://github.com/erikhuda/thor/blob/d634d240bdc0462fe677031e1dc6ed656e54f27e/spec/helper.rb#L49-L60\">this
    capture method</a> in Thor&rsquo;s <em>spec_helper</em>. Turns out this is kinda
    generic, and we can paste it right into our Gem&rsquo;s own <em>spec_helper</em>.</p>\n\n<p>But
    wait, don&rsquo;t call yet, because <em>then</em> I was pointed towards <a rel=\"external\"
    href=\"http://stackoverflow.com/questions/1480537/how-can-i-validate-exits-and-aborts-in-rspec/28047771#28047771\">this
    Stack Overflow post</a> about validating exits in Rspec, and <em>that</em> led
    me to <a rel=\"external\" href=\"https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/output-matcher\">Rspec&rsquo;s
    <code>output</code> matcher</a> which appears to make all of the foregoing redundant.</p>\n\n<p>So
    how does this all fit together?</p>\n\n<h3>Simple match</h3>\n\n<pre><code>module
    Banjaxer\n  describe CLI do\n    let :subject do\n      described_class.new\n
    \   end\n\n    it 'has a version' do\n      expect { subject.version }.to output(/^banjaxer
    version #{VERSION}$/).to_stdout\n    end\n  end\nend\n\n\nmodule Banjaxer\n  class
    CLI &lt; Thor\n    desc 'version', 'Print banjaxer version'\n    def version\n
    \     puts \"banjaxer version #{VERSION}\"\n    end\n    map %w(-v --version)
    =&gt; :version\n  end\nend\n</code></pre>\n\n<p>In the spec, we set up a instance
    of our class, which is a <em>Thor</em>, then we call its <code>#version</code>
    method and inspect whatever lands on STDOUT.</p>\n\n<p>There is a certain amount
    of sleight-of-hand going on in this: note that our argument to the <em>output</em>
    matcher is a regex, even though we really want to match a string. That&rsquo;s
    because the actual output string will have a <code>\"\\n\"</code> on the end of
    it, so we&rsquo;d have to match that explicitly.</p>\n\n<h3>With an argument</h3>\n\n<pre><code>module
    Banjaxer\n  describe CLI do\n    let :subject do\n      described_class.new\n
    \   end\n\n    it 'gets the url', :vcr do\n      expect { subject.get_url 'http://uncleclive.herokuapp.com/banjax'
    }.to output(/^Content-Length is 808$/).to_stdout\n    end\n  end\nend\n\nmodule
    Banjaxer\n  class CLI &lt; Thor\n    desc 'get url', 'GET a url and tell us the
    Content-Length'\n    def get_url url\n      h = HTTParty.get url, headers: { 'Accept'
    =&gt; 'application/json' }\n      puts \"Content-Length is #{h.headers['Content-Length']}\"\n
    \   end\n  end\nend\n</code></pre>\n\n<p>We might notice some more prestidigitation
    here, when we consider how Thor works: it takes something like <code>banjaxer
    get_url http://uncleclive.herokuapp.com/banjax</code> from STDIN, and turns that
    (via the <code>./exe/banjaxer</code> executable) into a call to <code>#version('http://uncleclive.herokuapp.com/banjax')</code>
    - we&rsquo;re bypassing that step and making the method call directly. The corresponding
    Aruba:</p>\n\n<pre><code>Scenario: Get url        \n  When I successfully run
    `banjaxer get_url http://uncleclive.herokuapp.com/banjax`        \n  Then the
    output should contain \"Content-Length is 808\"\n</code></pre>\n\n<p>&hellip;
    will do <em>exactly</em> what it says, which may be a more accurate test, but
    notice that we&rsquo;ve dropped a <code>:vcr</code> into the Rspec version <a
    rel=\"external\" href=\"https://github.com/theodi/banjaxer/blob/ed1a4801e1f250113310d607eee5e903200bfac2/spec/fixtures/vcr/Banjaxer_CLI/gets_the_url.yml\"><em>and
    it worked as expected</em></a>, which simply would not happen with Aruba.</p>\n\n<h3>With
    options</h3>\n\n<pre><code>module Banjaxer\n  describe CLI do\n    let :subject
    do\n      described_class.new\n    end\n\n    context 'with options' do\n      it
    'can handle an option' do\n        subject.options = {json: true}\n        expect
    { subject.embiggen 'the smallest man' }.to output(/^{\"embiggening\":\"the smallest
    man\"}/).to_stdout\n      end\n    end\n  end\nend\n\nmodule Banjaxer\n  class
    CLI &lt; Thor\n    desc 'embiggen', 'Embiggen something'\n    method_option :json,\n
    \                 type: :boolean,\n                  aliases: '-j',\n                  description:
    'Return JSON on the console'\n    def embiggen value\n      if options[:json]\n
    \       puts({ embiggening: value }.to_json)\n      else\n        puts \"embiggening
    #{value}\"\n      end\n    end\n  end\nend\n</code></pre>\n\n<p>Some more trickery
    here, which took me a little while to figure out: when we pass options on the
    command-line, Thor shoves them into the <em>options</em> hash on the instance.
    So in our spec, we set up that hash ourselves with <code>subject.options = {json:
    true}</code> and then call the method.</p>\n\n<h3>Testing exit statuses</h3>\n\n<pre><code>module
    Banjaxer\n  describe CLI do\n    let :subject do\n      described_class.new\n
    \   end\n\n    context 'deal with exit codes' do\n      it 'exits with a zero
    by default' do\n        expect { subject.cromulise }.to exit_with_status 0\n      end\n
    \   end\n  end\nend\n\nmodule Banjaxer\n  class CLI &lt; Thor\n    desc 'cromulise',
    'Exit with the supplied status'\n    def cromulise status = 'zero'\n      lookups
    = {\n        'zero' =&gt; 0,\n        'one' =&gt; 1\n      }\n      code = lookups.fetch(status,
    99)\n\n      puts \"Exiting with a #{code}\"\n      exit code\n    end\n  end\nend\n</code></pre>\n\n<p>Checking
    the exit status is supported out-of-the-box in Aruba:</p>\n\n<pre><code>Scenario:
    Get version\n  When I run `banjaxer -v`\n  Then the exit status should be 0\n</code></pre>\n\n<p>&hellip;
    but for Rspec, we have to cook up our own <a rel=\"external\" href=\"https://www.relishapp.com/rspec/rspec-expectations/v/2-4/docs/custom-matchers/define-matcher\">custom
    matcher</a>:</p>\n\n<pre><code>RSpec::Matchers.define :exit_with_status do |expected|\n
    \ match do |actual|\n    expect { actual.call }.to raise_error(SystemExit)\n\n
    \   begin\n      actual.call\n    rescue SystemExit =&gt; e\n      expect(e.status).to
    eq expected\n    end\n  end\n\n  supports_block_expectations\nend\n</code></pre>\n\n<p>This
    is surprisingly simple: we just <code>#call</code> the method passed in as <code>actual</code>,
    trap the exception it raises, and check its <code>#status</code> against the expectation.
    That <code>supports_block_expectations</code> is apparently required because this
    matcher actually calls a block (but this is a bit magical and I don&rsquo;t fully
    understand it, I just know that it didn&rsquo;t work without it).</p>\n\n<h3>Inspecting
    output files</h3>\n\n<pre><code>module Banjaxer\n  describe CLI do\n    let :subject
    do\n      described_class.new\n    end\n\n    context 'read output files' do\n
    \     it 'writes the expected output file' do\n        subject.say 'monorail'\n
    \       expect('said').to have_content (\n        \"\"\"\n        The word was:\n
    \         monorail\n        \"\"\"\n        )\n      end\n    end\n  end\nend\n\nmodule
    Banjaxer\n  class CLI &lt; Thor\n    desc 'say', 'Say the word'\n    def say word,
    outfile = 'said'\n      File.open outfile, 'w' do |f|\n        f.write \"The word
    was:\\n#{word}\"\n      end\n    end\n  end\nend\n</code></pre>\n\n<p>Replicating
    this (very useful) feature of Aruba:</p>\n\n<pre><code>Scenario: Write file\n
    \ When I run `banjaxer say monorail`\n  Then a file named \"said\" should exist\n
    \ And the file named \"said\" should contain:  \n  \"\"\"\n  The word was:\n    monorail\n
    \ \"\"\"\n</code></pre>\n\n<p>&hellip; required considerably more work. The full
    code for the <code>have_content</code> custom matcher (and its supporting bits
    and pieces) can be seen <a rel=\"external\" href=\"https://github.com/theodi/banjaxer/blob/master/spec/support/matchers/have_content.rb\">here</a>.
    There&rsquo;s quite a bit going on in this, so let&rsquo;s dig in:</p>\n\n<h4><a
    rel=\"external\" href=\"https://github.com/theodi/banjaxer/blob/master/spec/support/matchers/have_content.rb#L1-L13\">Temporary
    output directory</a></h4>\n\n<p>Presumably our CLI app would generate any output
    files in its Present Working Directory, but we can get Rspec to make us a temporary
    directory and switch to that before each test (and then bounce back out of it
    afterwards). Notice that it deletes the <em>tmp/</em> directory before it starts,
    <em>not</em> at the end of the run. I stole this idea from Aruba and it means
    that in the event of a spec failure, we can run just the failing test and then
    debug by having a look at exactly the output it produced.</p>\n\n<h4><a rel=\"external\"
    href=\"https://github.com/theodi/banjaxer/blob/master/spec/support/matchers/have_content.rb#L15-L39\">Custom
    matcher</a></h4>\n\n<p>This matcher takes the <em>expected</em> string from the
    spec and reads the <em>actual</em> file, then splits them both into lines and
    compares them – if it finds a mismatch, then <code>pass</code> becomes <code>false</code>
    and we get a failure. The clever stuff is in the next section, though:</p>\n\n<h4><a
    rel=\"external\" href=\"https://github.com/theodi/banjaxer/blob/master/spec/support/matchers/have_content.rb#L41-L61\">Monkey-patching
    <code>String</code></a></h4>\n\n<p>I originally wrote these as normal static methods,
    but it occurred to me that everything would be a lot more elegant if they were
    <code>String</code> instance methods. The interesting (and possibly brittle) thing
    here is the <code>#is_regex</code> stuff: if the string <em>looks</em> like a
    Regular Expression (ie with leading and trailing slashes) then we take the body
    of it and turn it into an <em>actual</em> regular expression and then do our comparison
    against that. I think this may bite me somewhere down the road.</p>\n\n<p>This
    matcher is significantly more sophisticated than the <code>exit_with_status</code>
    one - so much so that it became necessary to <a rel=\"external\" href=\"https://github.com/theodi/banjaxer/blob/master/spec/matcher/have_content_spec.rb\">generate
    Rspec with Rspec</a>.</p>\n\n<h3>Suppressing console output</h3>\n\n<p>Any self-respecting
    CLI app is likely to be generating feedback on the command line, but this is going
    to pollute our Rspec output. We can suppress it with something like this in the
    <em>spec_helper</em>:</p>\n\n<pre><code>RSpec.configure do |config|\n  # Suppress
    CLI output. This *will* break Pry\n  original_stderr = $stderr\n  original_stdout
    = $stdout\n  config.before(:all) do\n    # Redirect stderr and stdout\n    $stderr
    = File.new '/dev/null', 'w'\n    $stdout = File.new '/dev/null', 'w'\n  end\n\n
    \ config.after(:all) do\n    $stderr = original_stderr\n    $stdout = original_stdout\n
    \ end\nend\n</code></pre>\n\n<p>Before each test, we redirect STDOUT and STDERR
    to <code>/dev/null</code>, then bring them back afterwards. Note that this is
    not platform-independent, you need to something different on Windows, but I don&rsquo;t
    know what. Also note that this causes <em>pry</em> to do <em>really</em> odd things
    - disable this if you want to reliably pry into your code (maybe this should be
    wrapped in an <code>unless ENV['PRY']</code> guard of some sort).</p>\n\n<h3>Running
    the code</h3>\n\n<p>The code is all <a rel=\"external\" href=\"https://github.com/theodi/banjaxer\">here</a>,
    please feel free to have a look at it and run it:</p>\n\n<pre><code>git clone
    https://github.com/theodi/banjaxer\ncd banjaxer\nbundle\nbundle exec rake\n</code></pre>\n\n<p>As
    always, feedback, PRs etc are welcome.</p>\n\n<h3>Next steps</h3>\n\n<p>I seem
    to have replicated quite a lot of the functionality of Aruba, but with the added
    benefit of not using Aruba. I think the thing to do now <em>might</em> be to package
    this up into a Gem and use it on a real project.</p>\n\n<p>I sincerely hope somebody
    else finds this useful – I certainly did.</p>\n\n<p><em><strong>Sam Pikesley is
    <a rel=\"external\" href=\"http://theodi.org/team/sam-pikesley\">Head of Robots</a>
    at the ODI. Follow <a rel=\"external\" href=\"https://twitter.com/pikesley\">@pikesley</a>
    on Twitter.</strong></em></p>\n\n<p><em><strong>If you have ideas or experience
    in open data that you&rsquo;d like to share, <a href=\"&#109;&#097;&#105;&#108;&#116;&#111;:&#112;&#114;&#111;&#100;&#117;&#099;&#116;&#105;&#111;&#110;&#064;&#116;&#104;&#101;&#111;&#100;&#105;&#046;&#111;&#114;&#103;\"
    title=\"pitch us a blog\">pitch us a blog</a> or tweet us at <a rel=\"external\"
    href=\"https://twitter.com/odihq\" title=\"@ODIHQ\">@ODIHQ</a>.</strong></em></p>\n\n"
  media_enquiries_name: ''
  media_enquiries_email: ''
  media_enquiries_telephone: ''
  alternative_title: Kicking Aruba into a bin
  organizations: []
  author:
    name: Sam Pikesley
    slug: sam-pikesley
    web_url: http://theodi.org/team/sam-pikesley
    tag_ids:
    - team
    - rnd-programme
  nodes: []
author:
  name: Sam Pikesley
  slug: sam-pikesley
  web_url: http://theodi.org/team/sam-pikesley
  tag_ids:
  - team
  - rnd-programme
nodes: []
organizations: []
related_external_links: []
---