---
author:
  name: James Smith
  slug: james-smith
description: ''
---

<p>Here at the ODI, we love creating content. <a rel="external" href="http://theodi.org/team/phil-lang">Phil</a>, our Digital Production Editor, handles loads of video, audio, photography, and so on, and because a lot of it is rather large, his laptop threatens to bust its seams on a regular basis. So, he walked over and asked if there was anything the <a rel="external" href="https://twitter.com/ukoditech">tech team</a> knew of that would give him more space to work with.</p>

<p>Of course, it wasn&rsquo;t quite as simple as just having a load of disk space. This is important stuff, so backup is important, and ideally we should be able to access it from the outside. We also have no system administrator (or air conditioning in the server room), so it couldn&rsquo;t be anything that needed much maintenance.</p>

<p>We&rsquo;d heard of things like the <a rel="external" href="https://aws.amazon.com/storagegateway/">Amazon Storage Gateway</a>, and the idea of local storage backed by infinite cloud storage was very appealing. However, we don&rsquo;t use AWS; instead, we love <a rel="external" href="https://www.rackspace.co.uk">Rackspace</a>. Not only are they one of our <a rel="external" href="http://directory.theodi.org/members/AR6346HB">sponsors</a>, but they&rsquo;re <a rel="external" href="http://www.rackspace.com/cloud/openstack/">big on open source</a>, and their London data centre runs on <a rel="external" href="https://www.rackspace.co.uk/green-hosting">100% renewable energy</a>, all of which make us happy.</p>

<p>Unfortunately, there wasn&rsquo;t anything around that we could use as a storage appliance backed by Rackspace Cloudfiles, which was a problem. Then, we realised - using a little bit of code and some cheap hardware, we could make our own!</p>

<p><img src="https://theodi.github.io/presentations/philbot/philbot.jpg" alt="Philbot" /></p>

<p>So, this is Philbot. It&rsquo;s pretty simple, hardware wise. It&rsquo;s a <a rel="external" href="http://www.raspberrypi.org/">Raspberry Pi</a> with a 2TB Seagate USB hard disk attached, which it shares over the network using the usual network drive protocols. All in all, under a £100. Not bad.</p>

<p>The magic is in the software. We&rsquo;re a Ruby shop mostly, and there are some amazing open source gems out there that let us do most of this really easily.</p>

<p>Firstly, our code uses the <a rel="external" href="https://github.com/guard/listen">Listen</a> gem to watch the filesystem and detect when things change. The idea is that when <em>real</em> Phil saves a file onto Philbot&rsquo;s disk, the script will notice. If a file is added, modified, or deleted, then it&rsquo;s placed onto a queue (using <a rel="external" href="https://github.com/resque/resque">Resque</a>). That queue is processed in the background, and the file is uploaded or removed from Cloudfiles as appropriate using the <a rel="external" href="https://github.com/fog/fog">fog</a> gem. All in all, it&rsquo;s really very little code, mostly just glue to connect together the parts. It&rsquo;s all test driven with <a rel="external" href="https://github.com/cucumber/cucumber">Cucumber</a> as well, another of our favourite tools.</p>

<p>At this point, it works. Human Phil can save files on a large network drive, and they will be instantly backed up to Cloudfiles. If he deletes them, they will be removed from Cloudfiles as well. In future, we want to add a function to &ldquo;freeze&rdquo; directories, which removes them from the local storage but leaves them in the cloud for long-term cold storage. </p>

<p>There are some other future plans; we want to make the configuration of the device itself operate using a network drive with a configuration file on it, and then create a Raspberry Pi OS image with it all preconfigured, so that you can just plug it in and get going. That&rsquo;s in the future though; for now it&rsquo;s handling our day to day needs nicely.</p>

<p>So, if you would like to have your own cloud storage appliance for less than a hundred quid, why not take a look at the detailed setup instructions in the <a rel="external" href="https://github.com/theodi/philbot/">Philbot repository on GitHub</a>. Let us know how you get on!</p>
