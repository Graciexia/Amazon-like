var SearchResults = React.createClass({
	render: function () {
		var searchResults = this.props.results;
		if(searchResults.length === 0) {
			return (<div></div>);
		} else {
			return (
				<div></div>
					// <li key={result.cid} className="results-box">
					// 	{result.user} <br/>
					// 	{result.email}<br/>
					// 	{result.phone_number}<br/>
					// 	{result.address}
					// </li>


     //      <% mid_row = false %>

     //      <% @products.each_with_index do |product, index| %>
     //        <% if index % 3 == 0 %>
     //          <tr>
     //          <% mid_row = true %>
     //        <% end %>

     //          <td>
     //            <img className='Products' src="assets/product.jpg" alt="Products" height="80" width="80"><br>
     //            <%= link_to "#{product.title}", product %><br>
     //            Cost: <%= product.price %>
     //          </td>

     //        <% if index % 3 == 2 %>
     //          </tr>
     //          <% mid_row = false %>
     //        <% end %>
     //      <% end %>

     //      <% if mid_row == true %>
     //        </tr>
     //      <% end %>
				);
		}
	}
});
