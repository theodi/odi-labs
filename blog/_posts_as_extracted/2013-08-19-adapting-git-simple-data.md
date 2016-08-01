---
id: http://contentapi.theodi.org/adapting-git-simple-data.json
web_url: http://theodi.org/blog/adapting-git-simple-data
slug: adapting-git-simple-data
title: Adapting Git for simple data
format: article
updated_at: '2015-09-11T10:52:41+01:00'
created_at: '2013-08-19T15:10:22+01:00'
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
  description: ''
  excerpt: A while ago I wrote about using Git for data publishing, and talked about
    how the tools and particularly the workflow used by many open source projects
    could revolutionise how we create, publish, and collaborate on open data. I’m
    not the only one thinking this, of course; amongst many others, Rufus Pollock
    from the OKFN has written on the same subject many times, and they’ve been hosting
    datasets on Githubfor a good while now, as have other organisations.
  language: en
  need_extended_font: false
  url: ''
  content: "<p>A while ago I wrote about using <a rel=\"external\" href=\"http://theodi.org/blog/git-data-publishing\">Git
    for data publishing</a>, and talked about how the tools and particularly the workflow\x02
    used by many open source projects could revolutionise how we create, publish,
    and collaborate on open data. I&rsquo;m not the only one thinking this, of course;
    amongst many others, \x02Rufus Pollock from the OKFN has <a rel=\"external\" href=\"http://blog.okfn.org/2013/07/02/git-and-github-for-data/\">written
    on the same subject</a>\x02 <a rel=\"external\" href=\"http://blog.okfn.org/2010/07/12/we-need-distributed-revisionversion-control-for-data/\">many
    times</a>, and they&rsquo;ve been hosting <a rel=\"external\" href=\"https://github.com/datasets\">datasets
    on Github</a>\x02for a good while now, as have other organisations.</p>\n\n<p>However,
    we&rsquo;ve not cracked the tooling problem. Data is complex stuff; it may be
    that we need new tools to handle it, like <a rel=\"external\" href=\"http://rawbase.github.io/\">R&amp;Wbase</a>,
    or Max Ogden&rsquo;s new <a rel=\"external\" href=\"https://github.com/maxogden/dat\">dat</a>
    project. However, I tend to side with those who reckon we can do a lot more with
    the tools we already have (not that there are <em>sides</em> \x02or anything,
    we&rsquo;re all friends). As <a rel=\"external\" href=\"http://ben.balter.com/2013/07/01/technologys-the-easy-part/\">Ben
    Balter wrote</a>:</p>\n\n<blockquote>\n  <p>We should be co-opting proven tools
    already in the hands of public servants and making it so ridiculously straightforward
    for government agencies to distribute information and build collaborative communities
    around shared problems that it would be criminal for them not to.</p>\n</blockquote>\n\n<p>With
    this in mind, I&rsquo;ve continued hacking away at the tools we already have,
    trying to make them work for data. Not\x02 <em>all</em> \x02data, but certainly
    for small, simple datasets, particularly data in simple CSV format. At this point,
    we&rsquo;re going to dive into a few Git internals, so apologies if \x02it gets
    a little \x02technical from here on in.</p>\n\n<h2>Making Git work with CSVs</h2>\n\n<p>The
    main problem with using git for things like CSV formats comes because it stores
    changes line-by-line. If you compare two files, you can see the lines that have
    changed. That&rsquo;s great if your information is line-oriented, but it falls
    over for CSV. Row operations are OK, but column operations hit every single line,
    making git&rsquo;s built-in comparisons useless.</p>\n\n<p>What can we do about
    this? As a user, I don&rsquo;t care how efficiently the change is stored internally,
    as long as I can understand what&rsquo;s happening, so this really just comes
    down to presentation.</p>\n\n<p>Let&rsquo;s take a look at a sample bit of data,
    and let&rsquo;s look at the one bit of software everyone using git has - the command-line
    interface. Here&rsquo;s a diff of a change I made:</p>\n\n<p><code>git diff data.csv</code></p>\n\n<p><img
    src=\"http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/legacy/diff%2Dcolour.png\"
    alt=\"git diff\" /></p>\n\n<p>So far, so impenetrable. I think I can see that
    there&rsquo;s a new column in there, but if anything else changed, I&rsquo;m certainly
    not going to spot it in amongst all that.</p>\n\n<p>However, git allows us to
    customise how we show diffs for different formats. Using <a rel=\"external\" href=\"http://git-scm.com/book/ch7-2.html\">git
    attributes</a>, we can tell git how we want it to handle CSV files, including
    customising\x02 various things about how diffs are performed.</p>\n\n<p>We also
    need to use\x02 git&rsquo;s\x02&ndash;word-diff option, which is used to show
    differences within lines in text by splitting along word boundaries. If we tell
    git that we want to use the word-diff, we can then customise how the line is split
    up for CSV files in particular.</p>\n\n<p>Let&rsquo;s try something stupid first,
    and say that\x02 <em>every character</em> \x02should be treated as a separate
    word when doing word-diffs. We add a csv file type to a shared git attributes
    file, and add a diff filter for CSV that specifies a simple word regex that will
    match any character:</p>\n\n<pre><code># ~/.config/git/attributes\n*.csv\tdiff=csv\n\n#
    ~/.gitconfig\n[diff \"csv\"]\n\twordRegex = .\n</code></pre>\n\n<p><code>git diff
    --word-diff data.csv</code></p>\n\n<p><img src=\"http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/legacy/wordRegexDot.png\"
    alt=\"wordRegex=.\" /></p>\n\n<p>This is already a\x02 <em>lot</em> \x02better.
    We can see what&rsquo;s going on at least. Not only have I added a column, but
    I&rsquo;ve added a row for Mercury, and fixed some formatting near the end. I
    really should learn to split up my commits better.</p>\n\n<p>However good this
    looks, it&rsquo;s not right. The diff picks up the wrong bits as part of a change
    sometimes, like the &lsquo;a&rsquo; in the first line, or the quotes at the start
    of the Mercury line. Let&rsquo;s make it a bit more CSV-specific.</p>\n\n<pre><code>#
    ~/.gitconfig\n[diff \"csv\"]\n\twordRegex = [^,\\n]+[,\\n]|[,]\n</code></pre>\n\n<p>The
    regular expression here took a bit of working out, so I won&rsquo;t explain character
    by character, but suffice it to say that it tells git that &lsquo;words&rsquo;
    are things that end in commas or newlines. That turns out to do exactly what we
    want:</p>\n\n<p><code>git diff --word-diff data.csv</code></p>\n\n<p><img src=\"http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/legacy/csv%2Ddiff.png\"
    alt=\"CSV diff\" /></p>\n\n<p>Not only do the diffs now line up to fields, we
    get entire field changes being shown, as in the last two lines.</p>\n\n<p>This
    is great, and means that for people who use the command line, CSV diffs are now
    a possibility. Unfortunately, this has to be configured per-user; there is no
    way to do it for a repository. With that in mind, I&rsquo;ve tried to make the
    configuration as easy as possible, and created a script called <a rel=\"external\"
    href=\"https://github.com/theodi/csv-my-git\">csv-my-git</a> \x02which sets this
    up for you on your local machine. You can just enter the following command in
    a terminal, and it will sort it all out for you:</p>\n\n<pre><code>curl -L http://theodi.github.io/csv-my-git/install.sh
    | bash\n</code></pre>\n\n<p>It sets up the format, and also adds a <code>git diffcsv</code>
    alias for you to simplify the command line a bit (as suggested by <a rel=\"external\"
    href=\"https://twitter.com/samuelleach\">Sam Leach</a>).</p>\n\n<p>There are some
    obvious problems here - firstly,\x02 it assumes a very simple CSV format. If you
    use tabs to separate your fields, then this will currently not work. However,
    it&rsquo;s open source, so improvements and contributions are welcome! Secondly,
    you have to include the &ndash;word-diff option (or use diffcsv) every time; \x02if
    anyone knows how to make word-diff the \x02<em>default</em> \x02for a particular
    file type, I will buy you a decent number of drinks.</p>\n\n<h2>Customising Web
    UIs</h2>\n\n<p>The command line is all very well; it lets us prove that this is
    \x02<em>possible</em>, but even I, as a seasoned developer, rarely use git on
    the command line. Let&rsquo;s make something a bit more usable.</p>\n\n<p>As the
    problem is one of display and tooling, we don&rsquo;t need to fundamentally change
    git. We just need to change the tools; and the big tool that we want this to work
    with is <a rel=\"external\" href=\"http://github.com\">GitHub</a>. If we could
    get proper CSV support into GitHub&rsquo;s commit views and pull requests, well,
    that would be a thing of beauty.</p>\n\n<p>Unfortunately for us, GitHub isn&rsquo;t
    open source, so we can&rsquo;t just change it. Fortunately, however, there is
    an open source github-alike called <a rel=\"external\" href=\"http://gitlab.org/\">Gitlab</a>,
    which we \x02<em>can</em> \x02change. Yay open source!</p>\n\n<p>Gitlab&rsquo;s
    default view for CSV is to show it as a text diff, very similar to the first command-line
    one above. Not useful. However, it&rsquo;s incredibly easy to configure. We add
    a method to detect if a file is a CSV, and then we can write a CSV-specific view.
    Here&rsquo;s a view showing the contents of a CSV file in a table, rather than
    just as text, in Gitlab:</p>\n\n<p><img src=\"http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/legacy/csv_table.png\"
    alt=\"Gitlab CSV view\" /></p>\n\n<p>Nice and simple, but proving we can do it.</p>\n\n<p>Next
    thing is to add diff support. Now, showing diffs in tabular format, that&rsquo;s
    a non-trivial UI challenge, I thought to myself. Then up popped <a rel=\"external\"
    href=\"http://okfnlabs.org/blog/2013/08/08/diffing-and-patching-data.html\">an\x02
    <em>incredibly</em> \x02well-timed post</a> on the OKFN Labs blog by Paul Fitzpatrick
    about his <a rel=\"external\" href=\"http://paulfitz.github.io/coopyhx/\">coopyhx</a>
    project, which does <em>exactly</em>\x02 this. It even has a bit of Javascript
    which, given two tables, shows the diff in a really useful way.</p>\n\n<p>So,
    back to Gitlab; all we need is the old file, the new file, a bit of coopyhx javascript,
    and suddenly we have a diff view of CSV files right there in your commit logs
    and pull requests:</p>\n\n<p><img src=\"http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/legacy/csv_gitlab_diff.png\"
    alt=\"CSV diff in Gitlab\" /></p>\n\n<p>This is, quite simply, spectacular. If
    we could get GitHub to add something like this, I think around 95% of our data
    sharing and collboration work would get easier. Failing that, we just need someone
    to host a Gitlab instance with CSV support!</p>\n\n<p>The Gitlab work is still
    very much a work in progress, but you can get the code from the <a rel=\"external\"
    href=\"https://github.com/theodi/gitlabhq/tree/csv-view\">csv-view branch of our
    gitlab fork</a>, and also <a rel=\"external\" href=\"https://github.com/gitlabhq/gitlabhq/pull/4810\">weigh
    in on the Gitlab\x02 pull request</a>. As with the git configuration above, it
    needs to be more robust and handle other formats, but I think this is a really
    good step towards solving some of problems we have with git for data, and proving
    that we really\x02 <em>can</em> \x02do a hell of a lot with the tools we already
    have.</p>\n\n<p><strong>Update:</strong></p>\n\n<p>A few days after this was published,
    GitHub released an update that shows <a rel=\"external\" href=\"https://github.com/blog/1601-see-your-csvs\">CSVs
    in their web interface</a>. It includes linking of lines, search, filtering, and
    is really really nice. I think that while this is a big step forward, the really
    useful stuff comes when we can properly use the fork / pull request model with
    data, and diffs are essential for that. Unfortunately, \x02CSV diffs are still
    shown in the traditional line-at-a-time way. You never know though, maybe it won&rsquo;t
    be long.</p>\n"
  media_enquiries_name: ''
  media_enquiries_email: ''
  media_enquiries_telephone: ''
  alternative_title: ''
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