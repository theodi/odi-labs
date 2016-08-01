---
author:
  name: Stuart Harrison
  slug: stuart-harrison
description: ''
---

<p>At the ODI, and especially in the tech team, we love <a rel="external" href="https://github.com">Github</a>. We know it&rsquo;s great for collaborating on code (millions of people and thousands of teams use it every day), but can it be used for data too?</p>

<p>When we collaborate on code, we use the <a rel="external" href="http://scottchacon.com/2011/08/31/github-flow.html">Github flow model</a>, that is we work on some code, write tests, then open a pull request to merge the code into the main codebase. We use <a rel="external" href="https://travis-ci.org">Travis</a> to run our tests, and, if the tests pass, the code gets merged.</p>

<p>This works really well for us, but translating this to data is a different matter. Generally when you collaborate on data, we don&rsquo;t have an automated way of checking the data is in the correct format before any pull requests are merged.</p>

<p>This got me thinking, after our work on <a rel="external" href="http://csvlint.io/">CSVlint</a>, we now have a way of not only checking the formatting of data, but also checking if it matches a schema. Could we use the code we&rsquo;ve already written to use <a rel="external" href="https://travis-ci.org">Travis</a> to test the data and use a similar flow to our code?</p>

<p>I decided to use my innovation time to find out - the result is <a rel="external" href="https://github.com/theodi/cid">Cid</a>, a Ruby script which validates data in a Github repo, and can generate a new <a rel="external" href="http://dataprotocols.org/data-packages/">Datapackage</a> and push this to Github automatically if the validation is sucessful. If you&rsquo;re interested in the nuts and bolts of it, you can <a rel="external" href="https://github.com/theodi/cid/blob/master/README.md">read the README</a>, but I&rsquo;d like to use this blog post to ask for your help to test it out.</p>

<p>As we know, at the time of writing, voting in the UK European Elections took place yesterday. The count won&rsquo;t take place until Sunday night, so I thought this would be a perfect opportunity to try out Cid, and see what collaborating on data in real time looks like.</p>

<p>I&rsquo;ve set up a <a rel="external" href="https://github.com/theodi/euro-elections">repo in Github</a> which will contain the data. There&rsquo;s detailed instructions on how to submit your data <a rel="external" href="https://github.com/theodi/euro-elections/blob/gh-pages/README.md">in the Readme</a> (it assumes at least some knowledge of Github, but you don&rsquo;t need to be a developer to submit some data). </p>

<p>If you fancy helping, I&rsquo;ve listed the regions <a rel="external" href="https://github.com/theodi/euro-elections/issues?labels=help+wanted%2CRegions&amp;page=1&amp;state=open">on Github here</a>, and added a link to where the results will be published (according to the Electoral Commision&rsquo;s website) - please comment on the region you&rsquo;re planning to submit data for, and once the results are announced, check that council&rsquo;s website for the results, add them to a spreadsheet and submit a pull request.</p>

<p>Although the European Commission are planning to publish open data on the election results themselves, I&rsquo;m hoping this will be a nice proof of concept for wider publication of collaborative open data, as well as a starting point for something around next year&rsquo;s general election, which, so far, has never had a single point of reference for open data.</p>

<p>If you have any questions, please feel free to <a rel="external" href="https://github.com/theodi/euro-elections/issues">open an issue on GitHub</a> or comment below. Happy collaborating!</p>
