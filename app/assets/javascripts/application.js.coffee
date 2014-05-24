#= require jquery
#= require jquery_ujs
#= require jquery.turbolinks
#= require turbolinks

# VENDOR ASSETS
#= require jquery.ba-throttle-debounce

# CLIENT SIDE VALIDATIONS
#= require rails.validations
#= require rails.validations.turbolinks

# BOOTSTRAP
#= require twbs/bootstrap/transition
#= require twbs/bootstrap/alert
#= require twbs/bootstrap/button
# require twbs/bootstrap/carousel
#= require twbs/bootstrap/collapse
#= require twbs/bootstrap/dropdown
#= require twbs/bootstrap/modal
#= require twbs/bootstrap/tooltip
#= require twbs/bootstrap/popover
# require twbs/bootstrap/scrollspy
# require twbs/bootstrap/tab
# require twbs/bootstrap/affix

# JS TEMPLATES
#= require handlebars.runtime

# I18n
#= require i18n
#= require i18n/translations

# ALL THE REST
#= require_tree .

###global $:false, I18n:false###

'use strict'

window.icare = window.icare || {}
icare = window.icare

String::capitalize = ->
  this.replace /(?:^|\s)\S/g, (c) ->
    c.toUpperCase()

String::lpad = (padString, length) ->
  str = this
  while str.length < length
    str = padString + str
  str

$ ->
  I18n.locale = $('html').attr 'lang'