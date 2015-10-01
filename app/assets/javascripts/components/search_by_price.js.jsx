var SearchByPrice = React.createClass({
  getInitialState: function() {
      return {data: []};
    },
  render: function() {
    return (
      <div>
        <button onClick={this.productByPrice} className="btn btn-success col-md-6">
          <strong>&#36;20 to &#36;50</strong>
        </button>
        <br />
        <button onClick={this.productByPrice} className="btn btn-success col-md-6">
          <strong>less than &#36;20</strong>
        </button>
        <br />
        <br />
        <button onClick={this.productByPrice} className="btn btn-success col-md-6">
          <strong>more than &#36;50</strong>
        </button>
        <br />
        <div className='results'>
         {this.state.data}
        </div>
      </div>
    );
  },
  productByPrice: function(e) {
    $.ajax({
      url: '/prod_by_price/high',
      dataType: 'json',
      type: 'GET',
      success: function(data) {
        this.setState({data: data});
      }.bind(this)
    });
  },

});
