import React, { PureComponent } from "react";

class Home extends PureComponent {
  constructor(props) {
    super(props);

    this.state = {
      name: this.props.location.state.name,
    };
  }

  render() {
    return (
      <body>
        <p>Welcome {this.state.name}</p>
      </body>
    );
  }
}

export default Home;
