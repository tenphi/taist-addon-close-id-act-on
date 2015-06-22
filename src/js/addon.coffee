React = require 'react'
Q = require 'q'

extend = require 'react/lib/Object.assign'
insertAfter = require './helpers/insertAfter'

actOnFields = React.createFactory require('./close.io/ui/actOnFields')

addonEntry =
  start: (@api, entryPoint) ->
    DOMObserver = require './helpers/domObserver'
    @closeIoApi = require('./close.io/api')(@api)

    @elementObserver = new DOMObserver()

    @elementObserver.waitElement '.custom-fields', (customFieldsEl) ->
      div = document.createElement 'div'
      div.className = 'taist'
      insertAfter div, customFieldsEl
      React.render actOnFields({ fields: {'Lead Score': 'Very big!'} }), div

    @closeIoApi.auth('6315aee3e41055e185fee05f7e4cb89a2ef178f6e6beb84ce283e46bæ')
    .then (me) ->
      console.log me
    .catch (err) ->
      console.error err

module.exports = addonEntry
