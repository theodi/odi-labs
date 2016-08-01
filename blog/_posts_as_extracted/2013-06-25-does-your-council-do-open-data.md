---
id: http://contentapi.theodi.org/does-your-council-do-open-data.json
web_url: http://theodi.org/blog/does-your-council-do-open-data
slug: does-your-council-do-open-data
title: Does your council do open data?
format: article
updated_at: '2015-09-11T10:51:21+01:00'
created_at: '2013-06-25T15:05:48+01:00'
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
  excerpt: I’ve been working at the ODI for just over three months, and, while I’m
    no longer working for a council (I used to work at Lichfield District Council),
    I still like to keep an eye on what my former colleagues in local government are
    up to, particulary around open data.
  language: en
  need_extended_font: false
  url: 
  content: |
    <p>I&rsquo;ve been working at the ODI for just over three months, and, while I&rsquo;m no longer working for a council (I used to work at <a rel="external" href="http://lichfielddc.gov.uk">Lichfield District Council</a>), I still like to keep an eye on what my former colleagues in local government are up to, particulary around open data.</p>

    <p>With this in mind, and with the tech team&rsquo;s regular innovation weeks giving up the time and space to try out new ideas, I thought to myself &ldquo;I wonder how many local authorities actually have an open data section?&rdquo; and decided to use my innovation week to find out.</p>

    <p>If you&rsquo;re not of a technical persuasion, and are just interested in the headline results, just <a href="#tldr">click to get to the headline results</a>. If you&rsquo;re interested, read on fellow techie…</p>

    <p>The first place I looked was Chris Taggart&rsquo;s <a rel="external" href="http://openlylocal.com/councils/open">Open data scoreboard</a> on <a rel="external" href="http://openlylocal.com/">Openly Local</a>. This has a list of councils and links to their open data sections. The only problem is this relies on councils to contact Chris so he can list them, there still must be a decent amount of councils that have an open data section, but haven&rsquo;t told Chris about it.</p>

    <p>I used the <a rel="external" href="http://openlylocal.com/councils/open.json">JSON version of the data</a> as a starting point (which helpfully also had every other council listed, along with their website) and added them to a database.</p>

    <p>I then queried the database for councils without an open data section and tried adding some common suffixes for open data sections to the council&rsquo;s website domain, such as <code>/data</code>, <code>/opendata</code>, <code>/open-data</code> and <code>/transparency</code>, and seeing what the webserver returned. If any of the responses were <code>200</code> (that is, the webserver said the page existed), I added the URI to the database as an open data section for that council.</p>

    <p>However, after picking some of my results at random, I found that a lot of these pages, while the webserver returned <code>200</code>, they were actually &lsquo;Page not found&rsquo; pages (which should have returned a <code>404</code>). So I decided to run my queries again, but this time adding an obviously junk suffix to the domain first. If the junk one returned a <code>200</code>, I knew that this council&rsquo;s website wasn&rsquo;t set up properly and I wouldn&rsquo;t be able to guess an open data section from the authority.</p>

    <p>I then decided it might be a good idea to see how many councils had open data sections that were accessible within two clicks of the homepage. This involved me scraping the homepage of every council website and seeing if I could find a link to the open data section. If not, I then scraped every page that was linked to from the homepage to see if I could find a link there.</p>

    <p>The results of my survey were that 38% of councils had open data sections that were either listed in Openly Local, or that I could reasonably guess at the URI. As I also recorded the region the council was in, I could see that of this, the highest proportion of councils with an open data section was in London (56% of councils), and the lowest was in Northern Ireland (4% of councils).</p>

    <p>Of every council that had an open data section, 11% had a link to their Open Data section from the homepage, and 16% had a link on the next level down. The overwhelming majority did not link to any of their open data sections from the top two levels.</p>

    <p>I&rsquo;ve visualised the data (using the magic of <a rel="external" href="http://d3js.org/">D3</a>) below, so you can see for yourself, and the code I used to generate the data (as with all of our code) is <a rel="external" href="https://github.com/theodi/council-data">available on Github</a>. As we&rsquo;re all about open data here, you can also <a rel="external" href="http://theodi.github.io/council-data/councils.csv">download the raw data too</a>.</p>

    <iframe frameborder="0" height="600" src="http://theodi.github.io/council-data/" width="780"></iframe>
  media_enquiries_name: 
  media_enquiries_email: 
  media_enquiries_telephone: 
  alternative_title: 
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