---
id: http://contentapi.theodi.org/open-workflows-open-teams.json
web_url: http://theodi.org/blog/open-workflows-open-teams
slug: open-workflows-open-teams
title: Open Workflows for Open Teams (and closed ones too)
format: article
updated_at: '2015-09-11T10:51:01+01:00'
created_at: '2013-03-04T08:24:11+00:00'
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
  need_id: ''
  business_proposition: false
  description: 
  excerpt: It’s been six weeks since I joined the ODI, and so far, the most interesting
    thing about working herehas been the approach we take to software development.
    As others have mentioned, we are trying to be radically open in how we work, but
    I thought I’d go into a little more detail on our actual workflow. We’re only
    two sprints in, so we’re still iterating thisbut it’s working nicely so far.
  language: en
  need_extended_font: false
  url: 
  content: "<p>It&rsquo;s been six weeks since I joined the ODI, and so far, the most
    interesting thing about working here\x02has been the approach we take to software
    development. <a rel=\"external\" href=\"http://theodi.org/blog/better-living-through-openness\">As
    others have mentioned</a>, we are trying to be radically open in how we work,
    but I thought I&rsquo;d go into a little more detail on our actual workflow. We&rsquo;re
    only two sprints in, so we&rsquo;re still iterating this\x02but it&rsquo;s working
    nicely so far.</p>\n\n<p>When we started, we spent a while thinking about how
    we wanted to work, with a few aims in mind:</p>\n\n<ul>\n  <li>we are a collective</li>\n
    \ <li>we are transparent</li>\n  <li>processes must be low-impact</li>\n  <li>use
    the simplest tools we can</li>\n</ul>\n\n<p>We are, of course, working in an agile
    fashion, following some elements of <a rel=\"external\" href=\"https://en.wikipedia.org/wiki/Scrum_(development)\">scrum</a>,
    but as is proper for an agile process, we are also adapting it to our needs. Scrum
    too often turns into agile-for-people-who-like-waterfall, which defeats the whole
    object.</p>\n\n<h2>Collective ownership</h2>\n\n<p>Tasks are not assigned up front,
    they are chosen by the team members. We also collectively agree on what we can
    achieve during a 2-week sprint.\x02\nThe code itself is also collectively owned;*
    &ldquo;Oh, X wrote that, but I don&rsquo;t really know how it works&rdquo;* is
    a <strong>big</strong> danger sign. Instituting a rule of <em>&ldquo;you wrote
    that bit last sprint, so you don&rsquo;t touch it this time around&rdquo;</em>
    is a Very Good Thing, even if it slows you down sometimes; the long-term benefits
    will outweigh the temporary cost.\x02\nWe&rsquo;ve already seen technical debt
    accumulate in this short time, and while making sure we deal with it quickly by
    spreading knowledge around the team takes time (and cost us a sprint goal or two),
    we&rsquo;re much better off dealing with it immediately.</p>\n\n<h2>Branch/Review/Merge</h2>\n\n<p>We
    love <a rel=\"external\" href=\"http://git-scm.com/\">Git</a>, and we love the
    tools that <a rel=\"external\" href=\"https://github.com/\">Github</a> have built
    around it.</p>\n\n<p>We all sat down and watched Zach Holman&rsquo;s talk <a rel=\"external\"
    href=\"http://zachholman.com/talk/how-github-uses-github-to-build-github/\">&ldquo;How
    Github use Github to build Github&rdquo;</a>, and have taken a lot of inspiration
    from the way they do things. Once you get into your head that branching has zero
    cost, workflows become so smooth it&rsquo;s ridiculous.\x02\n- Branch from master
    to &ldquo;feature-{issue_number}-{description}&rdquo;\n- Work for a short while
    (not necessarily until you&rsquo;re finished)\n- Open a pull request back to master
    for discussion\n- Invite ongoing review on the PR\n- Get someone else to merge
    back to master when complete (or earlier if safe)</p>\n\n<p>We&rsquo;ve already
    had really positive engagement (both internally and externally) directly in <a
    rel=\"external\" href=\"https://github.com/theodi/open-orgn-services/pulls\">pull
    request</a> comments, which is just fantastic. Not having to leave your flow to
    communicate with clients makes a much more productive programmer.</p>\n\n<h2>Issue
    tracking</h2>\n\n<p>We&rsquo;re also using Github for <a rel=\"external\" href=\"https://github.com/theodi/open-orgn-services/issues\">issue
    tracking</a> and other documentation. While the issue tracking is basic, it does
    90% of what you think you need (and you don&rsquo;t actually need the other 10%).
    Once you have two separate fields for different types of priorities, or add time-tracking
    on individual issues, you&rsquo;re just introducing cruft that clutters the place
    up and adds admin overhead (nobody ever looks at that stuff anyway).</p>\n\n<p>It
    took me a while to work out how to model dependencies, but simply adding a link
    to the master ticket from the sub-ticket (&ldquo;this is needed for #42&rdquo;)
    gives a nice open/closed view in the master ticket, which works well enough. This
    even works across repositories, meaning that you can use a single issue tracker
    for a project even if it&rsquo;s split into multiple places.</p>\n\n<p><img src=\"http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/legacy/issues_0.png\"
    alt=\"Github issue tracker\" /></p>\n\n<h2>Learning as we go</h2>\n\n<p>Obviously,
    none of this is fixed in stone and\x02for me, that&rsquo;s\x02the single most
    important thing about agile development. We&rsquo;re not always living up to what
    we want to do, and besides, what we said we&rsquo;d do isn&rsquo;t necessarily
    the best way.\x02I find myself analysing our workflow and my own performance a
    <strong>lot</strong>, and end up really looking forward to the retrospectives
    we have as part of planning for the next sprint.\x02\nThe joy of being at the
    ODI is that we have a team who really understand and buy into this way of doing
    things. We work openly <em>internally</em> as well as externally, trying to communicate
    continuously with each other and with our clients. It gives\x02us an instant shared
    culture, and shared victories (along with shared failures), and those are the
    things that will bind\x02an excellent team together&hellip;</p>\n\n<p>(even if
    they do take a little more time to do things <em>right</em>\x02sometimes)</p>\n"
  media_enquiries_name: 
  media_enquiries_email: 
  media_enquiries_telephone: 
  alternative_title: 
  organizations: []
  author:
    name: James Smith
    slug: james-smith
    web_url: http://theodi.org/team/james-smith
    tag_ids:
    - team
    - rnd-programme
    - research-and-development
    - odi-labs
  nodes: []
author:
  name: James Smith
  slug: james-smith
  web_url: http://theodi.org/team/james-smith
  tag_ids:
  - team
  - rnd-programme
  - research-and-development
  - odi-labs
nodes: []
organizations: []
related_external_links: []
---