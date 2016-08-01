---
author:
  name: Leigh Dodds
  slug: leigh-dodds
description: ''
---

<p>As part of my work exploring <a rel="external" href="http://theodi.org/blog/exploring-compatibility-between-data-licences">compatibility between open data licences</a>, I recently began looking at licences for government and public sector data. I was a little surprised to discover quite how many different licences and licence variants have been created.</p>

<h2>UK Open Government Licences</h2>

<p>The UK Open Government Licence (UK-OGL) is now used to support the publication of the majority of public sector open data in the UK. Based on feedback from the community, the original version of the licence (<a rel="external" href="http://www.nationalarchives.gov.uk/doc/open-government-licence/version/1/">UK-OGL-1.0</a>) has been updated to version 2 (<a rel="external" href="http://www.nationalarchives.gov.uk/doc/open-government-licence/version/2/">UK-OGL-2.0</a>) which, among other improvements, clarifies its compatibility with the Creative Commons Attribution licence.</p>

<p>But not all public sector data in the UK uses this licence. The Ordnance Survey have their own <a rel="external" href="https://www.ordnancesurvey.co.uk/docs/licences/os-opendata-licence.pdf">OS Open Data Licence</a> that is derived from the Open Government Licence. Originally based on version 1, it was recently updated to version 2. The licence adds some guidance on attribution and a clause on sub-licensing. But it is <a rel="external" href="http://lists.okfn.org/pipermail/od-discuss/2013-July/000549.html">unclear what this clause actually covers</a>.</p>

<p>Natural England also use variants of both the Open Government and OS Open Data Licences. Their simplest licence, <a rel="external" href="http://www.naturalengland.org.uk/Images/open-government-licence-NE_tcm6-30744.pdf">NE-OGL</a> is based on UK-OGL Version 1 but adds an attribution statement. Other versions of their licences, <a rel="external" href="http://www.naturalengland.org.uk/Images/licence-ne-os-lnr_tcm6-33088.pdf">NE-OS</a> and <a rel="external" href="http://www.naturalengland.org.uk/Images/open-government-licence-NE-OS_tcm6-30743.pdf">NE-OS-LNR</a> are variations of the first version of the OS Open Data licence. They both have slightly different attribution statements and the same sub-licensing clause.</p>

<p><strong>Note: a previous version of this post wrongly suggested that the Natural England licences were versions of the same licence, when in fact they are different licences used for different types of datasets. See comments for discussion.</strong></p>

<p>Data publishers have also created other &ldquo;anonymous&rdquo; copies of the UK-OGL by copying the text of the licence to the terms and conditions page of their website. See, for example, <a rel="external" href="http://tunbridgewellsmuseum.info/default.aspx?page=4370">Tunbridge Wells Borough Council</a> and the <a rel="external" href="http://www.hscic.gov.uk/terms-and-conditions">Health &amp; Social Care Information Centre</a> (HSCIC). In both cases those pages include a full copy of the text of UK-OGL Version 1, although you&rsquo;d have to read through it in detail to confirm that. In fact the HSCIC have modified the licence to include their own attribution statement. </p>

<p>To add a little more confusion, the references to the original copy of the licence on those pages use a URL that automatically redirects to the latest version of UK-OGL (Version 2), not the version they&rsquo;ve chosen to apply (Version 1). It would have been more useful to have simply linked to the original licence text.</p>

<h2>Canadian Open Government Licences</h2>

<p>The UK Open Government Licence has also been used as a basis for creating licences in other jurisdictions, most notably in Canada. Unfortunately this has lead to the creation of yet more variants. </p>

<p>The <a rel="external" href="http://clipol.org/">CIPPIC Licensing Information Project for Open Licences</a> has some great tools for exploring open licences, including tools for visualising relationships between licences and comparing their text. </p>

<p>For example, here is a diagram that shows <a rel="external" href="http://clipol.org/licences/94?tab=licence_comparison">some of the family of licences derived from the UK-OGL</a>. Some of these are derived from Version 1 whilst others are derived from Version 2. </p>

