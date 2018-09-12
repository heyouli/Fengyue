$(document).on 'turbolinks:load', ->
  $('.alert-danger').delay(10000).slideUp 500, ->
    $('.alert').alert 'close'
  $('.alert-warning').delay(2000).slideUp 500, ->
        $('.alert').alert 'close'
