var Login = React.createClass({
  render: function() {

    return (
      <div className="login-page">
        <h2>Log in to start your shopping moment!</h2>

        <form className="login-form">
          <label className="form-label">Email</label><br/>
          <input type="username" ref="username" className="input-box" placeholder="Enter your username"/><br/>

          <label className="password">Password</label><br/>
          <input type="password" ref="password" className="input-box" placeholder="Enter your password"/><br/>


          <button className="login-btn" onClick={this.submitLogin}>
             <strong>Log In</strong>
          </button><br/>
        </form>
        <footer>
          Created by Gracie
        </footer>
      </div>
    );
  },

  submitLogin: function(e) {
    window.location.href = '/';
  },
});
