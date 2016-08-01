---
author:
  name: Jeni Tennison
  slug: jeni-tennison
description: 
---

<p>The past couple of months have seen two outages in the open data space. Early in September, in the UK, <a rel="external" href="http://data.gov.uk">data.gov.uk</a> <a rel="external" href="https://twitter.com/DataGovUK/status/376434949840056320">suffered a DNS issue</a> that rendered it unavailable at its usual location over the weekend. More recently, in the US, <a rel="external" href="http://techpresident.com/news/24394/shutdown-sets-data-and-api-scramble">data.gov has been temporarily taken offline</a> as part of the <a rel="external" href="http://en.wikipedia.org/wiki/United_States_federal_government_shutdown_of_2013">US government shutdown</a>.</p>

<p>The availability of data catalogs such as these can make data harder to find, but catalogs merely list data hosted elsewhere. The true problems arise when the data itself is no longer accessible. Eric Mill from the <a rel="external" href="http://sunlightfoundation.com">Sunlight Foundation</a> <a rel="external" href="http://sunlightfoundation.com/blog/2013/10/02/government-apis-arent-a-backup-plan/">called for government agencies</a> to:</p>

<blockquote>
  <ul>
    <li><strong>Publish downloadable bulk data</strong> before or concurrently with building an API.</li>
  </ul>
</blockquote>

<blockquote>
  <ul>
    <li>Explicitly <strong>encourage reuse and republishing</strong> of their data. (Considering public reuse of data <a href="">a risk to the public</a> is not recommended.)</li>
  </ul>
</blockquote>

<blockquote>
  <ul>
    <li><strong>Document what data will remain</strong> during a shutdown, and keep this up all the time. Don&rsquo;t wait until the day before (or of) a shutdown.</li>
  </ul>
</blockquote>

<blockquote>
  <ul>
    <li><strong>Link to alternative sources</strong> for their data. Keep these links up during a shutdown.</li>
  </ul>
</blockquote>

<p>The emphasis here, as in <a rel="external" href="http://quoderat.megginson.com/2013/10/01/can-open-data-route-around-damage/">David Megginson&rsquo;s post on routing around the damage</a> is on <strong>replication</strong> of data. This is something that is easy for <em>open</em> data because it (per the <a rel="external" href="http://opendefinition.org/">Open Definition</a>) lowers both legal and technical barriers in republishing data, which is necessary when providing an alternative source.</p>

<p>But how do we make sure that open data <em>does</em> get replicated? There are three approaches that I&rsquo;ve seen suggested:</p>

<ul>
  <li>storing data on <strong>third-party services</strong> rather than government services in the first place — though this leaves data availability contingent on the functioning of that third party rather than government when in general, government funding for services is pretty secure</li>
  <li>relying on <strong>web archives</strong> — depending on their archiving strategy, this may omit recent data, and archives themselves are generally set up to aid <em>future</em> access and so not oriented to being a data backup service</li>
  <li>relying on <strong>citizens and civil society organisations</strong> to take copies and then themselves make available public data — this activity will naturally focus on data that is of most interest to the individuals who take the time to copy it; unless there is organised activity to back up all data, and keep that backup current, this is likely to be patchy</li>
</ul>

<p>So while I think Eric&rsquo;s set of recommendations are correct, I would add fifth:</p>

<ul>
  <li>Proactively <strong>ensure there are alternative sources</strong> for the data.</li>
</ul>

<p>While it seems to have fallen out of favour more recently, it used to be the case that code was routinely mirrored across multiple servers, through bilateral agreements between the organisations hosting that code. Governments and other organisations could enter into similar arrangements with each other, or with specialist mirroring services, as part of their contingency planning for service interruptions.</p>

<p>I would like to see some experimentation with more radical options as well. For example, when there are key datasets that don&rsquo;t change frequently, the distributed nature of <a rel="external" href="http://en.wikipedia.org/wiki/BitTorrent">BitTorrent</a>, which distributes the storage of data through a network, may be a useful alternative to the more standard but centralised HTTP.</p>

<p>Not all data can be easily replicated, which is why as Eric says, publishers should provide bulk downloads and not just APIs. But there are some services where the value of the data comes from its timeliness — for example, how the buses are running, the latest weather forecast, or new legislation. Replication of old data in these cases only helps to ensure historic analyses can be carried out. But most applications that rely on this kind of data will need something <em>current</em>.</p>

<p>Even in the US government shutdown, the <a rel="external" href="http://www.loc.gov/today/pr/2013/13-A07.html">Library of Congress preserved access to some services</a>, namely the legislative sites <a rel="external" href="http://THOMAS.gov">THOMAS.gov</a> and <a rel="external" href="http://beta.congress.gov">beta.congress.gov</a>. The US government has judged these information services as excepted from the general shutdown, as essential to operations as air traffic control.</p>

<p>We should be asking for more data to be recognised as essential in this way, for more guarantees from governments about the availability of data in all circumstances. Only with such guarantees in place can we truly treat government information as infrastructure.</p>
