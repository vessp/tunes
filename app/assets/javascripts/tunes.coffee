# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
    $("#send_url").click(=>
        console.log("ASdf")

        host = $('#host_input').val()
        url = encodeURIComponent($('#url_input').val())
        fullpath = host + ":3000/send_url?url=" + url
        console.log(fullpath)
        
        $.ajax(url: fullpath).done( (resultJson) =>
            console.log(resultJson)
        )
    )