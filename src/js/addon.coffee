React = require 'react'
Q = require 'q'

extend = require 'react/lib/Object.assign'
insertAfter = require './helpers/insertAfter'

actOnFields = React.createFactory require('./close.io/ui/actOnFields')

addonEntry =
  start: (@api, entryPoint) ->
    DOMObserver = require './helpers/domObserver'
    @elementObserver = new DOMObserver()

    @elementObserver.waitElement 'div.lead-sidebar', (sidebar) ->
#      React.render { fields: {'Lead Score': 'Very big!'} }, sidebar

module.exports = addonEntry
