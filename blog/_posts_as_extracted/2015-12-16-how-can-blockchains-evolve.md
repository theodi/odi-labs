---
id: http://contentapi.theodi.org/how-can-blockchains-evolve.json
web_url: http://theodi.org/blog/how-can-blockchains-evolve
slug: how-can-blockchains-evolve
title: How can blockchains evolve?
format: article
updated_at: '2015-12-17T13:34:36+00:00'
created_at: '2015-12-16T14:49:01+00:00'
tag_ids:
- blog
- blockchain
- odi-labs
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
related:
- id: http://contentapi.theodi.org/impact-of-blockchains-on-privacy.json
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
  description: "Blockchains are a distributed append-only way of storing data. They
    are reliant on a large network for their maintenance, and can only grow in size.
    Jeni Tennison, the ODI’s Technical Director, looks at scenarios for how blockchains
    might evolve over time\r\n"
  excerpt: Blockchains are a distributed append-only way of storing data. They are
    reliant on a large network for their maintenance, and can only grow in size. Jeni
    Tennison, the ODI’s Technical Director, looks at scenarios for how blockchains
    might evolve over time
  language: en
  need_extended_font: false
  url: ''
  content: |+
    <p><em>Blockchains are a distributed append-only way of storing data. They are reliant on a large network for their maintenance, and can only grow in size. Jeni Tennison, the ODI’s Technical Director, looks at scenarios for how blockchains might evolve over time</em></p>

    <p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/72/b4/5672b4b0d0d46207ef00000f/1300839508-800px___Rectangle_2.jpg" alt="null" class="img text-center" id="attachment-5672b4b0f362be081c000005" /></p>

    <p>Blockchains are emerging from their origins in cryptocurrencies and being explored as a mechanism for storing data of other kinds. We are very early in our understanding of when and how it’s best to use blockchains as a technology. We need to anticipate and plan for what happens when blockchains scale from low levels of use to potential ubiquity for other applications like <a rel="external" href="https://bitcoinmagazine.com/articles/first-blockchain-wedding-2-1412544247">recording marriages</a>, <a rel="external" href="http://cointelegraph.com/news/114280/honduran-govt-to-build-land-registry-initiative-on-bitcoin-blockchain">registering land ownership</a>, <a rel="external" href="http://www.digitalmusicnews.com/2015/10/05/im-imogen-heap-and-this-is-why-im-releasing-my-music-on-blockchain/">ensuring musicians get paid</a>, and <a rel="external" href="http://www.provenance.org/whitepaper">maintaining supply chain provenance</a>.</p>

    <p>Blockchains are maintained by a <strong>distributed network of nodes</strong>: computers that store the blockchain and may add data to it. There are drivers for having a few blockchains that are each maintained by a large number of nodes and for having many blockchains that are each maintained by a small number of nodes. We’ll end up somewhere in the middle. The right number of blockchains will change over time. We have to ensure that it’s possible to adjust: to split blockchains or to merge blockchains as required.</p>

    <h3>What are the drivers for having fewer blockchains?</h3>

    <p>Blockchains are attractive as a data store because they are maintained by a network of nodes, making them robust and tamper-proof. <strong>Robustness</strong> ensures that the data is always available. A blockchain being <strong>tamper-proof</strong> guarantees data integrity; even if some nodes are compromised, the other nodes won’t accept changes they make to the blockchain. </p>

    <p>These important characteristics arise when a blockchain is maintained by a large network of nodes. A blockchain that is maintained by a single node could be struck by a hardware failure, or could rewind and rewrite the blockchain it is maintaining without detection.</p>

    <p>Blockchains that are only maintained by small numbers of nodes can get into situations where the majority of the network is owned by a single organisation. This happened with the <a rel="external" href="http://www.dailymail.co.uk/sciencetech/article-2659862/Bitcoin-faces-biggest-threat-miner-takeover.html">GHash bitcoin mining pool in 2014</a>, and was the reason behind <a rel="external" href="http://blog.onename.com/namecoin-to-bitcoin/">Onename’s recent migration from Namecoin to the bitcoin blockchain</a>. When more than half a blockchain is owned by a single organisation, it is possible that they can collaborate to alter the content of the blockchain or to accept invalid transactions.</p>

    <p>The fact that small networks of nodes undermine the utility of a blockchain is a driver towards having a few, large-scale blockchains maintained by many nodes.</p>

    <h3>What are the drivers for having more blockchains?</h3>

    <p>The size of a blockchain grows over time because it is an <strong>append-only data store</strong>: you can add data to a blockchain, but you can never remove it.</p>

    <p>The bitcoin blockchain is currently about <a rel="external" href="https://blockchain.info/charts/blocks-size">49GB in size</a>. It&rsquo;s been growing steadily by about 2.5GB/month (though that rate is increasing). With a limit of 1MB/block and 1 block every 10 minutes, the maximum rate of increase in size will be just over 4GB/month.</p>

    <p>The bitcoin blockchain is relatively small as bitcoin transactions take up very little data. Other applications for blockchains may require more storage, or a speedier rate of growth (larger blocks and/or more frequent blocks).</p>

    <p>Every node in a blockchain network needs to be able to store and process the entirety of the blockchain. Blockchains that are used by lots of applications will be large in size. The vast majority of data within a blockchain supporting multiple applications will be irrelevant to the application any particular node is interested in. Some nodes might only be interested in the land registry data, some only in statements of copyright ownership.</p>

    <p>Large blockchains require nodes that are interested in a given application to take on all the data from other applications using the blockchain. They might hesitate not only because of size but due to ethical concerns about the data those blockchains contain. These are drivers towards having more, smaller and more specialised blockchains.</p>

    <h3>How does it change over time?</h3>

    <p>Blockchain applications need to be able to migrate from blockchain to blockchain without interruption of service. What patterns make this possible? For example, it would be useful for a transaction in one blockchain to be able to point to a transaction in another blockchain, either as a precursor or an original. How can transactions within another blockchain be addressed and pointed at? What does a URL for a transaction look like?</p>

    <p>What happens to blockchains when they come to the end of their life? Like other internet phenomena, blockchains should be automatically archived for posterity. Is this a role that the <a rel="external" href="https://archive.org/">Internet Archive</a> should be taking on, or is there another institution that can provide this service? How can blockchains be discovered to enable this to happen automatically?</p>

    <p>While we are at early stages of the use of blockchains, we are already encountering some of these challenges. We have to start working through the implications now to avoid them becoming big problems in the future.</p>

    <p><strong><em>How do you see the blockchain ecosystem evolving? What are the challenges you see coming down the line? What are the solutions people are already working on? Tell us what you think in comments below or by emailing labs@theodi.org.</em></strong></p>

    <p><strong><em>This post was supported by Deutsche Bank and is part of ODI Labs’ work on data infrastructure. If you’re interested in supporting our R&amp;D work on data infrastructure and blockchains, email labs@theodi.org.</em></strong></p>

  media_enquiries_name: ''
  media_enquiries_email: ''
  media_enquiries_telephone: ''
  alternative_title: ''
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