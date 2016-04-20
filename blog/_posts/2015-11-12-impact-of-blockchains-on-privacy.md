---
id: http://contentapi.theodi.org/impact-of-blockchains-on-privacy.json
web_url: http://theodi.org/blog/impact-of-blockchains-on-privacy
slug: impact-of-blockchains-on-privacy
title: What is the impact of blockchains on privacy?
format: article
updated_at: '2015-12-02T16:54:35+00:00'
created_at: '2015-11-12T14:29:29+00:00'
tag_ids:
- blog
- blockchain
- odi-labs
- privacy-policy
tags:
- id: http://contentapi.theodi.org/tags/articles/blog.json
  web_url: 
  title: Blog Post
  details:
    description: Blog Post
    short_description: 
    type: article
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?article=blog
    web_url: http://theodi.org/tags/blog
    slug: blog
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/blockchain.json
  web_url: 
  title: blockchain
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=blockchain
    web_url: http://theodi.org/tags/blockchain
    slug: blockchain
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/odi-labs.json
  web_url: 
  title: ODI labs
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=odi-labs
    web_url: http://theodi.org/tags/odi-labs
    slug: odi-labs
  parent: 
- id: http://contentapi.theodi.org/tags/keywords/privacy-policy.json
  web_url: 
  title: privacy policy
  details:
    description: 
    short_description: 
    type: keyword
  content_with_tag:
    id: http://contentapi.theodi.org/with_tag.json?keyword=privacy-policy
    web_url: http://theodi.org/tags/privacy-policy
    slug: privacy-policy
  parent: 
related:
- id: http://contentapi.theodi.org/data-infrastructure-technology-blockchains.json
  web_url: http://theodi.org/blog/data-infrastructure-technology-blockchains
  slug: data-infrastructure-technology-blockchains
  title: 'Data infrastructure technology: are blockchains the answer?'
  format: article
  updated_at: '2015-11-02T15:05:59+00:00'
  created_at: '2015-10-22T00:48:22+01:00'
  tag_ids:
  - blog
  - blockchain
  - infrastructure
  - decentralisation
  - odi-labs
