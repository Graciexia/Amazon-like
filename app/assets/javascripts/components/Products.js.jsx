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
// var Findprice = React.createClass({
//   getInitialState: function() {
//       return {data: []};
//     },
//   render: function() {
//     return (
//         <img className='Product' src="assets/product.jpg" alt="product"/>

//         <h2>Find the price is over '$5'!</h2>

//         <form className='search-form'>

//           <label className='form-label' ref='price'>Enter yo</label><br/>
//           <input type='text' ref='searchZip' className='input-box' placeholder='ZIP Code' /><br/>

//             <button className="submit-btn" onClick={this.findClassmate}>
//               <strong>Submit</strong>
//             </button>
//           </form>
//           <div>
//             <h2>
//             You can ride with these classmates!
//           </h2>
//         </div>
//         <div className="results-box">
//           <SearchResults results={this.state.data} />
//         </div>
//         <footer>
//           Created by Gracie, Maryna and Carissa
//         </footer>
//         </div>
//     );
//   },
//   findClassmate: function(e) {
//     e.preventDefault();
//     var zip = this.refs.searchZip.getDOMNode().value;

//     var results = $.ajax({
//       url: 'https://calm-thicket-5529.herokuapp.com/search/zipcode/' + zip,
//       dataType: 'json',
//       type: 'GET',
//       success: function(data) {
//         var neighbors = [];
//         for(var i=0; i<data.length; i++) {
//           if(zip == data[i].zip_code) {
//             neighbors.push({
//               user: data[i].username,
//               address: data[i].address,
//               phone_number: data[i].phone_number,
//               email: data[i].email,
//             })
//           }
//         }
//         this.setState({data: neighbors});
//       }.bind(this)
//     });
//   },
//   logOut: function() {
//     app.navigate('', {trigger: true});
//   },
//   dashboard: function() {
//     app.navigate('posts', {trigger: true});
//   }
// });

