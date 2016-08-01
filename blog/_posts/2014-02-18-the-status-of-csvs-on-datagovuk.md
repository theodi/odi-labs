---
author:
  name: 
  slug: 
description: 'CSV stands for comma-separated values. It is a simple format for tabular
  data and relatively easy to process. We analysed more than 20,000 links to CSV files
  on data.gov.uk – only around one third turned out to be machine-readable. '
---

<p><strong>CSV stands for <em>comma-separated values</em>. It is a simple format for tabular data and relatively easy to process. We analysed more than 20,000 links to CSV files on data.gov.uk – only around one third turned out to be machine-readable.</strong> A typical CSV is between 1kb-1mb in size and has around eight columns.</p>

<p>Our analysis of the header names of 7,390 machine-readable CSVs suggests that there are clear patterns. The most common type are spend records, usually split by month and type. Other organisations such as the Crown Prosecution Service also release vast amounts of CSVs. <strong>If publishers embrace standards for CSV data releases, we see a great potential, e.g. for aggregate analyses or new business services.</strong></p>

<h2>Metadata</h2>

<p>In January 2014 we created a file that contains all CSVs published on <a rel="external" href="http://data.gov.uk">data.gov.uk</a>. We searched for all CSVs and then grabbed and wrote the metadata we needed into a CSV file.</p>

<h4>Figure 1. Number of valid CSVs on data.gov.uk</h4>
<p><img src="https://raw.github.com/theodi/R-projects/master/csv-stats/graphics/overall-stats.png" alt="overall-stats" /></p>

<p>Figure 1 shows how the overall number of 20,692 dwindles to 7,390:</p>

<ol>
  <li>
    <p>Almost 4,000 URLs are not CSVs and link to other files, web pages or resolve in some download link. Some of them may be valid, but many links don&rsquo;t work, for example <a rel="external" href="http://www.roh.nhs.uk/EasySiteWeb/GatewayLink.aspx?alId=1763">this URL</a>.</p>
  </li>
  <li>
    <p>Of the URLs that do end in <code>.csv</code>, around 4,000 yield an error. For example, some files that detail the <a rel="external" href="http://www.crossrail.co.uk/assets/library/document/c/original/crossrail_payments_period_13_2012-13.csv">Crossrail Spend 2013</a> are no longer available. </p>
  </li>
  <li>
    <p>Even if the CSV exists, it loses some of its value if we cannot read it automatically. Standards are hence important. An example of what did <strong>not</strong> get parsed is below. The first line is the title and the second one is empty (from <a rel="external" href="http://www.royalwolverhamptonhospitals.nhs.uk/files/mth%206%20september%202013%20(3).csv">here</a>).</p>

    <p><img src="https://raw.github.com/theodi/R-projects/master/csv-stats/graphics/miss-header-example.png" alt="example" /></p>
  </li>
</ol>

<p>There are some limitations. For instance, it is hard to replicate the exact numbers as a website may be temporarily offline. We verified &ldquo;machine-readable&rdquo; (and excluded ones) in several ways, but it is likely that we still have false positives and vice versa. </p>

<p>The whole analysis and its code is on <a rel="external" href="https://github.com/theodi/R-projects/blob/master/csv-stats/csv-meta-analysis-data-gov.R">GitHub</a>.</p>

<h2>Size</h2>

<p>The vast majority of CSV files is between 1kb and 1mb in size. The largest file on data.gov.uk is at the moment the complete data of the <a rel="external" href="http://www.landregistry.gov.uk/market-trend-data/public-data/price-paid-data">Land Registry Price Paid Data</a> with 3.2gb. </p>

<h4>Figure 2. Histogram of the size of CSVs</h4>
<p><img src="https://raw.github.com/theodi/R-projects/master/csv-stats/graphics/histogram-size-of-csvs.png" alt="size-histogram" /></p>

<p>After much experimentation we automatically read 7,390 CSV-files. All of them have header names, of course, that can be analysed. For example, a typical CSV file on data.gov.uk has eight headers, i.e. columns (see figure 3).</p>

<p>There is also a peculiar spike at 41 headers per dataset. Some of the datasets have all the information arranged in only one row with many different columns. The prevalent theme, in this case it seems, are various ways of counting payroll staff.</p>

<h4>Figure 3. Histogram of the number of headers (columns)</h4>
<p><img src="https://raw.github.com/theodi/R-projects/master/csv-stats/graphics/header-length-histogram.png" alt="header-length" /></p>

<p>What are the most popular header names? We had to clean up plenty of names because in its raw format, it is <em>messy data</em> such as &ldquo;amount&rdquo;, &ldquo; amount&rdquo;, &ldquo;AMUONT&rdquo; etc. After some <a rel="external" href="http://openrefine.org">Open Refine</a> magic, we produced the following rank table. </p>

