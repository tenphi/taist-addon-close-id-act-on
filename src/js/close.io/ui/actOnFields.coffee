React = require 'react'

{ div, h2, ul, li } = React.DOM

actOnFields = React.createClass
  render: ->
    div { className: 'act-on-fields' },
      h2 {}, 'Act-On fields'
      ul {
          className: 'custom-fields-list list',
          style: { margin: 0 }
        },
        for field, value of this.props.fields
          li { className: 'editable-model-view' },
            div { className: 'custom-field' },
              div { className: 'key' }, field + ':'
              div {
                  className: 'value'
                  style: { marginLeft: 3 }
                },
                value

module.exports = actOnFields
