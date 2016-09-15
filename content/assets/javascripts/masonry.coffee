jQuery.noConflict()
jQuery(window).imagesLoaded ->
  elem = document.querySelector('.grid-presenting')
  msnry = new Masonry(elem,
    itemSelector: '.grid-item-presenting'
    columnWidth: '.grid-item-presenting')
  # element argument can be a selector string
  #   for an individual element
  msnry = new Masonry('.grid-presenting', {})

  elem = document.querySelector('.grid')
  msnry = new Masonry(elem,
    itemSelector: '.grid-item'
    columnWidth: '.grid-item')
  # element argument can be a selector string
  #   for an individual element
  msnry = new Masonry('.grid', {})
