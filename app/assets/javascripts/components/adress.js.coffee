@Adress = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.adress.street
      React.DOM.td null, @props.adress.city
      React.DOM.td null, @props.adress.postal_code
      React.DOM.td null, @props.adress.description_number
      React.DOM.td null, @props.adress.country