<table class="table offers table-horizontally-condensed">
 <tr><td>Expense Type</td><td class="pull-right">3,144</td></tr>
 <tr><td>Entity</td><td class="pull-right">3,039</td></tr>
 <tr><td>Expense Area</td><td class="pull-right">3,029</td></tr>
 <tr><td>Supplier</td><td class="pull-right">2,889</td></tr>
 <tr><td>Date</td><td class="pull-right">2,820</td></tr>
 <tr><td>Transaction Number</td><td class="pull-right">2,791</td></tr>
 <tr><td>Amount</td><td class="pull-right">2,734</td></tr>
 <tr><td>Department Family</td><td class="pull-right">2,498</td></tr>
 <tr><td>VAT Registration Number</td><td class="pull-right">916</td></tr>
 <tr><td>Convictions Percentage</td><td class="pull-right">836</td></tr>
</table>

<p>The headers may not be representative overall because it only features the machine-readable CSVs. They are frequency counts which also implies that departments that release similar data in individual CSVs (e.g. for each month) are overrepresented. Be that as it may, the header ranking shows how common certain data types are.</p>

<h4>Figure 4. Co-occurrence of header names</h4>
<p><img src="https://raw.github.com/theodi/R-projects/master/csv-stats/co-occurrence/top-headers-coocc.png" alt="header-map" /></p>

<p>We took the 50 most popular header names and calculated how often they each appear together. The lines&rsquo; thickness stands for the frequency of their co-occurence. For example, as we would expect, <em>Payscale Minimum</em> and <em>Payscale Maximum</em> are next to each other. A generic header name such as <em>Unit</em> appears in many files and has therefore stronger links to various others.</p>

<p>The most common cluster is around <em>Expense Type</em> because many files document government spending. A typical &ldquo;Spend over £25,000&rdquo; CSV is very likely to have similar headers as listed in the previous table. </p>

<p>We also see an independent cluster around prosecutions. For example, the Crown Prosecution Service releases a lot of individual CSVs, which increases how many times they appear in our header analysis. </p>

<h4>Figure 5. Co-occurrence of header names excluding popular datasets</h4>
<p><img src="https://raw.github.com/theodi/R-projects/master/csv-stats/co-occurrence/top-headers-coocc-excl-popular.png" alt="header-map2" /></p>

<p>Figure 5 shows the co-occurrence of headers excluding popular datasets. For example, CSVs with <em>Expense Type</em> no longer appear. Here the 200 most popular header names reveal quite a tangle. The large, overplotted area on the bottom are CSV headers, among others, from the BIS Workforce Management Information.</p>

<p>The big cluster on the right, dubbed the &ldquo;Death Star&rdquo;, comes from one series of CSVs. The <a rel="external" href="http://data.gov.uk/dataset/foreign-office-consular-data">Foreign Office Consular</a> publishes &ldquo;data on assistance provided to British nationals worldwide this includes numbers of incidents handled by UK consulates overseas, including hospitalisations, deaths, detentions, with geographical location&rdquo;. </p>

<p>A similar cluster appears on the top left published by the <a rel="external" href="http://data.gov.uk/dataset/latest-marine-observational-data">Metoffice</a>. It includes the latest 24 hours marine data for observed weather. Both exemplify why some headers are more related than others: a publisher may release many almost identical files split by time or geography.</p>

<h2>Why it matters</h2>

<p>We appreciate that more and more people recognise CSV as a desirable format for sharing data on the web. However, publishing any tabular data simply with a <code>.csv</code> extension will not bring as much further. The key is to follow a minimal standard. Tools for doing so are emerging, for instance the ODI&rsquo;s <a rel="external" href="http://csvlint.io/">CSV validator</a>. As Jeni wrote, 2014 may turn out to be the <a rel="external" href="http://theodi.org/blog/2014-the-year-of-csv">Year of the CSV</a>.</p>

<p>Our analysis is far from exhaustive relative to the open data ecosystem; it only looks at data.gov.uk. Even there we have to acknowledge certain limitations such as incorrect headers or temporarily unavailable URLs. What it shows us, however, is that few publishers follow leading practice yet. </p>

<p>By making access and aggregation of data via CSV easier, we enable a huge potential. For example, only an automated analysis may be able to look at the spending across all government departments and bring the often proclaimed transparency. Companies may use CSVs to integrate them into their dashboards or to build services. Even non-technical citizens may be able to use the data more easily. Many user-friendly tools such as <a rel="external" href="http://datawrapper.de/">Datawrapper</a> have CSV features built-in. </p>

<p>Let&rsquo;s aim for a world with less <a rel="external" href="http://en.wikipedia.org/wiki/Data_wrangling">data munging</a>.</p>

