---
author:
  name: James Smith
  slug: james-smith
description: How do we make sure data infrastructure is always available, and always
  trustworthy? Are blockchains the answer?
---

<p><em>How do we make sure data infrastructure is always available, and always trustworthy? Are blockchains the answer?</em></p>

<p>We believe that <a rel="external" href="http://theodi.org/who-owns-our-data-infrastructure">data infrastructure</a> is fundamental to our future. What we normally mean by this is &ldquo;data as infrastructure&rdquo; – data is becoming part of the infrastructure of society. In <a rel="external" href="http://theodi.org/labs">ODI Labs</a>, we have a slightly different take on the issue: if data is to be infrastructure for society, what does that mean about the technology underlying the &ldquo;infrastructure for data&rdquo;?</p>

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/28/f9/5628f98e1f986a081e000021/data_infra_1.jpg" alt="null" class="img" id="attachment-5628f98ed0d4627a5b000042" /></p>

<p><i><small>Photo source: <a href="https://www.flickr.com/photos/rh2ox/9990016123/" title=" r2hox ">Flickr -
r2hox (CC BY-SA 2.0)
</a></small></i></p>

<p>If data is becoming essential to society, then it must be:</p>

<ul>
  <li>resilient – always available when needed, with access able to route around damage. It can&rsquo;t drop offline because of a datacentre outage, or a forgotten domain renewal.</li>
  <li>robust – data must be verifiable and reliable, resistant to tampering. The concepts of <a rel="external" href="https://thehackernews.com/2014/05/microsoft-security-essential-found.html">maldata</a> and data spam aren&rsquo;t in wide circulation yet, but at some point they will be.</li>
  <li>scalable – having vital data hosted on a single server will not scale up when that dataset is suddenly in high demand.</li>
</ul>

<p>A new class of technologies is appearing that cope with many of these problems. In particular, distributed data storage – where the data doesn&rsquo;t reside in one place but across the network itself – is on the rise. And a lot of people are talking about one specific implementation of that idea: blockchains.</p>

<p>By the way, if you don&rsquo;t know what I&rsquo;m talking about, blockchains are basically a way of storing information (transactions, in the case of Bitcoin) in a distributed fashion across the Internet without needing a trusted central server. This <a rel="external" href="http://www.bbc.co.uk/news/technology-33090285">quick primer from the BBC</a> is a good introduction to the idea.</p>

<p>There is a lot of hype about &ldquo;putting things into the blockchain&rdquo; at the moment. While the technology is fascinating and has huge potential, there are a few things we need to be aware of.</p>

<h2>A blockchain, or THE blockchain?</h2>

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/28/fd/5628fd8b1f986a081e000025/data_infra_4.jpg" alt="null" class="img" id="attachment-5628fd8bd0d4627a5b000044" /></p>

<p><i><small>Photo source: <a href="https://www.flickr.com/photos/rh2ox/9990024683/in/photostream/" title=" r2hox ">Flickr -
r2hox (CC BY-SA 2.0)
</a></small></i></p>

<p>There’s a confusing tendency for people to talk about THE blockchain, as opposed to A blockchain, and that implies Bitcoin. Storing data in the Bitcoin blockchain is possible, and has been done <a rel="external" href="http://www.righto.com/2014/02/ascii-bernanke-wikileaks-photographs.html">since day one</a>, but it isn&rsquo;t really advisable.</p>

<p>So, instead of using the Bitcoin blockchain, most blockchain data storage systems are using their own chains – for instance, <a rel="external" href="https://namecoin.info/">Namecoin</a>, <a rel="external" href="https://ethereum.org/">Ethereum</a>, and <a rel="external" href="http://factom.org/">Factom</a> (who are putting <a rel="external" href="http://siliconangle.com/blog/2015/05/17/honduras-to-use-bitcoin-blockchain-tech-to-run-its-land-registry/">Honduras’ Land Registry</a> into a blockchain). </p>

<p>However, all of these still have a cryptocurrency involved. The work to verify the blockchain is done by many people, and they need to be paid for the compute time they contribute. Therefore, these systems all have their own currencies internally, like “Ether” or “Factoids”.</p>

<p>Is it realistic to run a distributed data store based on a pseudocurrency model? Does the very concept of financial return introduce the <a rel="external" href="https://hbr.org/2009/03/when-economic-incentives-backfire">wrong incentives</a> into the system? At the end of the day, <strong>who pays</strong> to maintain an effective yet radically distributed system?</p>

<h2>Immutability</h2>

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/28/fb/5628fb551f986a081e000023/data_infra_2.jpg" alt="null" class="img" id="attachment-5628fb54d0d4627a5b000043" /></p>

<p><i><small>Photo source: <a href="https://www.flickr.com/photos/rh2ox/9989876925/" title=" r2hox ">Flickr -
r2hox (CC BY-SA 2.0)
</a></small></i></p>

<p>Blockchains are designed to be immutable, to have data written into them and be available forevermore. Technically, that seems a desirable quality as it means you can&rsquo;t go back and rewrite history: nobody can deny that a transaction took place, even if it was revoked later on.</p>

