---
id: http://contentapi.theodi.org/three-months-open-development.json
web_url: http://theodi.org/blog/three-months-open-development
slug: three-months-open-development
title: Three Months of Open Development
format: article
updated_at: '2015-09-11T10:51:22+01:00'
created_at: '2013-05-04T20:41:44+01:00'
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
  excerpt: 'When the tech team started in January, we had some immediate demands from
    the rest of the ODI team, to support the business:'
  language: en
  need_extended_font: false
  url: 
  content: |
    <p>When the tech team started in January, we had some immediate demands from the rest of the ODI team, to support the business:</p>

    <ul>
      <li>a mechanism for people to sign up to the <a href="/courses">courses</a> we wanted to run</li>
      <li>a method for organisations and individuals to <a href="/join-us">join ODI as members</a> or register their interest</li>
      <li>a way for people to check out the availability of <a href="/space">our meeting rooms</a></li>
      <li>a facility for us to <a rel="external" href="http://dashboards.theodi.org">monitor our activities</a></li>
    </ul>

    <p>Within the technical team, we had another layer of objectives. We didn&rsquo;t just want to build these systems, we wanted to build them in the right way. We recognised the golden opportunity that we had, with very few legacy systems, to use the best modern technologies in what we built. With no legacy processes, we could Do Agile Right, from the start. And with the ODI&rsquo;s mission-driven focus, we could be completely open about our work at every stage.</p>

    <p>I had a further goal. I wanted to demonstrate how to weave open data into the heart of what an organisation does. If we were going to build systems to support our work, open data was going to be at their heart, not an appendix.</p>

    <p>So how have we done?</p>

    <h2>Small Pieces, Loosely Joined</h2>

    <p>One of our <a href="">tech team principles</a> is to borrow mercilessly. We don&rsquo;t want to recreate existing tools and services when we can reuse what&rsquo;s already out there.</p>

    <p>One of the joys of starting a new organisation at this point in time is &ldquo;there&rsquo;s an app for that&rdquo;. So we reused those apps: <a rel="external" href="http://www.google.com/enterprise/apps/business/">Google Apps</a> for our mail, calendars and documents; <a rel="external" href="http://www.eventbrite.co.uk/">Eventbrite</a> to manage our events; <a rel="external" href="http://capsulecrm.com/">CapsuleCRM</a> to keep track of our contacts; <a rel="external" href="http://www.xero.com/">Xero</a> for our finances; <a rel="external" href="https://www.expensify.com/">Expensify</a> for our expenses.</p>

    <p>But nowadays there&rsquo;s not only an app for that, there&rsquo;s an <em>API</em> for that. Each of these tools provides a mechanism for developers to get hold of the data that they hold, and most also offer ways to <em>create</em> new data. Our job was simply (relatively) to customise the apps and join them together. (There&rsquo;s even <a rel="external" href="https://zapier.com/">an app for <em>that</em></a>, but we didn&rsquo;t use it.)</p>

    <p>What are the lessons we&rsquo;ve learned from this approach? Well, of course there are trade-offs. We&rsquo;re reliant on services which could disappear, or radically change, outside our control. We have to pay for them, but it would have cost us time and money to develop them ourselves too.</p>

    <p>From a data perspective, the most interesting thing is that every service has a completely different way of structuring information about even common things like people or locations. When using APIs, the developer documentation is crucial because they&rsquo;re seldom self-documenting, and existing open source tools and libraries for using the code really smooth the way, even if they&rsquo;re not complete.</p>

    <h2>Our Open Data</h2>

    <p>Some of the joining that we&rsquo;ve done has required us to expose data. For example, to get the prices of the training courses show on the website or to display information about the lunchtime lectures on the <a rel="external" href="http://dashboards.theodi.org/training">training dashboard</a>. In the new data that we&rsquo;ve generated, we&rsquo;ve adopted the <a rel="external" href="http://schema.org">schema.org</a> vocabulary where we can.</p>

    <p>In other cases, it&rsquo;s been as easy to expose data as not, so we&rsquo;ve done so not because we&rsquo;re using it but in case anyone else wants to. For example, making iCal feeds of the busy/free calendars for our meeting rooms, or JSON versions of the information about our members, is easy to do.</p>

    <p>The bits that have proven difficult have exposed some areas where we want to do work. The biggest of these is about how to expose, in a machine-readable way, the licence under which particular data is being made available. We plan to start a small project to create some easy-to-use guidance about associating licences with data.</p>

    <p>At a social level, we&rsquo;ve had to think about privacy, confidentiality and commercial considerations. The data generated by the services that we&rsquo;re using is only accessible to us, so we can choose how much to expose and how much to hide. For example, we&rsquo;ve chosen to let everyone see how much our space is being used, but hide information about who is attending meetings in our rooms.</p>

    <h2>Our Open Development</h2>

    <p>As well as supporting the rest of the team, and publishing open data, the last three months have been an opportunity for us to put into place the tools and practices that make it easy for us to work quickly, create good code, and provide practical contributions to the wider community. The way we work is summarised in these <a rel="external" href="http://theodi.github.io/open-development/talk/#/titlepage">slides on Open Development</a>.</p>

    <h2>What Next?</h2>

    <p>This has been a really important phase for the team, setting in place the principles of how we work, while getting real work done that has supported the rest of the organisation.</p>

    <p>We&rsquo;re now looking forward to the next phase, where we turn our sights on to building the tools and practices that should make it easier for people to publish, consume and collaborate over data, based at on the projects that we&rsquo;re doing with our members.</p>
  media_enquiries_name: 
  media_enquiries_email: 
  media_enquiries_telephone: 
  alternative_title: 
  organizations: []
  author:
    name: Jeni Tennison
    slug: jeni-tennison
    web_url: http://theodi.org/team/jeni-tennison
    tag_ids:
    - team
    - team
    - strategy-programme
    - staff
  nodes: []
author:
  name: Jeni Tennison
  slug: jeni-tennison
  web_url: http://theodi.org/team/jeni-tennison
  tag_ids:
  - team
  - team
  - strategy-programme
  - staff
nodes: []
organizations: []
related_external_links: []
---