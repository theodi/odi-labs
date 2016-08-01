---
author:
  name: 
  slug: 
description: ''
---

<p>Data on the web comes in several modes, for example:</p>

<ul>
  <li>files that you can download</li>
  <li>APIs</li>
  <li>content such as HTML tables</li>
  <li>custom data browsers</li>
  <li>and more.</li>
</ul>

<p>Analysing or using data without software is incredibly cumbersome if not impossible. <strong>Here we show you how you can import data from the web into a tool called R.</strong> Reasons why R has become so popular, and continues to grow, are that it&rsquo;s free, open source, with state-of-the-art practices and a fantastic community. </p>

<p><a rel="external" href="http://www.r-project.org/">R</a>, and its IDE <a rel="external" href="http://www.rstudio.com/">RStudio</a>, is a statistical software and data analysis environment. You can find a quick interactive tutorial on <a rel="external" href="https://www.codeschool.com/courses/try-r">Code School</a> or well-designed courses on <a rel="external" href="https://www.datacamp.com">DataCamp</a>. If you haven&rsquo;t installed R, you can paste and try the code at <a rel="external" href="http://www.r-fiddle.org">R-fiddle</a>.</p>

<h3>Comma separated values (CSV)</h3>

<p>Reading a CSV-file from an URL could not be simpler. Here are the number of police officers in Scotland over time. </p>

<pre><code>read.csv("http://www.quandl.com/api/v1/datasets/EUROSTAT/CRIM_PLCE_42.csv")
</code></pre>

<p>And yet it is not guaranteed that this works. Why? Many CSVs don&rsquo;t follow a minimal standard. For example, the first row of a CSV file should be a header row, but some data has a header row in a later line. We use the <code>skip</code> option. </p>

<pre><code>read.csv("http://www.royalwolverhamptonhospitals.nhs.uk/files/mth%206%20september%202013%20(3).csv", skip = 2)
</code></pre>

<p>Unfortunately, <code>read.csv()</code> does not cope well with SSL, that is https connections. An alternative employs <code>download.file</code>, see below. </p>

<pre><code># Fail
read.csv("https://raw.github.com/sciruela/Happiness-Salaries/master/data.csv")

# Win
read.url &lt;- function(url, ...){
  tmpFile &lt;- tempfile()
  download.file(url, destfile = tmpFile, method = "curl")
  url.data &lt;- read.csv(tmpFile, ...)
  return(url.data)
}
read.url("https://raw.github.com/sciruela/Happiness-Salaries/master/data.csv")
</code></pre>

<h4>What gifts did David Cameron receive in May-June 2013?</h4>

<p>The UK government publishes data about gifts David Cameron receives and what happens with them. We will use it as another example.</p>

<p>The data is behind a secure connection, so we use our <code>read.url</code> function. Yet it still produces an error. The reason is a £ symbol in the header row. </p>

<pre><code>read.url("https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/246663/pmgiftsreceivedaprjun13.csv")
</code></pre>

<p>A faster and more flexible tool is <code>fread</code> from the <a rel="external" href="http://datatable.r-forge.r-project.org/">data.table</a> package (see the documentation).</p>

<pre><code>install.packages("data.table")
library(data.table)

read.url &lt;- function(url, ...){
  tmpFile &lt;- tempfile()
  download.file(url, destfile = tmpFile, method = "curl")
  url.data &lt;- fread(tmpFile, ...)
  return(url.data)
}

read.url("https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/246663/pmgiftsreceivedaprjun13.csv")
</code></pre>

<p>And the results are:</p>

<table class="table offers table-horizontally-condensed">
  <tr>
    <th>Date received</th>
    <th>From</th>
    <th>Gift</th>
    <th>Value</th>
    <th>Outcome</th>
  </tr>
  <tr>
    <td>May-13</td>
    <td>President of UAE</td>
    <td>Model boat</td>
    <td>Over limit</td>
    <td>Held by Department</td>
  </tr>
  <tr>
    <td>Jun-13</td>
    <td>Tony Pontone, Albemarle</td>
    <td>Gallery Art work</td>
    <td>Over limit</td>
    <td>Held by Department</td>
  </tr>
  <tr>
    <td>Jun-13</td>
    <td>President of the United States</td>
    <td>Jewellery</td>
    <td>Over limit</td>
    <td>Held by Department</td>
  </tr>
  <tr>
    <td>Jun-13</td>
    <td>President of Pakistan</td>
    <td>Rug</td>
    <td>Over limit</td>
    <td>Held by Department</td>
  </tr>
  <tr>
    <td>Jun-13</td>
    <td>President of Kazakhstan</td>
    <td>Medals &amp; stamp album</td>
    <td>Over limit</td>
    <td>Held by Department</td>
  </tr>
