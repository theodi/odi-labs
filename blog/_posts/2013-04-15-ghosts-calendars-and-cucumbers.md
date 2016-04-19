---
id: http://contentapi.theodi.org/ghosts-calendars-and-cucumbers.json
web_url: http://theodi.org/blog/ghosts-calendars-and-cucumbers
slug: ghosts-calendars-and-cucumbers
title: Ghosts, Calendars and Cucumbers
format: article
updated_at: '2015-09-11T10:51:15+01:00'
created_at: '2013-04-15T18:22:04+01:00'
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
  excerpt: The ODI’s new membership programme, launched last month, offersa whole
    range of benefitstobusinesses whichwork with open data,publish it or just want
    to get to grips with it.One of these memberbenefits is the optiontouse our space
    for meetings-so if you don’t have a permanent base in London, or just fancy a
    change of scene, you can use one of our hot desks, pods or meeting rooms.
  language: en
  need_extended_font: false
  url: 
  content: "<p>The ODI&rsquo;s new membership programme, launched last month, offers\x02<a
    rel=\"external\" href=\"http://theodi.org/join-us\">a whole range of benefits</a>\x02to\x02businesses
    which\x02work with open data,\x02publish it or just want to get to grips with
    it.\x02One of these member\x02benefits is the option\x02to\x02<a rel=\"external\"
    href=\"http://www.theodi.org/join-us#space\">use our space for meetings</a>\x02-\x02so
    if you don&rsquo;t have a permanent base in London, or just fancy a change of
    scene, you can use one of our hot desks, <a rel=\"external\" href=\"http://www.theodi.org/sites/default/files/360s/Pod/pod.html\">pods</a>
    or <a rel=\"external\" href=\"http://www.theodi.org/sites/default/files/360s/MeetingSpace/meetingspace.html\">meeting
    rooms</a>.</p>\n\n<p>Obviously, if you&rsquo;re a member planning on using our
    space for a specific day or time, then you&rsquo;ll want to be able to guarantee
    that there will be space available for you. This is where the tech team comes
    in.\x02As part of sprint #4\x02we were tasked with building an app to allow members
    to see, at a glance, what spaces were booked, and for how long.</p>\n\n<p>On the
    surface, this looked like a simple task. We use Google Apps for all our internal
    email and calendaring, so it should have just been a case of pulling an iCal feed
    out of Google Calendar, and\x02into the app.</p>\n\n<p>However, a bug in Google
    Calendar meant that we couldn&rsquo;t get public iCal feeds for the pods and meeting
    rooms (called &lsquo;resources&rsquo; in Google Apps), and time being of the essence,
    we couldn&rsquo;t wait for it to be fixed.</p>\n\n<p>Another problem was testing
    our code - in my previous role, I worked on my own and checked my code by literally
    testing an\x02app in my browser before I pushed it to live. However, as we are
    starting to move towards <a rel=\"external\" href=\"http://en.wikipedia.org/wiki/Continuous_delivery\">continuous
    deployment</a> at the ODI (that is, our code gets tested and pushed to live every
    time we push it to Github), we need to make sure we write tests for our code.</p>\n\n<p>Ordinarily,
    this isn&rsquo;t a problem. We use <a rel=\"external\" href=\"http://cukes.info\">Cucumber</a>
    to write a load of expectations and then test these expectations\x02by querying
    the database, spinning up a virtual browser, or recording a HTTP interaction.
    If the tests pass, the code gets deployed. However, as the plugin we wanted to
    use was javascript-based it\x02caused\x02us problems running automated tests in\x02<a
    rel=\"external\" href=\"http://jenkins.theodi.org\">Jenkins</a>\x02(normally,
    if we want to test Javascript, we have to spin up a real browser,\x02like Chrome
    or Firefox.)</p>\n\n<p>These obstacles meant that, as is often the case in software
    development, what looked like a simple task actually became a bit more complex.</p>\n\n<p>The
    first thing I had to do was look at the Google Apps API. The normal process for
    connecting to the API (and most of the examples I saw), involved a user authenticating
    against their account in a web browser and then the app pulling out their data.
    As we only wanted to pull data out of the ODI account, and there was no front
    end user interaction, the use case was rather different.</p>\n\n<p>I eventually
    <a rel=\"external\" href=\"https://code.google.com/p/google-api-ruby-client/wiki/ServiceAccounts\">found
    the solution</a>, and with bookings being pulled into my app quite happily, I
    got onto testing my code.</p>\n\n<p>In my former job, I&rsquo;d played a bit with
    <a rel=\"external\" href=\"http://phantomjs.org/\">Phantom.js</a>, which is a
    fully functional web browser, without one crucial thing - a window. This is immensely
    powerful stuff, and means you can do anything you can do in a normal browser by
    issuing a few Javascript commands. It&rsquo;s great for web scraping, automating
    things like form submissions (I used it in my old job to automatically upload
    reports submitted in <a rel=\"external\" href=\"http://www.ratemyplace.org.uk\">Ratemyplace</a>
    to the <a rel=\"external\" href=\"http://ratings.food.gov.uk\">Food Standards
    Agency ratings site</a>), and yes, testing!</p>\n\n<p><a rel=\"external\" href=\"http://blog.pezholio.co.uk/2013/04/automated-testing-with-cucumber-and-phantom-dot-js/\">I
    blogged about this in more detail on my personal blog</a>, but suffice to say,
    it worked perfectly, and I&rsquo;m hoping to find more excuses to use this technology
    in the future.</p>\n\n<p>You can see the final results at <a rel=\"external\"
    href=\"http://office-calendar.theodi.org\">office-calendar.theodi.org</a> and
    see the <a rel=\"external\" href=\"http://github.com/theodi/office-calendar\">source
    code here</a>. At the moment, you can only view bookings, but we&rsquo;ll be looking
    at allowing members to book space online.</p>\n\n<p>Crucially, we&rsquo;ll also
    be using the data generated by the app to build <a rel=\"external\" href=\"http://shopify.github.io/dashing/\">awesome
    dashboards</a> for our Commercial Team to see how the space is being used. In
    the coming weeks, we&rsquo;ll be using a lot more of the data generated by our
    external and internal apps, and publishing more data on things like our members
    and events, so watch this space!</p>\n"
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