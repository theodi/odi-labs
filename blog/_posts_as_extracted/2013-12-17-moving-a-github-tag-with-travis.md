---
id: http://contentapi.theodi.org/moving-a-github-tag-with-travis.json
web_url: http://theodi.org/blog/moving-a-github-tag-with-travis
slug: moving-a-github-tag-with-travis
title: Moving a Github tag with Travis
format: article
updated_at: '2015-09-11T10:53:51+01:00'
created_at: '2013-12-17T15:04:49+00:00'
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
  excerpt: In the ODI tech team, we are deeply devoted followers of the dual canons
    of Continuous Integration and Continuous Deployment. This means that once our
    code is pushed into Github, we run the tests on our Jenkins server, and if the
    tests pass on the master branch, it moves a Github tag called CURRENT to that
    point. Our Chef server then picks it up and deploys the code to production. No
    humans are involved in the process. It’s robots all the way down.
  language: en
  need_extended_font: false
  url: ''
  content: |
    <p>In the ODI tech team, we are deeply devoted followers of the dual canons of Continuous Integration and Continuous Deployment. This means that once our code is pushed into Github, we run the tests on our <a rel="external" href="http://jenkins.theodi.org">Jenkins server</a>, and if the tests pass on the <em>master</em> branch, it moves a Github tag called <em>CURRENT</em> to that point. Our Chef server then picks it up and deploys the code to production. No humans are involved in the process. It&rsquo;s robots all the way down.</p>

    <p>We&rsquo;ve recently been experimenting with using <a rel="external" href="https://travis-ci.org/">Travis-CI</a> to run our tests, and wanted to know if we could do the same thing using Travis.</p>

    <p>Turns out we can, but it involves a certain amount of hoop-jumping. Presuming you&rsquo;ve got your project currently building in Travis, the steps are:</p>

    <p>Encrypt your Github login (from inside your local repo):</p>

    <pre><code>travis login
    travis encrypt GITHUB_USER=odi-robot
    travis encrypt GITHUB_PASSWORD=thisisareallyreallylonggithubpassword
    </code></pre>

    <p>This will give you a couple of strings, which you need to paste into your <em>.travis.yml</em> to make it look like this:</p>

    <pre><code>---
    after_success:
      - "[ \"$TRAVIS_BRANCH\" == \"master\" ] &amp;&amp; curl -v -X DELETE -u $GITHUB_USER:$GITHUB_PASSWORD \"https://api.github.com/repos/$TRAVIS_REPO_SLUG/git/refs/tags/CURRENT\""
      - "[ \"$TRAVIS_BRANCH\" == \"master\" ] &amp;&amp; curl -v -X POST -d '{\"ref\":\"refs/tags/CURRENT\",\"sha\":\"'$TRAVIS_COMMIT'\"}' --header \"Content-Type:application/json\" -u $GITHUB_USER:$GITHUB_PASSWORD \"https://api.github.com/repos/$TRAVIS_REPO_SLUG/git/refs\""
    env:
      global:
        -
          secure: longuglyencryptedstringnumber1=
        -
          secure: longuglyencryptedstringnumber2=
    language: ruby
    rvm:
      - "2.0.0"
    </code></pre>

    <p>It&rsquo;s probably best if you avert your gaze from those <em>after_success</em> lines, lest you be turned to stone. The real trick is interpolating that <em>$TRAVIS_COMMIT</em> into the single-quoted JSON payload. If there&rsquo;s a less-hideous way of doing this, I&rsquo;d really like to hear about it.</p>

    <p>In the course of debugging this (which took <a rel="external" href="https://travis-ci.org/theodi/such-travis/builds">way longer than it should have</a>), I was pointed towards the brilliant <a rel="external" href="http://requestb.in/">requestb.in</a> HTTP-request-inspection tool (thanks <a rel="external" href="http://theodi.org/team/james-smith">James</a>), without which I may have simply thrown in the towel. Also, <a rel="external" href="http://yamllint.com/">YAMLlint</a> is pretty nice.</p>

    <p>Hope this spares somebody else the pain I&rsquo;ve been through this morning.</p>
  media_enquiries_name: ''
  media_enquiries_email: ''
  media_enquiries_telephone: ''
  alternative_title: ''
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