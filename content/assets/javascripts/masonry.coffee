$(window).on 'load', ->
  elem = document.querySelector('.partner-grid')
  msnry = new Masonry(
    elem,
    itemSelector: '.grid-item',
    fitWidth: true
  )
