---
id: http://contentapi.theodi.org/fig-data-11-tips-how-handle-big-data-r-and-1-bad-pun.json
web_url: http://theodi.org/blog/fig-data-11-tips-how-handle-big-data-r-and-1-bad-pun
slug: fig-data-11-tips-how-handle-big-data-r-and-1-bad-pun
title: 'Fig Data: 11 Tips on How to Handle Big Data in R (and 1 Bad Pun)'
format: article
updated_at: '2015-09-11T11:03:05+01:00'
created_at: '2013-07-18T09:42:56+01:00'
tag_ids:
- blog
- technical
- r
- how-to
- show-me-the-money
- tech
- tech-team
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
- id: http://contentapi.theodi.org/tags/teams/technical.json
  web_url: 
  title: Technical Team (depr.)
  details:
    description: Technical Team
    short_description: 
    type: team
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?team=technical
    web_url: http://theodi.org/tags/technical
    slug: technical
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/r.json
  web_url: 
  title: r
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=r
    web_url: http://theodi.org/tags/r
    slug: r
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/how-to.json
  web_url: 
  title: how to
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=how-to
    web_url: http://theodi.org/tags/how-to
    slug: how-to
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/show-me-the-money.json
  web_url: 
  title: show me the money
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=show-me-the-money
    web_url: http://theodi.org/tags/show-me-the-money
    slug: show-me-the-money
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/tech.json
  web_url: 
  title: tech
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=tech
    web_url: http://theodi.org/tags/tech
    slug: tech
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/tech-team.json
  web_url: 
  title: tech team
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=tech-team
    web_url: http://theodi.org/tags/tech-team
    slug: tech-team
  parent: 
related:
- id: http://contentapi.theodi.org/courses.json
  web_url: http://theodi.org/courses
  slug: courses
  title: Courses
  format: article
  updated_at: '2015-10-21T16:10:28+01:00'
  created_at: '2014-12-11T10:53:24+00:00'
  tag_ids:
  - page
  - courses
  - homepage
- id: http://contentapi.theodi.org/what-is-open-data.json
  web_url: http://theodi.org/what-is-open-data
  slug: what-is-open-data
  title: What is open data?
  format: article
  updated_at: '2016-01-05T15:22:05+00:00'
  created_at: '2014-10-30T15:43:18+00:00'
  tag_ids:
  - page
  - open-data
  - explained
  - what-is
  - introduction
  - closed-data
  - shared-data
- id: http://contentapi.theodi.org/who-owns-our-data-infrastructure.json
  web_url: http://theodi.org/who-owns-our-data-infrastructure
  slug: who-owns-our-data-infrastructure
  title: Who owns our data infrastructure?
  format: article
  updated_at: '2015-11-18T15:32:13+00:00'
  created_at: '2015-05-27T12:02:51+01:00'
  tag_ids:
  - page
  - open-data
  - infrastructure
  - strategy
  - visions
  - international
