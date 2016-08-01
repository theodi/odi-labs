---
author:
  name: Leigh Dodds
  slug: leigh-dodds
description: ''
---

<p>The ODI tech team has recently been building a tool to validate CSV files. While CSV is a very simple format, it is surprisingly easy to create files that are hard for others to use. </p>

<p>The tool we&rsquo;ve created is called <a rel="external" href="http://csvlint.io/">CSVLint</a> and this blog post provides some background on why we&rsquo;ve built the tool, its key features, and why we think it can help improve the quality of a large amount of open data.</p>

<h2>Why build a CSV validator?</h2>

<p>Jeni Tennison recently described 2014 as <a rel="external" href="http://theodi.org/blog/2014-the-year-of-csv">the Year of CSV</a>. A lot, perhaps even the majority, of Open Data is published in the tabular format CSV. CSV has many short-comings, but is very widely supported and can be easy to use.</p>

<p>Unfortunately though, lots of CSV data is published in broken and inconsistent ways. There are numerous reasons why this happens, but two of the key issues are that:</p>

<ul>
  <li>tools differ in how they produce or expect to consume CSV data, leading to the creation of many different variants or &ldquo;dialects&rdquo; of CSV that have different delimiters, escape characters, encoding, etc</li>
  <li>lots of data is dumped from spreadsheets that are designed for human-reading and not automated processing</li>
</ul>

<p>This case study on <a rel="external" href="http://theodi.org/blog/the-status-of-csvs-on-datagovuk">the status of CSVs on data.gov.uk</a> highlights the size of this issue: only a third of the data was machine-readable.</p>

<p>These types of issues can be addressed by better tooling. Validation tools can help guide data publishers towards best practices providing them with a means to check data before it is published to ensure it is usable. Validation tools can also help re-users check data before it is consumed and provide useful feedback to publishers on issues.</p>

<p>This is the motivation behind CSVLint.</p>

<h2>Gathering Requirements</h2>

<p>To ensure that we were building a tool that would meet the needs of a variety of users, we gathered requirements from several sources:</p>

<ul>
  <li>A <strong>user workshop</strong> &ndash; we engaged with a group of data publishers and re-users to discuss the issues they faced and the features they would like to see. The attendees identified and prioritised a potential set of features for the tool</li>
  <li><strong>background research</strong> &ndash; we <a rel="external" href="https://github.com/theodi/csv-validation-research">explored</a> a range of different tools, techniques and formats for validating and describing CSV files. This allowed us to identify the types of validation that might be useful and ways to describe constraints and create schemas</li>
</ul>

<p>We used this input to refine an initial set of features which formed the backlog for the project. The key things that we needed to deliver were:</p>

<ul>
  <li>a CSV syntax validator to check that the basic structure of a CSV file</li>
  <li>an extended validator that could check a CSV file against a schema, e.g. to ensure that it contained the correct columns with the correct data types</li>
  <li>a way to generate documentation for schemas, to make it easy for people to publish and aggregate data in common formats</li>
  <li>a tool that can be used to check data both before and after publication</li>
  <li>clear guidance on how to fix identified problems</li>
  <li>integration options for embedding these tools into other various workflows</li>
</ul>

<h2>The CSVLint Alpha</h2>

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/4d/22/534d22121f986a2ef0000182/csvlint-home.png" alt="null" class="img text-center" id="attachment-534d2212d0d4623a4a000003" /></p>

<p>The end result of our efforts is <a rel="external" href="http://csvlint.io/">CSVLint</a> an open service that supports the validation of CSV files published in a variety of ways. </p>

<p>The service is made up of two components. The web application provides all of the user facing functionality, including the reporting, etc. It is backed by an underlying software library, <a rel="external" href="https://github.com/theodi/csvlint.rb">csvlint.rb</a>, that does all of the heavy lifting around data validation. </p>

<p>Both <a rel="external" href="https://github.com/theodi/csvlint">the web application</a> and <a rel="external" href="https://github.com/theodi/csvlint.rb">the library</a> are open source. This means that everything we&rsquo;ve built is available for others to customise, improve, or re-deploy.</p>

<p>The service builds on some existing work by the <a rel="external" href="http://okfn.org/">Open Knowledge Foundation</a>, including the <a rel="external" href="http://dataprotocols.org/csv-dialect/">CSV dialect</a>, <a rel="external" href="http://dataprotocols.org/json-table-schema/">JSON Table Schema</a> and <a rel="external" href="http://dataprotocols.org/data-packages/">Data Package</a> formats.</p>

<p>CSVLint supports validating CSV data that has been published in a variety of different ways:</p>

<ul>
  <li>As a single CSV file available from a public URL</li>
  <li>As a collection of CSV files packaged into a zip file</li>
  <li>As a collection of CSV files associated with a CKAN package</li>
  <li>As a Data Package</li>
  <li>Via uploading individual files</li>
  <li>Via uploading a zip file</li>
</ul>

