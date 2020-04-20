$(document).on 'turbolinks:load', ->
  $("#cafepost_postcode").jpostal({
    postcode : [ "#cafepost_postcode" ],
    address  : {
                  "#cafepost_address_all" : "%3%4%5%6%7"
                }
  })
  
  $('.tabcontent > div').hide()
  $('.tabnav a').click(->
    $('.tabcontent > div').hide().filter(@hash).fadeIn()
    $('.tabnav a').removeClass 'active'
    $(this).addClass 'active'
    false
  ).filter(':eq(0)').click()