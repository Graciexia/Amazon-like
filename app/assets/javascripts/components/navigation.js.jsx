/* globals React, moment */
'use strict';
var Navigation = React.createClass ({
  render :function(){
    return (
      <nav>
      <NavLink name='Home' url='/' />
      <NavLink name='Cart' url='/orders' />
      <NavLink name='SignUp' url='/users/sign_up' />
      <NavLink name='Login' url='/users/sign_in' />
      <NavLink name='Logout' url='/users/sign_out' />
      </nav>
    );
  },
});

var NavLink = React.createClass({
  render: function(){
    return(<a onClick={this.click} className='btn btn-primary'>{this.props.name}</a>);
  },
  click :function() {
    window.location.href = this.props.url;
  },
});
