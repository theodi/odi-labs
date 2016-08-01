---
author:
  name: 
  slug: 
description: 'What follows is a, technical, collection of tips. It assumes you are
  familiar with base R, how to install packages and how to do basic operations. Two
  interactive introductions to R are: DataMind and Code School.'
---

<p>In our latest project, <a rel="external" href="http://smtm.labs.theodi.org"><em>Show me the Money</em></a>, we used close to 14 million rows to analyse regional activity of peer-to-peer lending in the UK. Conventional tools such as Excel fail (limited to 1,048,576 rows), which is sometimes taken as the definition of <em>Big Data</em>. Then again, I recently heard one of the leading experts, <a rel="external" href="http://big-data-book.com/meet-the-authors">Ken Cukier</a>, say: &ldquo;there is no definition of big data&rdquo;. </p>

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/c8/78/55c878641f986a082f000001/R1.jpg" alt="" class="img" id="attachment-55c87863f362be19bc000013" /></p>

<p><i><small>Image: Flickr (CC BY 2.0)-<a href="https://www.flickr.com/photos/nanpalmero/14187836848/">NaN Palmero</a></small></i></p>

<p><strong>What follows is a, technical, collection of tips. It assumes you are familiar with base R, how to install packages and how to do basic operations. Two interactive introductions to R are: <a rel="external" href="http://www.datamind.org/">DataMind</a> and <a rel="external" href="http://www.codeschool.com/courses/try-r">Code School</a>.</strong></p>

<p>In this particular case I managed to load the complete data into RAM for a standard analysis in <a rel="external" href="http://www.r-project.org/">R</a>, i.e. no Hadoop or similar. Here are 11 tips when you deal with <strong>f</strong>–ing <strong>irritating</strong>, <strong>granular data</strong>. This blog post is about <em>Fig Data</em>: data that may not be &rdquo;big&rdquo; but the problems of size are <em>thinly veiled</em>. I won&rsquo;t cover parallel techniques in R, but you can find a starting point with <a rel="external" href="http://r-pbd.org/">programming with big data in R</a> and a <a rel="external" href="http://www.xmind.net/m/LKF2/">mind map</a>. Just because you can load your data into RAM does not guarantee you a smooth workflow. Computers are powerful, but it is easy to reach their limits. The <strong>scale factor</strong>, that is a rough estimates of the potential time you could save, is sometimes <em>up to 1,000</em> or even beyond. A factor of 60 means your code takes 1 minute to run instead of 1 hour.</p>

<h2>The 11 tips</h2>