details:
  need_id: 
  business_proposition: false
  description: Data stored in blockchains cannot be changed, which means that personal
    data they contain cannot be removed. Jeni Tennison, the ODI’s Technical Director,
    explains why it’s really important that we design blockchains to protect people’s
    privacy
  excerpt: Data stored in blockchains cannot be changed, which means that personal
    data they contain cannot be removed. Jeni Tennison, the ODI’s Technical Director,
    explains why it’s really important that we design blockchains to protect people’s
    privacy
  language: en
  need_extended_font: false
  url: ''
  content: |+
    <p><em>Data stored in blockchains cannot be changed, which means that personal data they contain cannot be removed. Jeni Tennison, the ODI’s Technical Director, explains why it’s really important that we design blockchains to protect people’s privacy</em></p>

    <p>Blockchains are currently getting a lot of attention as a distributed way of storing data. But the irreversibility and transparency of blockchains mean they are probably unsuitable for personal data. We need to be careful when designing blockchains not to infringe on people’s privacy, and to account for a world in which we have doxing, identity theft and the right to be forgotten.</p>

    <p>The examples in this post aren’t necessarily here because anyone has suggested providing these kinds of data in blockchains. But blockchains are being investigated for a range of purposes and we need to explore their limits.</p>

    <h3>Blockchain basics</h3>
    <p>A blockchain stores a series of <strong>transactions</strong>, which can be data of any sort, in <strong>blocks</strong>, which get added to a blockchain one after the other. I’ve <a rel="external" href="http://www.jenitennison.com/2015/05/21/blockchain.html">written elsewhere</a> about the technical details on how this works.</p>

    <p>Blockchains are what’s known as an <strong>append-only data store</strong>. That means you can only add data to the store, you can’t take it away. They are also <strong>distributed</strong>: blockchains are maintained by a peer network of <strong>nodes</strong> in which every node has a copy of the blockchain and has equal authority to add to it. Every node publishes that data for other nodes to pick up and use.</p>

    <p>One of the unique selling points of blockchains is that <strong>once data is embedded in the blockchain it cannot be altered</strong> without that change being detected and rejected by the other nodes in the network. This is useful for data that people need to trust because it provides a guarantee that the data in the blockchain hasn’t been changed since it was put there.</p>

    <h3>What irreversibility means for privacy</h3>
    <p>There are types of data, particularly personal data, where the inability to remove data retroactively could lead to problems.</p>

    <p>For example, in the UK, personal insolvency notices are published in the <a rel="external" href="https://www.thegazette.co.uk/">London Gazette</a> when people are declared bankrupt. They are published in paper copies of the Gazette (which are relatively hard to get hold of or search) and published on the web. There are times when there are requests for notices to be removed from the website to avoid them being as easy to find, such as:</p>

    <ol>
      <li>People don&rsquo;t want their personal insolvency to be known about (they feel they have a <a rel="external" href="https://en.wikipedia.org/wiki/Right_to_be_forgotten">right for that event to be forgotten</a>)</li>
      <li>People have made a transition to a new gender; they may have a <a rel="external" href="https://en.wikipedia.org/wiki/Legal_aspects_of_transgenderism">legal right</a> for previous data to be altered to ensure it&rsquo;s interpreted according to their new gender</li>
      <li>The notice includes the current address of a person who is attempting to avoid an abuser, and thus the notice increases the risk of discovery and harm to that individual</li>
    </ol>

    <p>It’s easy to imagine other scenarios where blockchains could be used to hold data about people that might seem innocuous at the time but where the situation changes such that data should no longer be held in the same way. For example, <a rel="external" href="http://www.legislation.gov.uk/uksi/2015/1694/contents/made">a recent change in UK law</a> means that company directors&rsquo; birth dates are no longer published by Companies House. Data about people applying for planning applications, holders of licences and those in public office is routinely published and could change in similar ways.</p>

    <p>And this is just data held by government. Blockchains offer a great opportunity for people to come together to collaboratively create datasets in a peer network without a central authority. We can see the evidence of the demand for data <a rel="external" href="http://uk.ratemyteachers.com/">rating teachers</a>, about <a rel="external" href="http://www.tenantlandlordratings.com/">landlords</a>, about where <a rel="external" href="https://www.fbi.gov/scams-safety/registry">sexual offenders live</a>, which come with their own <a rel="external" href="http://www.slate.com/articles/news_and_politics/crime/2015/04/california_s_sane_new_approach_to_sex_offenders_and_why_no_one_is_following.html">limitations and impacts</a>.</p>

    <p>There is an argument that we have a situation even now where once data is published on the web, it can never truly be removed. Certainly removing a page from Google’s search results under a right to be forgotten doesn’t remove actually it from the web, it just makes it harder to find. What is different with blockchain is that if a court were to attempt to legally compel the removal of data from a blockchain, it would be both hard to do and have very disruptive side-effects. Let me explain why.</p>

    <p><strong>Removing data from a blockchain</strong></p>

    <p>Say a blockchain were found to contain the names and addresses of at-risk children (I deliberately pick something most people would say should not be available). To clear that data out, over half the nodes would have to work together to rebuild the blockchain from before that data was added. This process is similar to rebuilding from a backup: while it was being rebuilt, the blockchain would be rewound to a previous state, days or weeks or even more out of date; during this time (and rebuilding blockchains deliberately takes time), the data would not be up to date. This might also be a time when unwanted changes to data that was trustworthy could creep in.</p>

    <p>Alternatively, a court could try to compel the entire set of nodes to be shut down. Putting aside that nodes may reside in different legal jurisdictions, that would have huge practical implications. It would mean removing all the rest of the data held in the blockchain as well as the target of the order. Given the use of blockchains that people envisage often involves the same blockchain holding many types of data and supporting many types of applications, there is a real risk that, pragmatically, bad data simply has to continue to exist in order to prevent massive disruption to the provision of good data for other applications.</p>

    <h3>What transparency means for privacy</h3>
    <p>When new data is added to a blockchain, peers in the network check the data to ensure that it is valid to add it, to avoid fraud by rogue nodes. The data that the peers need to check needs to be stored transparently in the blockchain. </p>

    <p>Sometimes personal data is required in order to verify that a transaction in the blockchain is valid. Bitcoin itself is an example of this. For a node to check a bitcoin transaction, it must have access to all previous transactions and be able to check that the person giving the bitcoins actually has them to give. It must therefore be possible for any node to reconstruct the full financial history of every person exchanging bitcoins: how many bitcoins they have, where they got those bitcoins from, whom they spend their bitcoins with.</p>

    <p>This is intensely personal information, highly revealing of the details of someone&rsquo;s life. The only shield is the pseudoanonymity of the bitcoin address, which is easily breached if the address is associated with a donate button on a blog. Those who trade bitcoins are therefore <a rel="external" href="https://bitcoin.org/en/protect-your-privacy">advised to hold several bitcoin addresses</a> and not to transfer bitcoins between those accounts to avoid others linking them together. It’s not clear how many bitcoin holders are aware of this risk.</p>

    <p>Some of the proposed uses for blockchain, such as to record auditable benefits payments, threaten to expose this kind of information about a much wider range of people: the benefits they receive and with whom they spend them.</p>

    <p>Blockchains do not have to expose personal data directly to reveal private information about people. A blockchain recording visits to health practitioners (including midwives, mental health teams, AIDS clinics) does not need to include the entirety of someone’s health records to reveal information about them. Much like <a rel="external" href="http://webpolicy.org/2014/03/12/metaphone-the-sensitivity-of-telephone-metadata/">phone records</a> or browsing histories, this metadata may be sufficient to reveal personal details.</p>

    <h3>Designing privacy-protecting blockchains</h3>
    <p>There are ways to design the content of blockchains and the network that supports them that limit the level of disclosure that they entail.</p>

    <p>First, whereas anyone can join the Bitcoin blockchain, it is possible to use blockchains as a method of resolving conflicts within a peer-to-peer network of trusted nodes. When nodes can be trusted, they can control what becomes public, and therefore hide data in the blockchain that should not be shared. The security of all the nodes in such a trusted network needs to be guaranteed as every node will have a copy of all the relevant data, and the network needs to be protected against spoofing, but in general if you have a trusted network many privacy issues are no more problematic than they are in centralised systems.</p>

    <p>Second, blockchains could be used purely to provide a timestamp for information held elsewhere. Content that could require redactions in the future can be made available as usual on the web, with transactions in the blockchain containing simply a pointer to the content and its hash. If the content needs to be taken down, the fact that the content existed at a given point in time could remain in the blockchain; the stored hash alone would not enable the reconstruction of the removed content. If the content needs to be changed, the existing hash would no longer match the content, so applications are able to detect that something has changed. If the changes are legitimate, the reasons for them could be stored in a later, overriding, transaction.</p>

    <p>This pattern of using blockchains purely as a timestamping mechanism and not as a data store has the additional benefit of being more likely to scale in the face of large amounts of data needing to be recorded. On the other hand, it shifts the burden of robust, distributed data storage, which is one aspect of the interest in blockchain, to other protocols, whether the web or <a rel="external" href="https://en.wikipedia.org/wiki/BitTorrent">BitTorrent</a> or <a rel="external" href="http://ipfs.io/">IPFS</a>. Projects that are focused on robust distributed storage might not need a blockchain at all.</p>

    <p>Finally, it’s possible to encrypt data stored within the blockchain. The main problem with this approach is that if the decryption key for encrypted data is ever made public, the encrypted content is readable by anyone with that key; there is no way of encrypting the data with a different key once it is embedded within the blockchain. Conversely, if the key is ever lost, the data cannot be read. And there’s the problem of sharing the key for the data amongst all those who legitimately need to be able to read it.</p>

    <p>Regardless of the approach taken to designing blockchains, every blockchain contains transaction data. That data needs to be designed so that it isn’t disclosive in and of itself, which may be a tricky balance as that data might also be necessary to assess whether the transaction is valid and therefore prevent fraud or errors. Transactions should also be designed so that they can’t be used to add comments that might include personal data.</p>

    <p>Blockchains aren’t necessarily bad for privacy; it all depends on how they are designed. Anyone experimenting in the area should be thinking through the implications. As the ICO’s guidance around <a rel="external" href="https://ico.org.uk/for-organisations/guide-to-data-protection/privacy-by-design/">privacy by design</a> suggests, designers should be carrying out a privacy impact assessment or similar process up front, to ensure that the transparency of the information stored in the blockchain does not infringe on people&rsquo;s privacy. Unlike with other technologies, getting it wrong is really hard to reverse.</p>

    <p><strong><em>What do you think are the best practices for designing privacy-respecting blockchains? Do you have examples?</em></strong></p>

    <p><em><strong>This post was supported by Deutsche Bank and is part of ODI Labs’ work on data infrastructure. If you’re interested in supporting our R&amp;D work on data infrastructure and blockchains, email <a href="&#109;&#097;&#105;&#108;&#116;&#111;:&#108;&#097;&#098;&#115;&#064;&#116;&#104;&#101;&#111;&#100;&#105;&#046;&#111;&#114;&#103;" title="labs@theodi.org">&#108;&#097;&#098;&#115;&#064;&#116;&#104;&#101;&#111;&#100;&#105;&#046;&#111;&#114;&#103;</a>.</strong></em> </p>

  media_enquiries_name: ''
  media_enquiries_email: ''
  media_enquiries_telephone: ''
  alternative_title: What is the impact of blockchains on privacy?
  organizations: []
  author:
    name: Jeni Tennison
    slug: jeni-tennison
    web_url: http://theodi.org/team/jeni-tennison
    tag_ids:
    - team
    - team
    - strategy-programme
    - staff
  nodes: []
author:
  name: Jeni Tennison
  slug: jeni-tennison
  web_url: http://theodi.org/team/jeni-tennison
  tag_ids:
  - team
  - team
  - strategy-programme
  - staff
nodes: []
organizations: []
related_external_links: []
---