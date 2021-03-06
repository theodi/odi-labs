---
author:
  name: James Smith
  slug: james-smith
description: ''
---

<p><img src="http://bd7a65e2cb448908f934-86a50c88e47af9e1fb58ce0672b5a500.r32.cf3.rackcdn.com/uploads/assets/7f/3c/537f3c4b1f986a085f000010/Screen_Shot_2014-05-22_at_21.24.46.png" alt="null" class="img" id="attachment-537f3c4bf362be0d4200006d" /></p>

<p>Over the last few months, I&rsquo;ve spent some time working on how we collaborate on data publishing, particularly when using <a rel="external" href="http://github.com">GitHub</a>, an integral part of our software development process.</p>

<p>I wrote a couple of articles last year about <a rel="external" href="http://theodi.org/blog/adapting-git-simple-data">how git could be used for data</a>, and came to the conclusion that rendering of CSV diffs was an important feature that was needed. Using Paul Fitzpatrick&rsquo;s brilliant <a rel="external" href="https://github.com/paulfitz/daff">daff</a> library, I put CSV diffs into GitLab (an open source GitHub clone), but then again most people aren&rsquo;t using that.</p>

<p>Shortly after this, GitHub added CSV viewing support in their web interface, which is fantastic, but still doesn&rsquo;t handle changes well.</p>

<p>Well, this week was innovation week again, and my colleague Stuart came up with the suggestion of putting the CSV diff capability we did for GitLab into a browser plugin that would work on the main GitHub site. This seemed like an excellent idea.</p>

<p>In the end, it was pretty easy, and version 1.0.0 is now released! If you&rsquo;re running Chrome, you can install it from the Chrome Web Store by clicking below:</p>

<p><a rel="external" href="https://chrome.google.com/webstore/detail/csvhub/dbemglgpbebafkibfncdpdmdikacingf">Install CSVHub now!</a></p>

<p>It will let you see additions, deletions and modifications per-cell, in both commit views and pull requests.</p>

<p>Want some examples? Install the extension and take a look at these:</p>

<ul>
  <li><a rel="external" href="https://github.com/theodi/test-data/commit/9f391e6e35963b96aa0eed56c20ccd70f326e1f7">theodi/test-data</a></li>
  <li><a rel="external" href="https://github.com/datasets/s-and-p-500-companies/commit/e64871e745a0d34ec3a0ae1b702886a1925d4cdf#diff-fc13dde00d8f846b940d1524b58652f9R269">datasets/s-and-p-500-companies</a></li>
  <li><a rel="external" href="https://github.com/datasets/gold-prices/commit/92d91c206a3b5ab2b4bb74575409eff1221d31cb">datasets/gold-prices</a></li>
</ul>

<p>It&rsquo;s open source, of course, so if you want to contribute improvements, or find any errors in it, you can visit the <a rel="external" href="https://github.com/theodi/csvhub">GitHub repository</a>.</p>

<p>And, if you&rsquo;re from GitHub, I would dearly love to have this built in to the main site. I&rsquo;ve even written you a <a rel="external" href="https://github.com/theodi/coopy-ruby">Ruby port of the daff code</a> so you can do it all server side. Go on, you know you want to!</p>
