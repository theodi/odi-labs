---
author:
  name: Jeni Tennison
  slug: jeni-tennison
description: ''
---

<p>As organisations come to recognise how important and useful data could be, they start to think about using the data that they have been collecting in new ways. Often data has been collected over many years as a matter of routine, to drive specific processes or sometimes just for the sake of it. Suddenly that data is repurposed. It is probed, analysed and visualised in ways that haven&rsquo;t been tried before.</p>

<p>Data analysts have a maxim:</p>

<blockquote>
  <p>If you don&rsquo;t think you have a quality problem with your data, you haven&rsquo;t looked at it yet.</p>
</blockquote>

<p>Every dataset has its quirks, whether it&rsquo;s data that has been wrongly entered in the first place, automated processing that has introduced errors, irregularities that come from combining datasets into a consistent structure or simply missing information. Anyone who works with data knows that far more time is needed to clean data into something that can be analysed, and to understand what to leave out, than in actually performing the analysis itself. They also know that analysis and visualisation of data will often reveal bugs that you simply can&rsquo;t see by staring at a spreadsheet.</p>

<p>But for the people who have collected and maintained such data — or more frequently their managers, who don&rsquo;t work with the data directly — this realisation can be a bit of a shock. In our last ODI Board meeting, Sir Tim Berners-Lee suggested that the data curators need to go through was something like the five stages of grief described by the <a rel="external" href="http://en.wikipedia.org/wiki/K%C3%BCbler-Ross_model">Kübler-Ross model</a>.</p>

<p>So here is an outline of what that looks like. </p>

<h3>Denial</h3>

<blockquote>
  <p>This can&rsquo;t be right: there&rsquo;s nothing wrong with our data! Your analysis/code/visualisation must be doing something wrong.</p>
</blockquote>

<p>At this stage data custodians can&rsquo;t believe what they are seeing. Maybe they have been using the data themselves but never run into issues with it because they were only using it in limiting ways. Maybe they had only ever been collecting the data, and not actually using it at all. Or maybe they had been viewing it in a form where the issues with data quality were never surfaced (it&rsquo;s hard to spot additional spaces, or even zeros, when you just look at a spreadsheet in Excel, for example).</p>

<p>So the first reason that they reach for is that there must be something wrong with the analysis or code that seems to reveal issues with the data. There may follow a wild goose chase that tries to track down the non-existent bug. Take heart: this exercise is useful in that it can pinpoint the precise records that are causing the problems in the first place, which forces the curators to stop denying them.</p>

<h3>Anger</h3>

<blockquote>
  <p>Who is responsible for these errors? Why haven&rsquo;t they been spotted before?</p>
</blockquote>

<p>As the fact that there are errors in the data comes to be understood, the focus can come to rest on the people who collect and maintain the data. This is the phase that the maintainers of data dread (and can be a reason for resisting sharing the data in the first place), because they get blamed for the poor quality.</p>

<p>This painful phase should eventually result in an evaluation of where errors occur — an evaluation that is incredibly useful, and should be documented and kept for the Acceptance phase of the process — and what might be done to prevent them in future. Sometimes that might result in better systems for data collection but more often than not it will be recognised that some of the errors are legacy issues or simply unavoidable without massively increasing the maintenance burden.</p>

<h3>Bargaining</h3>

<blockquote>
  <p>What about if we ignore these bits here? Can you tweak the visualisation to hide that?</p>
</blockquote>

<p>And so the focus switches again to the analysis and visualisations that reveal the problems in the data, this time with an acceptance that the errors are real, but a desire to hide the problems so that they&rsquo;re less noticeable.</p>

<p>This phase puts the burden on the analysts who are trying to create views over the data. They may be asked to add some special cases, or tweak a few calculations. Areas of functionality may be dropped in their entirety or radically changed as a compromise is reached between utility of the analysis and low quality data to feed it.</p>

<h3>Depression</h3>

<blockquote>
  <p>This whole dataset is worthless. There&rsquo;s no point even trying to capture this data any more.</p>
</blockquote>

<p>As the number of exceptions and compromises grows, and a realisation sinks in that those compromises undermine the utility of the analysis or visualisation as a whole, a kind of despair sets in. The barriers to fixing the data or collecting it more effectively may seem insurmountable, and the data curators may feel like giving up trying.</p>

<p>This phase can lead to a re-examination of the reasons for collecting and maintaining the data in the first place. Hopefully, this process can aid everyone in reasserting why the data is useful, regardless of some aspects that are lower quality than others.</p>

<h3>Acceptance</h3>

<blockquote>
  <p>We know there are some problems with the data. We&rsquo;ll document them for anyone who wants to use it, and describe the limitations of the analysis.</p>
</blockquote>

<p>In the final stage, all those involved recognise that there are some data quality problems, but that these do not render the data worthless. They will understand the limits of analyses and interpretations that they make based on the data, and they try to document them to avoid other people being misled.</p>

<p>The benefits of the previous stages are also recognised. Denial led to double-checking the calculations behind the analyses, making them more reliable. Anger led to re-examination of how the data was collected and maintained, and documentation that helps everyone understand the limits of the data better. Bargaining forced analyses and visualisations to be focused and explicit about what they do and don&rsquo;t show. Depression helped everyone focus on the user needs from the data. Each stage makes for a better end product.</p>

<hr />

<p>Of course doing data analysis isn&rsquo;t actually like being diagnosed with a chronic illness or losing a loved one. There are things that you can do to remedy the situation. So I think we need to add a sixth stage to the five stages of data grief described above:</p>

<h3>Hope</h3>

<blockquote>
  <p>This could help us spot errors in the data and fix them!</p>
</blockquote>

<p>Providing visualisations and analysis provides people with a clearer view about what data has been captured and can make it easier to spot mistakes, such as outliers caused by using the wrong units when entering a value, or new categories created by spelling mistakes. When data gets used to make decisions by the people who capture the data, they have a strong motivation to get the data right. As Francis Irving outlined in his recent <a rel="external" href="http://theodi.org/lunchtime-lectures/friday-lunchtime-lecture-burn-the-digital-paper-a-call-to-arms">Friday Lunchtime Lecture at ODI, Burn the Digital Paper</a>, these feedback loops can radically change how people think about data, and use computers within their organisations.</p>

<p>Making data open for other people to look at provides lots more opportunities for people to spot errors. This can be terrifying — who wants people to know that they are running their organisation based on bad-quality data? — but those who have progressed through the five stages of data grief find hope in another developer maxim:</p>

<blockquote>
  <p>Given enough eyeballs, all bugs are shallow.<br />
— <em>Linus&rsquo;s Law, <a rel="external" href="http://www.catb.org/~esr/writings/cathedral-bazaar/cathedral-bazaar/index.html">The Cathedral and the Bazaar by Eric Raymond</a></em></p>
</blockquote>

<p>The more people look at your data, the more likely they are to find the problems within it. The secret is to build in feedback mechanisms which allow those errors to be corrected, so that you can benefit from those eyes and increase your data quality to what you thought it was in the first place.</p>
