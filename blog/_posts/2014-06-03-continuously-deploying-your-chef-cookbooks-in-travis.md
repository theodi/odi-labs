---
id: http://contentapi.theodi.org/continuously-deploying-your-chef-cookbooks-in-travis.json
web_url: http://theodi.org/blog/continuously-deploying-your-chef-cookbooks-in-travis
slug: continuously-deploying-your-chef-cookbooks-in-travis
title: Continuously deploying your Chef cookbooks in Travis
format: article
updated_at: '2015-09-11T10:55:48+01:00'
created_at: '2014-06-03T10:58:41+01:00'
tag_ids:
- blog
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
related: []
details:
  need_id: 
  business_proposition: false
  description: ''
  excerpt: Here in the ODI Tech Team, we love robots (heck, we even have a Head of
    Robots), and, as a result, all our code is deployed by robots (using Chef).
  language: en
  need_extended_font: false
  url: ''
  content: "<p>Here in the ODI Tech Team, we love robots (heck, we even have a <a
    rel=\"external\" href=\"http://theodi.org/team/sam-pikesley\">Head of Robots</a>),
    and, as a result, all our code is deployed by robots (using <a rel=\"external\"
    href=\"http://www.getchef.com/\">Chef</a>).</p>\n\n<p>As has been <a rel=\"external\"
    href=\"http://theodi.org/blog/better-living-through-openness\">mentioned before</a>,
    our workflow is very much based on <a rel=\"external\" href=\"http://scottchacon.com/2011/08/31/github-flow.html\">Github
    flow</a>. We write some code (with tests), publish it to a branch, and then open
    a pull request. If the tests pass (on <a rel=\"external\" href=\"https://travis-ci.org/\">Travis</a>),
    someone else reviews the code and merges it. Once the tests pass on the master
    branch, a tag is applied to the code and the Chef robots (which run every 10 minutes
    or so), pick the code up and deploy it to our servers. </p>\n\n<p>Up until now,
    we haven&rsquo;t been able to apply this approach to our Chef cookbooks. We test
    them, sure, but it&rsquo;s tricky to test infrastructure on Travis, because it&rsquo;s
    difficult (nay, impossble) to spin up virtual machines within the virtual machines
    that Travis spin up to test our code.</p>\n\n<p>However, we&rsquo;ve recently
    started using <a rel=\"external\" href=\"http://kitchen.ci/\">Test Kitchen</a>
    to test our Chef recipes, and thanks to some wonderful tools that other people
    have built, this is a lot easier. </p>\n\n<p>When running Test Kitchen on our
    local machines, the default behaviour is to use <a rel=\"external\" href=\"http://www.vagrantup.com/\">Vagrant</a>
    to launch a virtual machine, apply the recipes and then use <a rel=\"external\"
    href=\"http://serverspec.org/\">ServerSpec</a> to test the behaviour (For more
    information, check out the <a rel=\"external\" href=\"http://kitchen.ci/\">Test
    Kitchen Docs</a>).</p>\n\n<p>When we are running our tests on Travis, however,
    we need to do things a little differently. Instead of spinning up a virtual machine
    on Travis, we use <a rel=\"external\" href=\"https://github.com/test-kitchen/kitchen-rackspace\">Kitchen
    Rackspace</a> to spin up a VM on Rackspace for us. The tests are then run on that
    machine, and the server is destroyed for us, meaning we pay pennies for a short-lived
    server.</p>\n\n<p>Getting this set up is a little tricky, so I thought I&rsquo;d
    give something back and document this process, so that future generations (that&rsquo;s
    you, dear reader) might benefit.</p>\n\n<p>Assuming you&rsquo;ve got Test Kitchen
    set up, and have everything set up in Travis, the first thing to do is add <code>kitchen-rackspace</code>
    to your Gemfile like so:</p>\n\n<pre><code>gem 'kitchen-rackspace'\n</code></pre>\n\n<p>Then
    run <code>bundle install</code>. The next thing to do is create a new <code>.kitchen.yml</code>
    file. (We&rsquo;ve called it <code>.kitchen.cloud.yml</code> as this seems to
    be the convention), and add the following:</p>\n\n<pre><code>---\ndriver:\n  name:
    rackspace\n  rackspace_username: &lt;%= ENV['RACKSPACE_USERNAME'] %&gt;\n  rackspace_api_key:
    &lt;%= ENV['RACKSPACE_API_KEY'] %&gt;\n  rackspace_region: lon\n  require_chef_omnibus:
    latest\n\nprovisioner:\n  name: chef_zero\n\nplatforms:\n  - name: ubuntu-12.04\n</code></pre>\n\n<p>Then
    add your run list to the file from your existing <code>.kitchen.yml</code> file.
    You may want to tweak some of the settings above to suit your needs. See the <a
    rel=\"external\" href=\"https://github.com/test-kitchen/kitchen-rackspace\">kitchen-rackspace
    docs for more</a>.</p>\n\n<p>It&rsquo;s also worth pointing out that the <code>platforms</code>
    section will only work if the <code>name</code> is referred to in the <a rel=\"external\"
    href=\"https://github.com/test-kitchen/kitchen-rackspace/blob/master/data/images.json\">JSON
    file included in the kitchen-rackspace gem</a>. If you want to use a different
    platform, you can list the ones available to you by running: </p>\n\n<pre><code>
    knife rackspace image list --rackspace-region=lon --rackspace-username=$RACKSPACE_USERNAME
    --rackspace-api-key=$RACKSPACE_API_KEY\n</code></pre>\n\n<p>Where <code>$RACKSPACE_USERNAME</code>
    is your Rackspace Username and <code>$RACKSPACE_API_KEY</code> is your Rackspace
    API key.</p>\n\n<p>You&rsquo;ll notice we&rsquo;re passing some environment variables
    to the YAML file. These can be encrypted and added to your <code>.travis.yml</code>
    file on the command line like so:</p>\n\n<pre><code>travis encrypt RACKSPACE_USERNAME=YOUR_RACKSPACE_USERNAME
    --add\ntravis encrypt RACKSPACE_API_KEY=YOUR_RACKSPACE_API_KEY --add\n</code></pre>\n\n<p>Once
    that&rsquo;s done, you need to add a few more things to your <code>.travis.yml</code>
    file. Firstly, you need to make sure the Travis VM has an ssh key (they don&rsquo;t
    by default). This allows <code>kitchen-rackspace</code> to transfer the necessary
    files to your Rackspace node, trigger the Chef run, and run the tests:</p>\n\n<pre><code>before_script:\n
    \  - ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''\n</code></pre>\n\n<p>The next thing
    to do is add the environment variable <code>KITCHEN_YAML</code> to your Travis
    env to make sure Test Kitchen knows what YAML file to use. The <code>env</code>
    section of your <code>.travis.yml</code> file should look something like this:</p>\n\n<pre><code>env:\n
    \ global:\n  - secure: SOME_ENCRYPTED_TOKEN\n  - secure: ANOTHER_ENCRYPTED_TOKEN\n
    \ - KITCHEN_YAML=.kitchen.cloud.yml\n</code></pre>\n\n<p>Then, the next thing
    to do, is tell Travis what command to run to run your tests. In our live projects,
    we&rsquo;ve got a Rakefile which runs some other tests as well as Test Kitchen,
    but, in the interests of keeping it simple, we&rsquo;ll just run Test Kitchen
    here:</p>\n\n<pre><code>script: \n  - travis_wait 35 kitchen test --destroy=always\n</code></pre>\n\n<p>The
    first thing to note is the <code>kitchen test</code> command is preceeded by <code>travis_wait
    35</code>, this is a special Travis command which stops Travis from timing out
    until the following command has been running for 35 minutes. Normally Travis will
    time out after 10 minutes, and this often isn&rsquo;t enough for the whole test
    run to happen. We&rsquo;re building a virtual machine from scratch remember? <a
    rel=\"external\" href=\"http://docs.travis-ci.com/user/build-timeouts/#Build-times-out-because-no-output-was-received\">You
    can see more about <code>travis_wait</code> here</a></p>\n\n<p>The <code>--destroy=always</code>
    tag is important because by default, Test Kitchen only destroys your box after
    a successful test. We don&rsquo;t want additional servers hanging around and costing
    us money, so we&rsquo;ll kill them every time.</p>\n\n<p>By now, your <code>.travis.yml</code>
    file should look something like this:</p>\n\n<pre><code>language: ruby\nrvm:\n-
    2.1.0\nbefore_script:\n  - ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''\nscript:\n
    \ - kitchen test --destroy=always\nenv:\n  global:\n  - secure: SOME_ENCRYPTED_TOKEN\n
    \ - secure: ANOTHER_ENCRYPTED_TOKEN\n  - KITCHEN_YAML=.kitchen.cloud.yml\n</code></pre>\n\n<p>You
    could just stop there, add your project to Travis and push your changes, then
    upload your cookbook to the Chef server, but as I mentioned before, we&rsquo;re
    all about continuous deployment here, so we want to go one step further - if the
    tests pass on master, we want to upload our cookbook to the Chef server.</p>\n\n<p>To
    get this done, you&rsquo;ll need to make sure you&rsquo;re using <a rel=\"external\"
    href=\"http://berkshelf.com/\">Berkshelf</a>. Firstly, add:</p>\n\n<pre><code>gem
    'berkshelf'\n</code></pre>\n\n<p>To your Gemfile, then run:</p>\n\n<pre><code>bundle
    install\nberks init .\n</code></pre>\n\n<p>You will then have a <code>Berksfile</code>
    in your project root. You can use this to manage cookbook dependencies, <a rel=\"external\"
    href=\"http://berkshelf.com/\">more on this on the Berkshelf website here</a>,
    but for the sake of argument, we&rsquo;ll just leave the Berksfile as it is.</p>\n\n<p>The
    next step is to add a <code>berkshelf.json</code> file to your repository. We
    tend to put this in a deploy subdirectory.</p>\n\n<pre><code>{\n  \"chef\": {\n
    \   \"chef_server_url\": \"https://chef.theodi.org\",\n    \"client_key\": \"deploy/key.pem\",\n
    \   \"node_name\": \"odi\"\n  },\n  \"ssl\": {\n    \"verify\": false\n  }\n}\n</code></pre>\n\n<p>This
    tells Berkshelf where to upload the cookbook to. Note it needs the client key
    PEM file. This should <em>not</em> be added to version control. In order to get
    this, we add an encrypted version to git, and decrypt it on Travis with an environment
    variable.</p>\n\n<pre><code>export CHEF_KEY=SOME-UNIQUE-KEY\nopenssl aes-256-cbc
    -k \"$CHEF_KEY\" -in deploy/key.pem -out deploy/key.enc -a -e\n</code></pre>\n\n<p>We
    then need to add our unique key to Travis like so:</p>\n\n<pre><code>travis encrypt
    CHEF_KEY=${CHEF_KEY} --add\n</code></pre>\n\n<p>Then add <code>deploy/key.enc</code>
    to version control.</p>\n\n<p>For convenience, we usually add a rake task to handle
    the berkshelf upload:</p>\n\n<pre><code>namespace :berkshelf do\n\n  desc \"Upload
    cookbook to chef server\"\n  task :upload do\n    sh \"bundle exec berks upload
    -c deploy/berkshelf.json\"\n  end\n\nend\n</code></pre>\n\n<p>Now, in your travis
    config, after successful master builds, you want to decrypt the PEM file and run
    the rask task:</p>\n\n<pre><code>after_success:\n- openssl enc -d -aes-256-cbc
    -k $CHEF_KEY -in deploy/key.enc -out deploy/key.pem\n- chmod 600 deploy/key.pem\n-
    bundle exec berks install\n- \"[ \\\"$TRAVIS_BRANCH\\\" == \\\"master\\\" ] &amp;&amp;
    [ \\\"$TRAVIS_PULL_REQUEST\\\" == \\\"false\\\"] &amp;&amp; bundle exec rake berkshelf:upload\"\n</code></pre>\n\n<p>Now,
    when your build passes, Travis should try to upload the new cookbook to the Chef
    server. Bingo!</p>\n\n"
  media_enquiries_name: ''
  media_enquiries_email: ''
  media_enquiries_telephone: ''
  alternative_title: ''
  organizations: []
  author:
    name: Stuart Harrison
    slug: stuart-harrison
    web_url: http://theodi.org/team/stuart-harrison
    tag_ids:
    - team
    - rnd-programme
  nodes: []
author:
  name: Stuart Harrison
  slug: stuart-harrison
  web_url: http://theodi.org/team/stuart-harrison
  tag_ids:
  - team
  - rnd-programme
nodes: []
organizations: []
related_external_links: []
---