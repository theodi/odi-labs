---
author:
  name: 
  slug: 
description: 
---

<p>In a <a href="/blog/what-is-data-science-really">previous blog post</a> I offered up two interpretations of the term &lsquo;data science&rsquo;. These amounted to 1) &lsquo;the science of data&rsquo; and 2) &lsquo;doing science with data&rsquo;. If you read the earlier post you&rsquo;ll probably detect my mild irritation with the term when coupled with the second of these interpretations. Perhaps it&rsquo;s the redundancy, or maybe the implication that plain &lsquo;science&rsquo; is somehow devoid of data. It may be both.</p>

<p>However, irritation aside, there is no doubt that the commoditisation of high performance/distributed computing and data analysis tools are creating new avenues for scientific enquiry where data volumes may previously have been a barrier. Couple this with the increasing wealth and volume of open data available to researchers and we have unprecedented opportunities to &lsquo;do science with data&rsquo;.</p>

<p>Wind this scenario forward a few steps though and we hit some interesting questions:</p>

<ul>
  <li>What are the implications of &lsquo;doing science&rsquo; with open data?  </li>
  <li>What changes are required in how we approach scientific methods and findings based on open data?</li>
</ul>

<p>In a nutshell, when Open Data is your raw material, the essence of data science fundamentally changes. In the remainder of this post I will explore how the operating context fundamentally shapes the nature of your data science.</p>

<p>Let&rsquo;s start with a scenario involving the fictional characters Darius and Diana. Darius works for AnyOrg, a large organisation brimming with data. The specific commercial activities of AnyOrg are not really important beyond the fact that it generates and exploits large volumes of its own data in the course of everyday business; it could be a drug company, an online retailer, or a political campaign team.</p>

<p>In his role as data scientist at AnyOrg, Darius designs experimental protocols that allow him to test hypotheses pertinent to the objectives of the organisation. Central to these protocols is the collection of data at source: this may be in the lab, from A/B testing on e-commerce sites, or from polls of voters. Being rather forward-thinking, the AnyOrg management has decided to publish a number of its data assets as open data, including the results of many of Darius&rsquo; experiments &ndash; they understand that this can generate novel insights and value for the organisation by allowing an ecosystem to develop around the data.</p>

<p>Diana is also a data scientist. She has an existing research programme that&rsquo;s producing interesting results, but the data from AnyOrg could enable something truly groundbreaking. Diana reformulates her research plan to include additional analyses based on data from her own experiments mixed with open data from AnyOrg. And here&rsquo;s the rub. What guarantees does Diana have about the quality of the data from AnyOrg? None whatsoever.</p>

<p>If the data released was something simple like a product database then the issue is less acute, though Diana would be sensible to ask what guarantees were available about the comprehensiveness of the data set and the accuracy of product descriptions it might contain. Does that resolve the problem? No way.</p>

<p>Consider an alternative scenario where the data from AnyOrg is based on any kind of experimentation or analysis. What guarantees does Diana have about the quality of Darius&rsquo; experimental protocols? What hypotheses were being tested? Are these fully documented? Which sampling methods did he use? Is the result representative of the broader population about which claims are being made? Were the code or queries used to collect the data rigorously tested? Where the data includes summary statistics, were these accurately computed?</p>

<p>Whatever the answer to these questions, if Diana is looking to publish her findings in a peer-reviewed conference or journal she needs to be able to convince the reviewers that her methodology and analysis are robust, and that extends to the data she depends on that was collected elsewhere.</p>

<p>So what does this mean for doing data science with open data? Well firstly, the challenges are actually not unique to an open data context, it just brings them more sharply into focus. If Darius has a colleague who wants to base further analysis on his data there is at least a chance of her walking down the corridor or sending an email and asking Darius questions about the protocol he used. In a world of open data this kind of exchange may still happen, but there are fewer guarantees that it actually could. Where does this leave us?</p>

<p>In a way nothing has changed. It is still paramount that we, as scientists, are realistic about the claims we make based on the results of our research. Now more than ever, in a potential world of more connected research, we need to scrutinise the work of others and along more dimensions. This is bread and butter stuff for scientists, but it requires full disclosure of the process, which in some disciplines is nowhere near as commonplace as it should be.</p>

<p>Fortunately there is extensive ongoing work exploring publication of scientific data under open licenses. These efforts should yield new technical standards that enable scientists to express the finer points of their experimental protocols in a way that both fosters reuse of the data and satisfies the rigour of the peer review process. We are also seeing early signs that journals are willing to accept a broader definition of the term &lsquo;publication&rsquo;, stretching from traditional research papers to well-documented, reusable data sets. This in turn provides an incentive for scientists to fully document and openly publish their data.</p>

<p>All of these factors point to a world of previously unforeseen potential, where open data enables a wealth of novel data analysis without requiring us to comprise our scientific principles.</p>
