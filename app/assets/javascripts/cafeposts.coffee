$(document).on 'turbolinks:load', ->
  $("#cafepost_postcode").jpostal({
    postcode : [ "#cafepost_postcode" ],
    address  : {
                  "#cafepost_address_all" : "%3%4%5%6%7"
                }
  })