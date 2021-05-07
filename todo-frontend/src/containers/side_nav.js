import React, { Component } from "react";
import { Col, Container, Row } from "react-bootstrap";

class SideNav extends Component {
  constructor(props) {
    super(props);

    this.state = {};
  }

  render() {
    return (
      <Container
        style={{
          backgroundColor: "lightsteelblue",
          width: "25%",
          height: "100%",
        }}
      >
        <Row className="">
          <label className="col-12 text-center" style={{fontWeight: 'bold', color: 'magenta'}}>Welcome Todoer</label>
        </Row>
      </Container>
    );
  }
}

export default SideNav;