</table>

<hr />

<p>A useful trick is to only read a few lines. This makes especially sense when you have a large dataset like the Land Registry&rsquo;s Price Paid Data (several GB in its complete form). </p>

<pre><code>read.csv("http://publicdata.landregistry.gov.uk/market-trend-data/price-paid-data/a/pp-complete.csv", nrow = 10)
</code></pre>

<h3>APIs</h3>

<p>R&rsquo;s community has built wrapper packages for many APIs. For example, the <a rel="external" href="https://github.com/vincentarelbundock/WDI">World Bank Development indicators</a> are available in R. A quick example with Google&rsquo;s Ngram Viewer is below.</p>

<p><strong>What is more popular: line charts or line graphs?</strong>
<img src="https://raw.githubusercontent.com/theodi/R-playground/master/line-chart-graph.png" alt="line" /></p>

<pre><code># Install the package
install.packages(c("ngramr", "ggplot2"))

# Load it into R
library(ngramr)
library(ggplot2)

# Case-insensitive search
lines &lt;- ngrami(c("line chart", "line graph"), year_start = 1913)
ggplot(lines, aes(Year, Frequency, colour = Phrase)) + theme_minimal() + geom_line(lwd = 1)
</code></pre>

<p><a rel="external" href="http://ropensci.org/related/index.html">ROpenSci</a> collected an extensive list of R packages that deal with APIs. It includes Twitter, the Guardian, Amazon Mechanical Turk and many more.</p>

<h2>Scraping</h2>

<p>Scraping is an art in itself and is perhaps best left in the hands of experts such as our friends at <a rel="external" href="https://scraperwiki.com/">ScraperWiki</a>. However, R has support (packages, no surprise here) for popular tools. Worth mentioning is <a rel="external" href="http://cran.r-project.org/web/packages/RCurl/index.html">RCurl</a> and <a rel="external" href="http://cran.r-project.org/web/packages/XML/index.html">XML</a>.</p>

<p><a rel="external" href="http://cos.name/wp-content/uploads/2013/05/Web-Scraping-with-R-XiaoNan.pdf">Xiao Nan</a> made a useful table of the R scraping toolkit.</p>

<p><img src="https://raw.github.com/theodi/R-playground/master/available-R-packages.png" alt="packages" />
<em>Source: Xiao Nan, <a rel="external" href="https://twitter.com/road2stat">@road2stat</a></em></p>

<p>Lastly, I wished that I&rsquo;d have known about parallelisation options earlier&hellip;
For example, <a rel="external" href="http://www.inside-r.org/packages/cran/RCurl/docs/getURIAsynchronous"><code>getURIAsynchronous</code></a> from RCurl. </p>

<p>I also wrote a <a rel="external" href="http://rpubs.com/statshero/opinion-polls">tutorial on how to import a HTML table into R</a>. </p>

<h2>What to do next</h2>

<p>Using a tool like R has another great advantage: unlike manually downloading a file, you can easily re-use and share your work. Having some R code instead of an Excel file means your analysis is reproducible and you may be able to adapt it for future projects or if an updated dataset was released.</p>

<p>If you need help you can find support via <a rel="external" href="http://stackoverflow.com/questions/tagged/r">stackoverflow</a> and the <a rel="external" href="http://www.r-project.org/mail.html">R-help mailing list</a>. If you&rsquo;re looking for data, browse a catalogue (e.g. <a rel="external" href="http://data.gov.uk/data/search">data.gov.uk</a>), use a web search engine or ask me on <a rel="external" href="https://twitter.com/statshero">Twitter</a>.</p>

