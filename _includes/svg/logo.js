<script>
var odi_path = [
  /* move to start */
  'M 193 64',

  /* 'O' */
  'c -5 -12.4 -12.4 -23.8 -22.2 -33.6',
  'c -18.9 -18.9 -43.9 -29.3 -70.6 -29.3',
  'c -26.7 0 -51.8 10.4 -70.6 29.3',
  'c -18.9 18.9 -29.2 43.9 -29.2 70.6',
  'c 0 26.7 10.4 51.8 29.2 70.6',
  'c 18.9 18.9 43.9 29.3 70.6 29.3',
  'c 26.7 0 51.8 -10.4 70.6 -29.3',
  'c 9.7 -9.7 17.2 -21.1 22.2 -33.6',

  /* bottom of 'D' */
  'v 61.3',
  'h 84.8',
  'c 14.7 0 28.4 -2.4 40.9 -7',
  'c 12.3 -4.6 23.1 -11.3 32 -19.9',
  'c 10 -9.6 17.4 -21.2 22.2 -34.3',

  /* 'I' */
  'v 61',
  'h 93.5',
  'v -197',
  'h -93.5',
  'v 61.1',

  /* top of 'D' */
  'c -4.8 -13.2 -12.2 -24.7 -22.2 -34.3',
  'c -9 -8.6 -19.8 -15.3 -32 -19.9',
  'c -12.5 -4.6 -26.2 -7 -40.9 -7',
  'h -84.8',
  'v 61.4'
]

var logo = SVG('logo')
logo.viewbox({
  x: 0,
  y: 0,
  width: 990,
  height: 200
})

var badge = logo.path(odi_path.join(' ')).addClass('labs')

var text = logo.text('labs').move(512, -147).addClass('labs')
text.font({
  size: 272,
  anchor: 'left',
})

var group = logo.group()
group.add(badge)
group.add(text)

group.linkTo(function(link) {
  link.to('/')
})

var image = logo.image('{{ site.data.header.image.urls.raw }}')
image.size(
  {{ site.data.header.image.size.x }},
  {{ site.data.header.image.size.y }}
)
.x(
  {{ site.data.header.image.offset.x }}
)
.y(
  {{ site.data.header.image.offset.y }}
)
badge.maskWith(image)
</script>
