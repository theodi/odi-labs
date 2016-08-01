---
author:
  name: Stuart Harrison
  slug: stuart-harrison
description: ''
---

<p>At the ODI, you may have noticed that we&rsquo;ve recently launched a <a rel="external" href="http://theodi.org">brand new website</a> (you may be reading this blog post on it now). We&rsquo;re really proud of it, not least because it&rsquo;s based on the fantastic work that <a rel="external" href="https://gds.blog.gov.uk/">Government Digital Service</a> have done on <a rel="external" href="http://gov.uk">gov.uk</a>.</p>

<p>However, it&rsquo;s not just a new website (or even *shudder*, a CMS), it&rsquo;s a platform that can enable multiple websites. As well as powering the ODI website, it has the potential to power many other websites from the same backend, such as the <a rel="external" href="http://project.dapaas.eu">Data as a Platform and Service website</a> (which you may also be reading this blog post on - we can publish to both if we want).</p>

<p>Now, I know this can be done with many commercial and open source CMSs (such as Wordpress for example), but what makes this special is the way the publishing platform is structured. Instead of treating content as web pages to be published as static HTML pages, all content is treated as data.</p>

<p>Before I go on to describe what I mean by this, I&rsquo;ll give you a little tour of our architecture. As I mentioned before, we use the same platform that is used for <a rel="external" href="http://gov.uk">gov.uk</a>, which is effectively four Ruby on Rails apps:</p>

<ul>
  <li><a rel="external" href="https://github.com/theodi/signonotron2">Signonotron</a></li>
  <li><a rel="external" href="https://github.com/theodi/panopticon">Panopticon</a></li>
  <li><a rel="external" href="https://github.com/theodi/publisher">Publisher</a></li>
  <li><a rel="external" href="https://github.com/theodi/content_api">Content API</a></li>
</ul>

<p>Signonotron manages users, Panopticon manages page creation and metadata, Publisher manages the actual content of pages and publication, and content API serves up the content in JSON format, which is then consumed by the frontends.</p>

<p>This is what I mean by treating content as data. If you append <code>.json</code> to this page&rsquo;s URL (or any other page on the site), you&rsquo;ll be redirected to the content API. This isn&rsquo;t just a JSON representation of the content you&rsquo;re reading, we&rsquo;re eating our own dogfood. If you look at the <a rel="external" href="https://github.com/theodi/frontend-www">source code</a> for <a rel="external" href="https://github.com/theodi/dapaas-frontend">both sites</a>, you&rsquo;ll see there&rsquo;s no database behind either.</p>

<p>Because of the way the platform is structured, it&rsquo;s therefore pretty trivial to serve up content to multiple frontends (this was, in fact, one of the main reasons for choosing to fork the GDS code in the first place). We set up a Rails app, templated it (using another GDS project - <a rel="external" href="https://github.com/alphagov/slimmer">Slimmer</a>), and we&rsquo;re good to go. </p>

<p>In fact, after a few tweaks to the core Panopticon and Content API code, the DaPaaS frontend was built in the space of a day - far quicker than having to set up and template a brand new Wordpress or Drupal instance, and much more maintainable.</p>

<p>As our work continues at the ODI, we&rsquo;ll also be building more frontends to aid our work, making the publishing platform more than a Content Management System, it&rsquo;s the beating heart at the core of our organisation.</p>
