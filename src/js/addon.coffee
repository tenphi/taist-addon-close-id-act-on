React = require 'react'
Q = require 'q'

extend = require 'react/lib/Object.assign'
insertAfter = require './helpers/insertAfter'

actOnFields = React.createFactory require('./close.io/ui/actOnFields')

addonEntry =
  start: (@api, entryPoint) ->
    DOMObserver = require './helpers/domObserver'
    @elementObserver = new DOMObserver()

    @elementObserver.waitElement '.custom-fields', (customFieldsEl) ->
      div = document.createElement 'div'
      div.className = 'taist'
      insertAfter div, customFieldsEl
      React.render actOnFields({ fields: {'Lead Score': 'Very big!'} }), div

module.exports = addonEntry
