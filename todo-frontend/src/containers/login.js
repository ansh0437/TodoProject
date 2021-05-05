import React, { Component } from "react";

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
      <body>
        <p>Login Screen</p>

        <button
          onClick={() => {
            this.openHome();
          }}
        >
          Home
        </button>
      </body>
    );
  }
}

export default Login;
