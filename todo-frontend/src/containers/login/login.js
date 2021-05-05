import React, { Component } from "react";
import {} from "react-bootstrap";

class Login extends Component {
  constructor(props) {
    super(props);

    this.state = {};
  }

  openHome = () => {
    this.props.history.push({
      pathname: "/home",
      state: {
        name: "Himanshu",
      },
    });
  };

  render() {
    return (
      <div>
        <div className="container">
          <p>Login Screen</p>

        </div>
      </div>
    );
  }
}

export default Login;
