---
id: http://contentapi.theodi.org/tools-for-working-with-csv-files.json
web_url: http://theodi.org/blog/tools-for-working-with-csv-files
slug: tools-for-working-with-csv-files
title: Tools For Working with CSV Files
format: article
updated_at: '2015-09-11T10:53:58+01:00'
created_at: '2014-01-13T08:21:03+00:00'
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
  excerpt: Anyone working with open data for any length of time will have inevitably
    spent a long time wrangling CSV files to tidy, extract and reformat data.
  language: en
  need_extended_font: false
  url: ''
  content: |+
    <p>Anyone working with open data for any length of time will have inevitably spent a long time wrangling CSV files to tidy, extract and reformat data.</p>

    <p>There are various ways to get that job done, but I&rsquo;ve been compiling a list of useful command-line tools that can provide some useful functionality. The ability to automate data conversion and cleaning helps make a process repeatable, which is essential if you&rsquo;re doing more than just a one-off task.</p>

    <p>My current favourite tool for working with CSV files is <a rel="external" href="https://csvkit.readthedocs.org/en/latest/">csvkit</a>, which is a collection of utilities that support:</p>

    <ul>
      <li>cleaning CSV files to resolve syntax errors</li>
      <li>viewing and searching CSV files to extract relevant data</li>
      <li>generating summaries of columns in the data</li>
      <li>merging together CSV files, joining them based on common column values</li>
    </ul>

    <p>The <a rel="external" href="https://csvkit.readthedocs.org/en/latest/tutorial/getting_started.html">getting started guide</a> introduces you to each of the tools in turn. Taken together they provide a quick way to inspect the data in a set of CSV files and then combine them to create a more useful structure.</p>

    <p>However, if you need to do more detailed clean-up then <a rel="external" href="http://csvfix.byethost5.com/csvfix15/csvfix.html">csvfix</a> might be a better alternative. The documentation includes some <a rel="external" href="http://csvfix.byethost5.com/csvfix15/SolutionstoCommonProblems.html">solutions to common problems</a> which gives a good overview of the functionality. csvfix is particularly good at tidying up and reformatting fields within a CSV file making it a good complement to csvkit.</p>

    <p>Of course data is often published as an Excel file rather than as CSV, often requiring a manual step to convert it to CSV before applying other tools. Data might also be spread across separate worksheets, making the export process more laborious. I wrote the <a rel="external" href="https://github.com/ldodds/xls-split">xls-split</a> utility to help extract worksheets from Excel files, converting them into one or more CSV files. Its very useful for extracting data from a set of related spreadsheets, e.g. annual or monthly statistics, in order to then build an aggregate data file.</p>

    <p>Validating data in a CSV file, to check that it conforms to expectations, is another common task. This is something that we&rsquo;ve been looking at in more depth at the ODI. This <a rel="external" href="https://github.com/theodi/csv-validation-research">github project</a> and the related documentation explores various tools and approaches for validating CSV files against simple schemas.</p>

    <p>If working on the command-line isn&rsquo;t your thing then <a rel="external" href="http://openrefine.org/">OpenRefine</a> is still one of the best tools for interactively tidying up messy data.</p>

    <p>What other tools do you use when working with CSV files? Leave a comment and let us know.</p>

  media_enquiries_name: ''
  media_enquiries_email: ''
  media_enquiries_telephone: ''
  alternative_title: ''
  organizations: []
  author:
    name: Leigh Dodds
    slug: leigh-dodds
    web_url: http://theodi.org/team/leigh-dodds
    tag_ids:
    - team
    - rnd-programme
    - staff
  nodes: []
author:
  name: Leigh Dodds
  slug: leigh-dodds
  web_url: http://theodi.org/team/leigh-dodds
  tag_ids:
  - team
  - rnd-programme
  - staff
nodes: []
organizations: []
related_external_links: []
---