<ol>
  <li>
    <p><strong>Think in vectors.</strong> This means that for-loops (&ldquo;do this for x times&rdquo;) are generally a bad idea in R. The <a rel="external" href="http://www.burns-stat.com/pages/Tutor/R_inferno.pdf">R Inferno</a> has a chapter on why and how to &ldquo;vectorise&rdquo;. Especially if you&rsquo;re a beginner or come from another programming language for-loops might be tempting. Resist and try to speak R. The <a rel="external" href="http://nsaunders.wordpress.com/2010/08/20/a-brief-introduction-to-apply-in-r/">apply</a> family may be a good starting point, but of course do not avoid loops simply for the sake of avoiding loops.</p>
  </li>
  <li>
    <p><strong>Use the fantastic <a rel="external" href="http://datatable.r-forge.r-project.org/">data.table</a> package.</strong> Its advantage lies in speed and efficiency. Developed by <a rel="external" href="http://stackoverflow.com/users/403310/matthew-dowle">Matthew Dowle</a> it introduces a way of handling data, similar to the data.frame class. In fact, it includes data.frame, but some of the syntax is different. Luckily, the <a rel="external" href="http://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.pdf">documentation</a> (and the <a rel="external" href="http://datatable.r-forge.r-project.org/datatable-faq.pdf">FAQ</a>) are excellent.</p>
  </li>
  <li>
    <p><strong>Read csv-files with the <a rel="external" href="http://www.inside-r.org/packages/cran/data.table/docs/fread">fread</a> function</strong> instead of read.csv (read.table). It is faster in readinga file in table format andgives you feedback on progress. However, it comes with a big warning sign <em>&ldquo;not for production use yet&rdquo;</em>. One trick it uses is to read the first, middle, and last 5 rows to determine column types. Side note: ALL functions that take longer than 5 seconds should have progress bars. Writing your own function? –&gt; <a rel="external" href="http://stat.ethz.ch/R-manual/R-devel/library/utils/html/txtProgressBar.html">txtProgressBar</a>.</p>
  </li>
  <li>
    <p><strong>Parse POSIX dates with the <em>very</em> fastpackage <a rel="external" href="http://rforge.net/fasttime/">fasttime</a>.</strong> Let me say that again:very fast. (Though the dates have to be in a standard format.)</p>
  </li>
  <li>
    <p><strong>Avoid copying data.frames</strong> and <strong>remove,</strong> <code>rm(yourdatacopy)</code>, some in your workflow. You&rsquo;ll figure this out anyway when you run out of space.</p>
  </li>
  <li>
    <p><strong>Merge data.frames with the superior <a rel="external" href="http://stackoverflow.com/questions/15673550/why-is-rbindlist-better-than-rbind">rbindlist</a></strong> – data.table we meet again. As the community knows: &ldquo;<em>rbindlist</em> is an optimized version of <code>do.call(rbind, list(...))</code>, which is known for being slow when using rbind.data.frame.&rdquo;</p>
  </li>
  <li>
    <p><strong>Regular expressions can be slow</strong>, too. On one occassion I found a simpler way and used the <a rel="external" href="http://journal.r-project.org/archive/2010-2/RJournal_2010-2_Wickham.pdf">stringr</a> package instead; it was a lot faster. </p>
  </li>
  <li>
    <p>No R tips collection would be complete with a hat tip to Hadley Wickham. Besides stringr, I point you to <strong><a rel="external" href="https://github.com/hadley/bigvis">bigvis</a>, a package for visualising big data sets</strong>.</p>
  </li>
  <li>
    <p><strong>Use a <em>random sample</em> for your exploratory analysis or to test code</strong>. Here is a code snippet that will give you a convenient <a rel="external" href="https://gist.github.com/statshero/6122484">function</a>: <code>row.sample(yourdata, 1000)</code> will reduce your massive file to a random sample of 1,000 observations.</p>
  </li>
  <li>
    <p>Related to the previous point is <strong>reading only a subset of the data you want to analyse</strong>. <code>read.csv()</code> for example has a <code>nrows</code> option, which only reads the first x number of lines. This is also a good idea of getting your header names. The preferred option, a random sample, is more difficult and probably needs a &lsquo;workaround&rsquo; as described <a rel="external" href="http://stackoverflow.com/questions/15532810/reading-40-gb-csv-file-into-r-using-bigmemory">here</a>.</p>
  </li>
  <li>
    <p><strong>Export your data set directly as gzip.</strong> Writing a compressed csv file is not entirly trivial, but <a rel="external" href="http://blog.revolutionanalytics.com/2009/12/r-tip-save-time-and-space-by-compressing-data-files.html">stackoverflow</a> has the answer. <a rel="external" href="http://blog.revolutionanalytics.com/2009/12/r-tip-save-time-and-space-by-compressing-data-files.html">Revolution Analytics</a> also has some benchmark times for compressions in R.</p>
  </li>
</ol>

<p><strong><a rel="external" href="http://theodi.org/team/ulrich-atz">Ulrich Atz</a> is a Startup Programme Manager at the ODI. Follow <a rel="external" href="https://twitter.com/statshero">@Ulrich Atz</a> on Twitter.</strong></p>

<p><strong>If you have ideas or experience in open data that you’d like to share, <a href="&#109;&#097;&#105;&#108;&#116;&#111;:&#112;&#114;&#111;&#100;&#117;&#099;&#116;&#105;&#111;&#110;&#064;&#116;&#104;&#101;&#111;&#100;&#105;&#046;&#111;&#114;&#103;">pitch us a blog</a> or tweet us at <a rel="external" href="https://twitter.com/odihq">@ODIHQ</a>.</strong></p>

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/c8/79/55c879a9f362be1b10000007/r2.jpg" alt="" class="img" id="attachment-55c879a91f986a07de000002" /></p>

<p><i><small>Image: Flickr (CC BY 2.0)-<a href="https://www.flickr.com/photos/sidelong/8021460657/">David Bleasdale</a></small></i></p>

<p></p>
