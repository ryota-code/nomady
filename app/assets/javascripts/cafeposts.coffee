$(document).on 'turbolinks:load', ->
  $("#cafepost_postcode").jpostal({
    postcode : [ "#cafepost_postcode" ],
    address  : {
                  "#cafepost_prefecture_code" : "%3",
                  "#cafepost_address_city"            : "%4",
                  "#cafepost_address_street"          : "%5%6%7"
                }
  })