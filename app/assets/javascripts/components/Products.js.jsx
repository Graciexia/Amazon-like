var Products = React.createClass ({
  getInitialState: function() {
      return {data: []};
    },
  render: function() {
    return (
      <table class="table">
        <tbody>
          <div className="results-box">
            <SearchResults results={this.state.data} />
          </div>
        </tbody>
      </table>
    );
  }
});