<p>Data uploaded to the tool is deemed to be &ldquo;pre-publication&rdquo; so the validation reports are not logged. This allows publishers to validate and improve their data files before making them public. </p>

<p>All other data is deemed to be public and validation reports are added to <a rel="external" href="http://csvlint.io/validation">the list of recent validations</a>. This provides a feedback loop to help highlight common errors.</p>

<h2>Validation Reports</h2>

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/4d/21/534d21a1f362be6c87000152/csvlint.png" alt="null" class="img text-center" id="attachment-534d21a1d0d4623a4a000002" /></p>

<p>The validation reports (<a rel="external" href="http://csvlint.io/validation/5343d38a6373760715770000">example</a>) have been designed to give &ldquo;at a glance&rdquo; feedback on the results, as well as a detailed breakdown of each issue.</p>

<p>All feedback is classified along two different dimensions:</p>

<ul>
  <li>Type of feedback
    <ul>
      <li>Error &ndash; problems that needs to be fixed for the CSV to be considered valid</li>
      <li>Warning &ndash; problems that should be fixed, but aren&rsquo;t critical</li>
      <li>Message &ndash; additional feedback on areas for improvement or assumptions made during the validation</li>
    </ul>
  </li>
  <li>Category of error
    <ul>
      <li>Structure &ndash; problems with the syntax of the file, e.g. problems with quoting or delimiters</li>
      <li>Schema &ndash; issues caused by schema validation failures</li>
      <li>Context &ndash; problems related to how the data has been published, e.g. the <code>Content-Type</code> used to serve the file</li>
    </ul>
  </li>
</ul>

<p>The summary table for each validation result is supplemented with detailed feedback on every reported issue with suggested improvements.</p>

<p>The report also includes badges that allow a summary result and a link to a full report to be embedded in other web applications. </p>

<p>A <a rel="external" href="http://csvlint.io/validation/5343d38a6373760715770000.json">JSON view</a> of a validation result provides other integration options.</p>

<h2>Schema Validation</h2>

<p>In addition to checking structural problems with CSV files, the <a rel="external" href="http://csvlint.io/">CSVLint</a> service can also validate a file against a schema.</p>

<p>We proposed some suggested improvements to the <a rel="external" href="http://dataprotocols.org/json-table-schema">JSON Table Schema</a> format that would allow <a rel="external" href="http://dataprotocols.org/json-table-schema/#field-constraints">constraints</a> to be expressed for individual fields in a table, e.g. minimum length, patterns, etc. These have now been incorporated into the latest version of the specification.</p>

<p>CSVLint currently supports schemas based on the latest version of JSON Table Schema. There is some background <a rel="external" href="http://csvlint.io/about">in the documentation</a> (see &ldquo;How To Write a Schema&rdquo;) and it is possible to see <a rel="external" href="http://csvlint.io/schemas">a list of recently used schemas</a> to view further examples.</p>

<p>Using a schema it is possible to perform additional checks, including:</p>

<ul>
  <li>whether the columns have the right name</li>
  <li>required fields are populated</li>
  <li>fields have a minimum or maximum length, or match a pattern</li>
  <li>field values are unique</li>
  <li>values match a declared type, e.g. a date</li>
</ul>

<p>This provides a lot of flexibility for checking the data contained in a CSV file. When validating a file a user may specify a schema file to be used when validating the data, either uploading it with the data or pointing to an existing schema that has been published to the web. For <a rel="external" href="http://dataprotocols.org/data-packages/">Data Packages</a> any built-in schema is automatically applied. Schemas can be uploaded along with a data file or published openly on the web.</p>

<p>CSVLint automatically generates some summary documentation for schemas loaded from the web, e.g. this <a rel="external" href="http://csvlint.io/schemas/530b16c163737676e9260000">schema for the Land Registry Price Paid data</a>.</p>

<h2>How CSVLint can make a difference</h2>

<p>While CSLint is still an alpha release there are already a rich set of features available to support guiding and improving data publication. We think that the service can potentially play a number of roles:</p>

<ul>
  <li>by helping users of all kinds improve the data they are publishing via a quick feedback loop that will guide them on fixing errors</li>
  <li>enabling communities to publish schemas that describe and validate data formats to simplify the aggregation of open data</li>
  <li>supporting data re-users in checking source data to catch common problems and provide useful constructive feedback to data publishers</li>
  <li>allowing data repositories to use CSVLint badges in their service to provide immediate feedback to both publishers and re-users on data quality</li>
</ul>

<p>But to prove this we need people to start using the tool. User feedback will provide us with useful guidance on how the service might evolve. So we&rsquo;re really keen to get feedback on how well CSVLint supports your particular data publication or re-use use case. </p>

<p>Please try out the service and share your experience by leaving a comment on this blog post. If you encounter a bug, or have an idea for a new feature, then please <a rel="external" href="https://github.com/theodi/csvlint/issues?state=open">file an issue</a>. </p>

