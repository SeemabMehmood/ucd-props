ready = ->
  $(".show-menu").on 'click', (event) ->
    console.log $(".scroll-link").css("display")
    if $(".scroll-link").css("display") == "inline-block"
      $(".scroll-link").hide()
      $(".scroll-link").css("display", "none")
    else
      $(".scroll-link").show()
      $(".scroll-link").css("display", "inline-block")

# $(document).ready ready
document.addEventListener 'turbolinks:load', ready
# document.addEventListener 'turbolinks:render', ready

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
