$(window).on 'load', ->
  elem = document.querySelector('.grid')
  msnry = new Masonry(
    elem,
    itemSelector: '.grid-item',
    fitWidth: true
  )

  msnry = new Masonry('.grid', {})
