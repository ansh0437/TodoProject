import React, { PureComponent } from "react";
import { Row, Col, Container } from "react-bootstrap";
import SideNav from "./side_nav";

class Home extends PureComponent {
  constructor(props) {
    super(props);

    this.state = {
      // name: this.props.location.state.name,
    };
  }

  render() {
    return (
      <Container fluid style={{ height: "100vh" }}>
        <Row style={{ height: "100%", width: "100%" }}>
          <Col className="col-3">
            <SideNav />
          </Col>
          <Col className="col-9" style={{ backgroundColor: "pink" }}></Col>
        </Row>
      </Container>
    );
  }
}

export default Home;
