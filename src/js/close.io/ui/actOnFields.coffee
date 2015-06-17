React = require 'react'

{ div, h2, ul, li } = React.DOM

actOnFields = React.createClass
  render: ->
    div { class: 'act-on-fields' },
      h2 {}, 'Act-On fields'
      ul { class: 'act-on-fields-list list' },
        for field, value of this.props.fields
          li { class: 'editable-model-view' },
            div { class: 'key' }, field
            div { class: 'value' }, value

module.exports = actOnFields
