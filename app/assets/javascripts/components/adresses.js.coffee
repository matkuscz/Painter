@Adresses = React.createClass
  getInitialState: ->
    adresses: @props.data
  getDefaultProps: ->
    adresses: []
  addAdress: (adress) ->
    adresses = @state.adresess.slice()
    adresess.push adress
    @setState adresses: adresses

  render: ->
    React.DOM.div
      className: 'adresses'
      React.DOM.h2
        className: 'title'
        'Adresses'
      React.createElement AdressForm, handleNewAdress: @addAdress
      React.DOM.hr null
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Street'
            React.DOM.th null, 'City'
            React.DOM.th null, 'Postal code'
            React.DOM.th null, 'Description'
            React.DOM.th null, 'Country'
          React.DOM.tbody null,
            for adress in @state.adresses
              React.createElement Adress, key: adress.id, adress: adress
