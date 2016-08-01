---
id: http://contentapi.theodi.org/git-data-publishing.json
web_url: http://theodi.org/blog/git-data-publishing
slug: git-data-publishing
title: Git for Data Publishing
format: article
updated_at: '2015-09-11T10:51:24+01:00'
created_at: '2013-05-20T10:35:06+01:00'
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
  excerpt: Over the last few years, open source software developmenthas been revolutionised
    by the adoption of distributed version control systems. Using tools like git and
    particularly sites like GitHub, it’s now incredibly easy to contribute to a project.
    This has lowered the bar forparticipation, and has had an incredible impact on
    the quality and range of open source output, and enabled fantastic service ecosystems
    and business models to build up.
  language: en
  need_extended_font: false
  url: 
  content: "<p>Over the last few years, open source software development\x02has been
    revolutionised by the adoption of distributed version control systems. Using tools
    like <a rel=\"external\" href=\"http://git-scm.com\">git</a> and particularly
    sites like <a rel=\"external\" href=\"http://github.com\">GitHub</a>, it&rsquo;s
    now incredibly easy to contribute to a project. This has lowered the bar for\x02participation,
    and has had an incredible impact on the quality and range of open source output,
    and enabled fantastic service ecosystems and business models to build up.</p>\n\n<p>In
    contrast, open data is still its infancy as far as tooling and process go.\x02In
    a world where open data is published sporadically, where it&rsquo;s hard to get
    things fixed, and where publishers aren&rsquo;t recognised or able to easily engage\x02with
    their user community, can the tools of open source revolutionise open data publishing
    in the same way?</p>\n\n<p>Personally, I believe this is possible. Data is different
    from code in many ways, but the open source development model has a lot we can
    learn from. When I can fork your open dataset, fix errors, and easily get my changes
    integrated back in, we all win.\x02\nWe could sit down and discuss this for a
    while; there are certainly lots of issues to think about. However, I&rsquo;m a
    hacker at heart, and I think best when my mind can express itself through working
    code. So, in my 20% time at work, I&rsquo;ve been experimenting.</p>\n\n<p>Firstly:
    we can put simple data into GitHub repositories, but it&rsquo;s not very friendly,
    so\x02I&rsquo;ve built a <a rel=\"external\" href=\"http://git-viewer.labs.theodi.org/\">Git
    Data Viewer</a>, which wraps around a git repository (not necessarily GitHub),
    and exposes some information about the contents in a more data-user-friendly way
    than the standard GitHub view. Currently, if you create a repository, add some
    data in CSV, and add a <a rel=\"external\" href=\"http://data.okfn.org/standards\">DataPackage</a>
    file to describe it, the app can load that up\x02and show you the details, contents,
    history, and so on of that dataset. For example, here is a view of the <a rel=\"external\"
    href=\"http://git-viewer.labs.theodi.org/repositories/git%3A%2F%2Fgithub.com%2Fdatasets%2Fhouse-prices-uk.git\">UK
    house price dataset</a>, which was put onto GitHub by <a rel=\"external\" href=\"http://rufuspollock.org/\">Rufus
    Pollock</a>. As you can see, it&rsquo;s substantially friendlier than the <a rel=\"external\"
    href=\"https://github.com/datasets/house-prices-uk/\">bare repository</a>\x02(though
    data.okfn.org does also provide <a rel=\"external\" href=\"http://data.okfn.org/data/house-prices-uk\">a
    more useful view</a> of this particular dataset).</p>\n\n<p>Secondly, I&rsquo;ve
    started experimenting with the process of maintaining and improving this data.
    I&rsquo;ve uploaded an <a rel=\"external\" href=\"https://github.com/theodi/dataset-mod-disposals\">MOD
    dataset</a> to play around with; here you can see an\x02<a rel=\"external\" href=\"https://github.com/theodi/dataset-mod-disposals/pull/1\">open
    pull request</a> for an improvement to the file format of the data. I&rsquo;m
    already learning that while many operations on datasets match well with Git, some
    do not. Adding columns, for instance, affects every line, so will be very difficult
    to merge in if other things have changed as well. I&rsquo;m unsure at the moment
    if this is a fundamental limitation in Git itself, or whether we can improve the
    tooling to make this easier.</p>\n\n<p>I make no claim that this will work, it&rsquo;s
    an experiment to see which bits do and which bits don&rsquo;t, and to see how
    far we can push our current toolset before it breaks. If you&rsquo;re interested
    joining in, please do come and talk to us on our <a rel=\"external\" href=\"irc://irc.freenode.net/theodi\">IRC
    channel</a> (#theodi on irc.freenode.net), check out the <a rel=\"external\" href=\"https://github.com/theodi/git-data-viewer\">viewer
    source code</a>, or fork\x02our\x02<a rel=\"external\" href=\"https://github.com/theodi/dataset-mod-disposals\">test
    dataset</a>\x02and send pull requests!</p>\n"
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