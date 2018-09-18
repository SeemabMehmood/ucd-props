(($, document, window) ->
  $(document).ready ->
    $('[data-bg-color]').each ->
      color = $(this).data('bg-color')
      $(this).css 'background-color', color
      return
    $('[data-bg-image]').each ->
      image = $(this).data('bg-image')
      $(this).css 'background-image', 'url(' + image + ')'
      return
    return
  $(window).load ->
  return
) jQuery, document, window
