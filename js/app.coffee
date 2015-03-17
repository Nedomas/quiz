window.$ = window.jQuery = require 'jquery'

$ ->
  initAnalytics()

initAnalytics = ->
  track('header .cta', 'CTA')
  track('header .twitter', 'Share Twitter')
  track('header .fb', 'Share Facebook')

track = (selector, msg) ->
  $(selector).on 'click', (e) ->
    analytics.track msg,
      text: $(e.target).text()
