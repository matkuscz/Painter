@AdressForm = React.createClass
  getInitialState: ->
    street: ''
    city: ''
    postal_code: ''
    description_number: ''
    country: ''

  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder:  'Street'
          name: 'street'
          value: @state.street
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder:  'City'
          name: 'city'
          value: @state.city
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder:  'Postal code'
          name: 'postal_code'
          value: @state.postal_code
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder:  'Description'
          name: 'description_number'
          value: @state.description_number
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder:  'Česká republika'
          name: 'country'
          value: @state.country
          onChange: @handleChange
      React.DOM.button
        type: 'submit'
        className: 'btn btn-primary'
        disabled: !@valid()
        'Create adress'

  valid: ->
    @state.city && @state.postal_code

  handleChange: (e) ->
    console.log(e.target)
    name = e.target.name
    pokus = {}
    pokus[name] = e.target.value
    @setState pokus
