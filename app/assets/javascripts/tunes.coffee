# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
    $("#send_url").click(=>
        url = encodeURIComponent($('#url_input').val())
        $.ajax(url: "/send_url?url=" + url).done( (resultJson) =>
            console.log(resultJson)


        )
    )