---
author:
  name: Stuart Harrison
  slug: stuart-harrison
description: ''
---

<p>At the ODI, we&rsquo;ve often talked about publishing data on <a rel="external" href="https://github.com/">GitHub</a>; to us, it&rsquo;s a nice solution that not only gives data publishers a convenient (and free) place to publish their data, but also encourages collaboration and provides a historical view of data over time.</p>

<p>Publishing data on GitHub is also a great solution for people and organisations that want to publish small amounts of data, but don&rsquo;t necessarily have the tools or capacity to publish data on their main website or use a fully-featured data catalogue such as <a rel="external" href="http://ckan.org/">CKAN</a>, <a rel="external" href="http://socrata.com">Socrata</a> or <a rel="external" href="http://www.opendatasoft.com/">OpenDataSoft</a>.</p>

<p>However, we&rsquo;ve also recognised that GitHub, to many non-technical people, can seem intimidating. Despite the fact that GitHub has done some great work towards lowering the barriers to adoption, such as its <a rel="external" href="https://windows.github.com/">desktop</a> <a rel="external" href="https://mac.github.com/">clients</a>, the fact still remains that GitHub is a technical tool, and, as such, the barriers remain there to those who don&rsquo;t code.</p>

<p>With this in mind, I decided to use my recent innovation week to build a web-based front-end for publishing data on GitHub.</p>

<p>Using our <a rel="external" href="https://github.com/theodi/data-publishing-template">best practice guidance to publishing data on GitHub</a> as inspiration, I put together <a rel="external" href="http://git-data-publisher.herokuapp.com/">Git Data Publisher</a> (the name needs some work). Currently it allows users to sign in using their GitHub account, add some information about their dataset, and add any number of data files.</p>

<p>Once a user has filled out and submitted the form, this generates a new GitHub repo that not only contains their data files, but also has an automatically generated <a rel="external" href="http://dataprotocols.org/data-packages/">datapackage.json</a> file, containing metadata about the dataset, such as the licence and publication frequency, amongst other things. </p>

<p>It also generates an HTML representation of the dataset (with <a rel="external" href="http://www.w3.org/TR/vocab-dcat/">DCAT metadata</a> embedded inside), which is accessed via GitHub pages (another wonderful service that GitHub provide which allows free publication of static HTML websites). </p>

<p>You can <a rel="external" href="http://github.com/git-data-publisher/Transactions-over-25-000-in-the-Foreign-and-Commonwealth-Office">see an example here</a>, and <a rel="external" href="http://git-data-publisher.github.io/Transactions-over-25-000-in-the-Foreign-and-Commonwealth-Office">an example of the generated webpage</a>.</p>

<p>The way this works fits in perfectly with the many-parts-loosely-joined approach that we take to developing tools at the ODI, and one of the things I&rsquo;d like to add to this is the ability to automatically generate an Open Data Certificate for the dataset using the <a rel="external" href="https://certificates.theodi.org">Open Data Certificates</a> API, as well as auto-validation of CSV files using <a rel="external" href="http://csvlint.io">CSVlint</a>. </p>

<p>The tool is by no means finished, and some of the features I&rsquo;d like to add in future innovation weeks include:</p>

<ul>
  <li>editing a dataset&rsquo;s metadata using the web interface</li>
  <li>updating data files and adding new ones</li>
  <li>publicly accessible views of all datasets uploaded using the tool (together with data)</li>
  <li>adding (and validating against) a schema</li>
  <li>letting users change the look and feel of the generated webpages</li>
</ul>

<p>You can see more details of the features (and add new ones if you&rsquo;re so minded) on the <a rel="external" href="https://github.com/theodi/git-data-publisher/issues">project&rsquo;s issues tracker in GitHub</a>, and please feel free to <a rel="external" href="https://github.com/theodi/git-data-publisher">fork the repo</a> and add your own features if you fancy helping out with the project!</p>
