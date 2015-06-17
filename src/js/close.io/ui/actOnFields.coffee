React = require 'react'

{ div, h2, ul, li } = React.DOM

actOnFields = React.createClass
  render: ->
    div { className: 'act-on-fields custom-fields' },
      h2 {}, 'Act-On fields'
      ul { className: 'custom-fields-list list' },
        for field, value of this.props.fields
          li { className: 'editable-model-view' },
            div { className: 'custom-field' },
              div { className: 'key' }, field + ':'
              div { className: 'value' }, value

module.exports = actOnFields