<p>Canada also has a whole other family of licences used in various city data portals. The &ldquo;<a rel="external" href="http://clipol.org/licences/16?tab=licence_comparison">G4 Canada family</a>&rdquo; consists of a number of variants of a core licence originally created by Vancouver.</p>

<p>A <a rel="external" href="http://blog.opennorth.ca/2012/09/19/lessons-from-represent-licenses/">review of the creation and spread of the G4 licenses</a> suggests that some cities are moving towards adopting variants of the UK-OGL.</p>

<p>For example <a rel="external" href="https://www1.toronto.ca/wps/portal/contentonly?vgnextoid=4a37e03bb8d1e310VgnVCM10000071d60f89RCRD0">the Toronto licence</a> is a variant of the Ontario licence, but notes that:</p>

<blockquote>
  <p>The only substantive changes in this licence are to replace direct references to the Province of Ontario with the City of Toronto and the inclusion of a provision for the Ontario Personal Health Information Protection Act, 2004.</p>
</blockquote>

<p>The <a rel="external" href="http://www.countygp.ab.ca/EN/main/community/maps-gis/open-data/open-data-licence.html">County of Grande Prairie license</a> explains that:</p>

<blockquote>
  <p>The only substantive changes in this licence are to replace direct references to the Province of Alberta with the County of Grande Prairie.</p>
</blockquote>

<p>Creating a new licence simply to add some branding seems entirely unnecessary. Updating a licence to include references to local legislation may be reasonable, but is still arguably unnecessary: regardless of the licence text you still need to conform to local laws, e.g. on data protection. An open data licence can&rsquo;t give you a pass to ignore relevant legislation. It&rsquo;s debatable whether the best place to include references to such legislation is in the licence text or in supporting documentation.</p>

<h1>Curbing License Proliferation</h1>

<p>Clearly there are some repeated patterns here. Standard licences are being forked and possibly modified text is being copied around for various reasons, including:</p>

<ul>
  <li>to replace generic attribution requirements with a specific attribution statement desired by the publisher</li>
  <li>to localise the licence to refer to local legislation</li>
  <li>to add branding, e.g. logos and names of cities or jurisdictions</li>
</ul>

<p>This is all adding largely unnecessary overhead for data consumers who need to understand whether any of these changes are relevant, often by reviewing the licence text. Licence proliferation adds complexity for re-users, especially if <a rel="external" href="https://github.com/theodi/open-data-licensing/blob/master/guides/licence-compatibility.md">licences may be incompatible</a>. </p>

<p>Open source software also suffers from a proliferation of licences, but these tend to be completely independent licences. There&rsquo;s a danger that the open data community might end up in a worse situation with dozens of slightly different licences based on slightly different versions of a few core licences. </p>

<p>Needless proliferation doesn&rsquo;t help anyone. Now would be a good time for the community to provide feedback to publishers to try and curb further proliferation. It would be far better if data publishers were to:</p>

<ol>
  <li><strong>provide a clear stable link to a standard (country-level) licence</strong>, not complete copies of licences</li>
  <li>clearly <strong>indicate which version of a licence they are using</strong>, or note that they are intentionally tracking the latest version</li>
  <li><strong>supplement links with guidance on the context for data re-use</strong>, specifically their preferred attribution statement and pointers to relevant legislation</li>
</ol>

<p>The ODI has already published some guidance for publishers on <a rel="external" href="https://github.com/theodi/open-data-licensing/blob/master/guides/publisher-guide.md">how to publish rights statements in a clear, machine-readable format</a>. </p>

<p>If a custom licence is deemed to be necessary then this should have:</p>

<ol>
  <li>a stable URL for each version of the licence, and a pointer to the latest version of the document</li>
  <li>a clear indication of the version of the document, e.g. a version number or publication date, in the body of the licence</li>
  <li>a statement about compatibility of the licence with common standard licences</li>
</ol>

<p>Obviously, custom licences should conform to the <a rel="external" href="http://opendefinition.org/okd/">open definition</a> and ideally be passed through the <a rel="external" href="http://opendefinition.org/licenses/process/">licence approval process</a>.</p>

<p>The above recommendations would help stop some of the anti-patterns that are leading to licence proliferation and help the community clearly understand how data can be re-used.</p>
