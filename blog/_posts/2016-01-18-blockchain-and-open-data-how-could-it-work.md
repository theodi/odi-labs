---
author:
  name: Stuart Harrison
  slug: stuart-harrison
description: Stuart Harrison discusses the ODI Labs team's foray into putting open
  data into a blockchain – and what would happen if they opened it up to miners
---

<p><em>Stuart Harrison discusses the ODI Labs team&rsquo;s foray into putting open data into a blockchain – and what would happen if they opened it up to miners</em></p>

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/9d/1a/569d1aa61f986a0842000003/Yap_Stone_Money.jpg" alt="null" class="img" id="attachment-569d1aa5d0d4620677000025" /></p>

<p><small>A rai stone in the village of Gachpar. Too large to move, these discs were used as currency, recorded in oral history, by the Yapese. Credit: <a rel="external" href="https://commons.wikimedia.org/wiki/File:Yap_Stone_Money.jpg#/media/File:Yap_Stone_Money.jpg">Eric Guinther, CC BY-SA 3.0</a> </small></p>

<p>If you work in the technology sector (which, if you&rsquo;re reading this, you probably do), then you&rsquo;ve most likely been swept up in a lot of hype and talk about blockchain. This immutable, distributed ledger technology will apparently change the world, allowing a revolutionised approach to share trading, smart contracts and provenance tracking, to name but a few things.</p>

<p>But what does this mean for open data? With 2016 just getting started, ODI Labs decided to use our first week back in the office to try to tease out the answers to this question.</p>

<h3>Setting up a digital currency</h3>

<p>Firstly, we needed to find a blockchain; not, as I should point out, <em>the</em> blockchain (which is the ledger that stores Bitcoin transactions) – we wanted something quick and dirty to experiment with, and we weren’t entirely convinced that storing data in the Bitcoin blockchain was the right solution. </p>

<p>We settled on <a rel="external" href="http://www.multichain.com/">Multichain</a>, a Bitcoin-compatible blockchain, which builds on the main Bitcoin blockchain spec, but crucially adds support for things like metadata and custom assets, so we could mint our own digital currency.</p>

<p>We followed the <a rel="external" href="http://www.multichain.com/getting-started/">detailed instructions</a> and, within a morning, we were up and running, happily moving a new digital currency from one machine to another.</p>

<p>The next step was to build a Ruby client, which we found didn&rsquo;t exist. As Multichain (and Bitcoin) exposes a JSON-RPC API, this was nice and easy. We also had some vague ideas that we might want to add some metadata that showed the state of a given URL at any time, so added in functionality for that too. You can <a rel="external" href="https://github.com/theodi/multichain-client">see our code on GitHub</a> and pull requests are, of course, welcome.</p>

<h3>The blockchain meets the open data</h3>

<p>So, we had a blockchain and a way of accessing that blockchain in a language we felt comfortable using, what next? After some thought, we cast our minds back to earlier last year, when Philip Potter from GDS wrote a fantastic <a rel="external" href="https://gdstechnology.blog.gov.uk/2015/10/13/guaranteeing-the-integrity-of-a-register/">blog post</a> about guaranteeing the integrity of a register, describing technology that looked, for all intents and purposes, like a blockchain.</p>

<p>The example Philip used in this blog post was food safety inspections and, as I&rsquo;ve got a long history in publishing and working with food safety data, we decided that we could use the existing open data to suck up the <a rel="external" href="http://ratings.food.gov.uk/open-data/en-GB">Food Standards Agency (FSA) ratings data</a> and put it into our blockchain. That way, if people were unsure if a rating was genuine, they could look at our blockchain and see that it was the case. While a website can be hacked, and ratings altered, information on a blockchain cannot be deleted or altered, and can also be traced back to its originator.</p>

<p>We knocked up a <a rel="external" href="https://github.com/theodi/foodchain">quick script</a> that uses the FSA API to get inspection data and import their premises ID into the blockchain, along with the inspection date and rating. The idea was to then run the script on a regular basis to get any new inspections.</p>

<p>The import seemed to work and we set out what we planned to do – put open data in a blockchain. But this raised more questions than answers.</p>

<h3>Indexing, mining and the future of our blockchain</h3>

<p>Firstly, how do we search for the correct record? At the moment, it seems like we have to go through each block in the chain and check the metadata. There are many solutions for searching and viewing the Bitcoin blockchain but these seem to just index the blockchain into a database that is better suited to the task of searching. How do you guarantee the integrity of that database?</p>

<p>Our blockchain currently only consists of two nodes, mining and sending fake currency to each other. The key to the integrity of blockchain technology is its decentralised nature. Once one person or organisation owns the majority of nodes in a blockchain network, this integrity breaks down.</p>

<p>Related to this, if we were to open up our blockchain to the wider public, how would we incentivise mining? With Bitcoin, once a miner adds new transactions to the blockchain, there is a fixed reward (currently 25 BTC, almost £7,500 in today&rsquo;s exchange rate). As the size of the blockchain increases, so does the computational power required to add new blocks (a <a rel="external" href="https://karlodwyer.github.io/publications/pdf/bitcoin_KJOD_2014.pdf">recent paper</a> compared the electricity usage of the Bitcoin network to that of Ireland). As a result of this, and the rewards at stake, there are entire server farms devoted to Bitcoin mining.</p>

<p>Currently, our blockchain is a fraction of the size of the Bitcoin blockchain, and we might get a few well-intentioned people happy to mine for us for free. However, as the blockchain grows, mining will get harder, and the worthless currency our blockchain &lsquo;rewards&rsquo; miners with won&rsquo;t help miners cover the electricity bills the computation will end up costing them.</p>

<p>Obviously, this has been a pretty shallow dive into blockchain, looking at the art of the possible. We’re not ruling out blockchain technology yet, and in the coming weeks and months, we’ll be doing more detailed investigation, looking into alternative blockchain technologies like <a rel="external" href="https://www.ethereum.org/">Ethereum</a>, as well as smart contracts and the privacy implications of blockchain data storage. In the meantime, there may well be things we&rsquo;ve missed or not considered. If that&rsquo;s the case, please let us know in the comments.</p>

<p><strong>This work was supported by Deutsche Bank and is part of ODI Labs’ work on data infrastructure. If you’re interested in supporting our R&amp;D work on data infrastructure and blockchains, email <a href="&#109;&#097;&#105;&#108;&#116;&#111;:&#108;&#097;&#098;&#115;&#064;&#116;&#104;&#101;&#111;&#100;&#105;&#046;&#111;&#114;&#103;">&#108;&#097;&#098;&#115;&#064;&#116;&#104;&#101;&#111;&#100;&#105;&#046;&#111;&#114;&#103;</a>.</strong></p>