<blockquote>
  <p>A digital register may supersede or expire your permission to do something, but it shouldn’t be able to later refute that permission was ever issued to you. <a rel="external" href="https://gds.blog.gov.uk/2015/09/01/registers-authoritative-lists-you-can-trust/">Paul Downey</a></p>
</blockquote>

<p>However, technology, meet society. In the sphere of human life, immutability can be a major problem.</p>

<p>What about the recent <a rel="external" href="https://en.wikipedia.org/wiki/Right_to_be_forgotten">EU right to be forgotten</a> ruling? What&rsquo;s your legal recourse when the data you want removed from public view is stored in an immutable data store? Is there any truly immutable data?</p>

<p>Here&rsquo;s an example: in the UK, if you change your gender, you of course have the right to have your new gender reflected in all official records. That, though, includes rewriting history and backdating your new gender, so that the gender you were assigned at birth doesn&rsquo;t appear even in old records. If, say, your driving licence is stored in a blockchain, the old version can&rsquo;t be modified. It can be revoked and replaced with an updated one, but the original record is still there.</p>

<p>Sure, you could solve those problems by storing only pointers to data in a blockchain, and having the data somewhere else, somewhere mutable, but then you&rsquo;ve lost the resilience aspect of the technology; the data is still centralised, even though the index is distributed. </p>

<p>How then, do we design data storage in blockchains so that immutability is limited to the things that need to be immutable?</p>

<h2>Beyond blockchains</h2>

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/29/00/56290077d0d46207c8000031/data_infra_5.jpg" alt="null" class="img" id="attachment-5628fea5d0d4627a5b000045" /></p>

<p><i><small>Photo source: <a href="https://www.flickr.com/photos/rh2ox/9989872634/in/photostream/" title=" r2hox ">Flickr -
r2hox (CC BY-SA 2.0)
</a></small></i></p>

<p>Nowadays, when most people say &ldquo;blockchain&rdquo;, and even when I say it myself, I treat it as a shorthand for &ldquo;undefined radically distributed storage technology&rdquo;. There are many other options out there, from the non-bitcoin blockchains like <a rel="external" href="https://ethereum.org/">Ethereum</a> and <a rel="external" href="http://maidsafe.net/">MaidSafe</a>, to other systems like <a rel="external" href="https://en.wikipedia.org/wiki/Tahoe-LAFS">Tahoe-LAFS</a>, and even older technologies like BitTorrent. (For great in-depth discussion of these and many others, watch the <a rel="external" href="http://redecentralize.org/interviews/">Redecentralize interviews</a>).</p>

<p>Make no mistake, there is huge (and radical) potential in this technology area for data, and for society as a whole, but we need to understand how these technologies are best applied.</p>

<h3>Standards</h3>

<p>And whether it&rsquo;s blockchains or something else, there are plenty of questions. How do we standardise storage in such a system so that we get a single network of data, as opposed to having to use a different storage system every time we want a new type of information? What are the data protocols for distributed storage? How do we talk about, and perhaps enforce, ownership and licensing?</p>

<h2>What are we doing?</h2>

<p>We are exploring the potential applications of these technologies in the context of data infrastructure. This applies at different scales: global, national and city data infrastructure. It also applies across sectors: finance, agriculture, nutrition and global development. </p>

<p>ODI Labs are exploring these issues and, as with everything we do at the ODI, we will be collaborating with our network of <a rel="external" href="http://theodi.org/membership">Partners</a>, <a rel="external" href="http://theodi.org/membership">Supporters</a>, <a rel="external" href="http://theodi.org/nodes">Nodes</a>, and <a rel="external" href="http://theodi.org/startups">Startups</a>. If you would like to get involved in collaboration, and sponsorship, please <a href="&#109;&#097;&#105;&#108;&#116;&#111;:&#108;&#097;&#098;&#115;&#064;&#116;&#104;&#101;&#111;&#100;&#105;&#046;&#111;&#114;&#103;">get in touch</a>.</p>

<p>We want to experiment with the technologies, work out some of the tricky social questions, and help guide the future of distributed data storage in the right direction.</p>

<hr />

<p><em><a rel="external" href="http://theodi.org/team/james-smith">James Smith</a> is the Head of Labs at the Open Data Institute. You can find him on Twitter as <a rel="external" href="https://twitter.com/floppy">@floppy</a>.</em></p>

<hr />

<p><em>All images feature the artwork of <strong>Ryoji Ikeda</strong>. More information about this artwork can be found <a rel="external" href="http://www.ryojiikeda.com/">here</a>.</em></p>

<p><strong>The Open Data Institute connect, equip and inspire people around the world to innovate with data.</strong></p>

<ul>
  <li><a rel="external" href="http://theodi.org/about-us" title="Who is the ODI?">Who is the ODI?</a></li>
  <li><a rel="external" href="http://theodi.org/newsletters" title="Receive our newsletters">Receive our newsletters</a></li>
  <li><a rel="external" href="http://theodi.org/courses" title="Learn about open data on our courses">Learn about open data on our courses</a></li>
  <li><a rel="external" href="http://theodi.org/membership" title="Become an ODI member">Become an ODI member</a></li>
</ul>