details:
  need_id: ''
  business_proposition: false
  description: 'What follows is a, technical, collection of tips. It assumes you are
    familiar with base R, how to install packages and how to do basic operations.
    Two interactive introductions to R are: DataMind and Code School.'
  excerpt: 'In our latest project, Show me the Money, we used close to 14 million
    rows to analyse regional activity of peer-to-peer lending in the UK. Conventional
    tools such as Excel fail (limited to 1,048,576 rows), which is sometimes taken
    as the definition of Big Data. Then again, I recently heard one of the leading
    experts, Ken Cukier, say: “there is no definition of big data”. '
  language: en
  need_extended_font: false
  url: ''
  content: "<p>In our latest project, <a rel=\"external\" href=\"http://smtm.labs.theodi.org\"><em>Show
    me the Money</em></a>, we used close to 14 million rows to analyse regional activity
    of peer-to-peer lending in the UK. Conventional tools such as Excel fail (limited
    to\x02 1,048,576 rows), which is sometimes taken as the definition of <em>Big
    Data</em>. Then again, I\x02 recently\x02 heard one of the leading experts,\x02
    <a rel=\"external\" href=\"http://big-data-book.com/meet-the-authors\">Ken Cukier</a>,\x02
    say: &ldquo;there is no definition of big data&rdquo;.\x02 </p>\n\n<p><img src=\"http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/c8/78/55c878641f986a082f000001/R1.jpg\"
    alt=\"\" class=\"img\" id=\"attachment-55c87863f362be19bc000013\" /></p>\n\n<p><i><small>Image:
    Flickr (CC BY 2.0)-<a href=\"https://www.flickr.com/photos/nanpalmero/14187836848/\">NaN
    Palmero</a></small></i></p>\n\n<p><strong>What follows is a, technical,\x02 collection
    of tips. It assumes you are familiar with base R, how to install packages and
    how to do basic operations. Two interactive introductions to R are: <a rel=\"external\"
    href=\"http://www.datamind.org/\">DataMind</a>\x02 and <a rel=\"external\" href=\"http://www.codeschool.com/courses/try-r\">Code
    School</a>.</strong></p>\n\n<p>In this particular case \x02I managed to load the
    complete data\x02 into RAM for a standard analysis in \x02<a rel=\"external\"
    href=\"http://www.r-project.org/\">R</a>, i.e. no \x02Hadoop or similar. \x02Here
    are 11 tips when you deal with\x02 <strong>f</strong>–ing\x02 <strong>irritating</strong>,
    \x02<strong>granular data</strong>.\x02 This blog post is about <em>Fig Data</em>:
    data that may\x02 not be \x02&rdquo;big&rdquo; but the problems of size are <em>thinly
    veiled</em>. I won&rsquo;t cover parallel techniques in R, but \x02you can find
    a starting point with \x02<a rel=\"external\" href=\"http://r-pbd.org/\">programming
    with big data in R</a>\x02 and a\x02 <a rel=\"external\" href=\"http://www.xmind.net/m/LKF2/\">mind
    map</a>.\x02 Just because you can load your data \x02into RAM does not guarantee
    you a smooth workflow. Computers are powerful, but it is easy to reach their limits.\x02
    The <strong>scale factor</strong>, that is a rough estimates of the\x02 potential
    time you could save, is sometimes\x02 <em>up to 1,000\x02</em> or even beyond.
    A factor of 60 means your code takes 1 minute to run \x02instead of 1 hour.</p>\n\n<h2>The
    11 tips</h2>\n\n<ol>\n  <li>\n    <p><strong>Think in vectors.</strong> This means
    that for-loops (&ldquo;do this for \x02x times&rdquo;) \x02are generally a bad
    idea in R. The <a rel=\"external\" href=\"http://www.burns-stat.com/pages/Tutor/R_inferno.pdf\">R
    Inferno</a> has a chapter on why and how to &ldquo;vectorise&rdquo;. \x02Especially
    if you&rsquo;re a beginner or come from another programming language for-loops
    might be tempting. Resist and try to speak \x02R. The <a rel=\"external\" href=\"http://nsaunders.wordpress.com/2010/08/20/a-brief-introduction-to-apply-in-r/\">apply</a>
    family may be a good starting point, but of course do \x02not avoid loops simply
    for the sake of avoiding loops.</p>\n  </li>\n  <li>\n    <p><strong>Use the fantastic
    <a rel=\"external\" href=\"http://datatable.r-forge.r-project.org/\">data.table</a>
    package.</strong>\x02 Its advantage lies in speed and efficiency. \x02Developed
    by \x02<a rel=\"external\" href=\"http://stackoverflow.com/users/403310/matthew-dowle\">Matthew
    Dowle</a> \x02it introduces a way of handling data, similar to the data.frame
    class. In fact, it includes data.frame, but some of the syntax is different. Luckily,
    the <a rel=\"external\" href=\"http://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.pdf\">documentation</a>
    (and the <a rel=\"external\" href=\"http://datatable.r-forge.r-project.org/datatable-faq.pdf\">FAQ</a>)
    are\x02 excellent.</p>\n  </li>\n  <li>\n    <p><strong>Read csv-files with the
    <a rel=\"external\" href=\"http://www.inside-r.org/packages/cran/data.table/docs/fread\">fread</a>
    function</strong> instead of read.csv (read.table). It is faster in reading\x02a
    file in table format and\x02gives you feedback on progress. However, it comes
    with a big warning sign\x02 <em>&ldquo;not for production use yet&rdquo;</em>.
    One trick it uses is to \x02read the first, middle, and last 5 rows to determine
    column types.\x02 Side note: ALL functions that take longer than 5 seconds should
    have progress bars. Writing your own function? –&gt; <a rel=\"external\" href=\"http://stat.ethz.ch/R-manual/R-devel/library/utils/html/txtProgressBar.html\">txtProgressBar</a>.</p>\n
    \ </li>\n  <li>\n    <p><strong>Parse POSIX dates with the <em>very</em> fast\x02package\x02
    <a rel=\"external\" href=\"http://rforge.net/fasttime/\">fasttime</a>.\x02</strong>
    Let me say that again:\x02very fast. (Though the dates have to be in a standard
    format.)</p>\n  </li>\n  <li>\n    <p><strong>Avoid copying data.frames</strong>
    \x02and \x02<strong>remove,</strong> <code>rm(yourdatacopy)</code>, some in your
    workflow. You&rsquo;ll figure this out anyway when you run out of space.</p>\n
    \ </li>\n  <li>\n    <p><strong>Merge data.frames with the superior <a rel=\"external\"
    href=\"http://stackoverflow.com/questions/15673550/why-is-rbindlist-better-than-rbind\">rbindlist</a></strong>
    \x02– \x02data.table we meet again. As the community knows: &ldquo;<em>rbindlist</em>
    is an optimized version of <code>do.call(rbind, list(...))</code>, which is known
    for being slow when using rbind.data.frame.&rdquo;</p>\n  </li>\n  <li>\n    <p><strong>Regular
    expressions can be slow</strong>, too. On one occassion I found a simpler way
    and used the <a rel=\"external\" href=\"http://journal.r-project.org/archive/2010-2/RJournal_2010-2_Wickham.pdf\">stringr</a>
    package instead; it was a lot faster. </p>\n  </li>\n  <li>\n    <p>No R tips
    collection would be complete with a hat tip to Hadley Wickham. Besides stringr,
    I point you to <strong><a rel=\"external\" href=\"https://github.com/hadley/bigvis\">bigvis</a>,
    a package for visualising big data sets</strong>.</p>\n  </li>\n  <li>\n    <p><strong>Use
    a <em>random sample</em> for your exploratory analysis or to test code</strong>.
    Here is a code snippet that will give you a convenient <a rel=\"external\" href=\"https://gist.github.com/statshero/6122484\">function</a>:\x02
    <code>row.sample(yourdata, 1000)\x02</code> will reduce your massive file to a
    random sample of 1,000 observations.</p>\n  </li>\n  <li>\n    <p>Related to the
    previous point is <strong>reading only a subset of the data you want to analyse</strong>.
    <code>read.csv()</code> for example has a <code>nrows</code> option, which only
    reads the first x number of lines. This is also a good idea of getting your header
    names. The preferred option, a random sample, is more difficult and probably needs
    a &lsquo;workaround&rsquo; as described <a rel=\"external\" href=\"http://stackoverflow.com/questions/15532810/reading-40-gb-csv-file-into-r-using-bigmemory\">here</a>.</p>\n
    \ </li>\n  <li>\n    <p><strong>Export your data set directly as gzip.</strong>
    Writing a compressed csv file is not entirly trivial, but <a rel=\"external\"
    href=\"http://blog.revolutionanalytics.com/2009/12/r-tip-save-time-and-space-by-compressing-data-files.html\">stackoverflow</a>
    has the answer. <a rel=\"external\" href=\"http://blog.revolutionanalytics.com/2009/12/r-tip-save-time-and-space-by-compressing-data-files.html\">Revolution
    Analytics</a> also has some benchmark times for compressions in R.</p>\n  </li>\n</ol>\n\n<p><strong><a
    rel=\"external\" href=\"http://theodi.org/team/ulrich-atz\">Ulrich Atz</a> is
    a Startup Programme Manager at the ODI. Follow <a rel=\"external\" href=\"https://twitter.com/statshero\">@Ulrich
    Atz</a> on Twitter.</strong></p>\n\n<p><strong>If you have ideas or experience
    in open data that you’d like to share, <a href=\"&#109;&#097;&#105;&#108;&#116;&#111;:&#112;&#114;&#111;&#100;&#117;&#099;&#116;&#105;&#111;&#110;&#064;&#116;&#104;&#101;&#111;&#100;&#105;&#046;&#111;&#114;&#103;\">pitch
    us a blog</a> or tweet us at <a rel=\"external\" href=\"https://twitter.com/odihq\">@ODIHQ</a>.</strong></p>\n\n<p><img
    src=\"http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/c8/79/55c879a9f362be1b10000007/r2.jpg\"
    alt=\"\" class=\"img\" id=\"attachment-55c879a91f986a07de000002\" /></p>\n\n<p><i><small>Image:
    Flickr (CC BY 2.0)-<a href=\"https://www.flickr.com/photos/sidelong/8021460657/\">David
    Bleasdale</a></small></i></p>\n\n<p>\x02</p>\n"
  media_enquiries_name: ''
  media_enquiries_email: ''
  media_enquiries_telephone: ''
  alternative_title: '11 Tips on How to Handle Big Data in R '
  organizations: []
  author: {}
  nodes: []
author: {}
nodes: []
organizations: []
related_external_links: []
---