navtoggler = ->
  mobile_menu_visible = 0

  $('.navbar-toggler').on 'click', (e) ->
    if mobile_menu_visible == 1
      $('html').removeClass 'nav-open'
      $('.close-layer').remove()
      setTimeout (->
        $(this).removeClass 'toggled'
        return
      ), 400
      mobile_menu_visible = 0
    else
      setTimeout (->
        $(this).addClass 'toggled'
        return
      ), 430
      main_panel_height = $('.main-panel')[0].scrollHeight
      $layer = $('<div class="close-layer"></div>')
      $layer.css 'height', main_panel_height + 'px'
      $layer.appendTo '.main-panel'
      setTimeout (->
        $layer.addClass 'visible'
        return
      ), 100
      $layer.click ->
        $('html').removeClass 'nav-open'
        mobile_menu_visible = 0
        $layer.removeClass 'visible'
        setTimeout (->
          $layer.remove()
          $(this).removeClass 'toggled'
          return
        ), 400
        return

      $('html').addClass 'nav-open'
      mobile_menu_visible = 1

document.addEventListener 'turbolinks:load', navtoggler
