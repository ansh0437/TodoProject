import React, { Component } from "react";
import { Form, Button, Card, Nav, Container, Row } from "react-bootstrap";

class Login extends Component {
  constructor(props) {
    super(props);

    this.state = {
      screen: "login",
      fullName: "",
      email: "",
      password: "",
    };
  }

  onTabSelected = (selectedKey) => {
    if (selectedKey !== this.state.screen) {
      this.setState({
        screen: selectedKey,
      });
    }
  };

  submitClick = () => {
    if (this.state.screen == "login") {
      this.validateLoginFields();
    } else {
      this.validateRegsiterFields();
    }
  };

  validateLoginFields = () => {
    this.openHome();
  };

  validateRegsiterFields = () => {
    this.openHome();
  };

  openHome = () => {
    this.props.history.push({
      pathname: "/home",
      state: {
        data: this.state.fullName,
      },
    });
  };

  render() {
    return (
      <Container fluid style={{ height: "100vh" }}>
        <Row className="justify-content-center">
          <Card className="m-4" style={{ width: "36rem" }}>
            <Card.Header>
              <Nav
                fill
                justify
                className="ml-auto"
                variant="pills"
                activeKey={this.state.screen}
                onSelect={this.onTabSelected.bind(this)}
              >
                <Nav.Item>
                  <Nav.Link eventKey="login">Login</Nav.Link>
                </Nav.Item>

                <Nav.Item>
                  <Nav.Link eventKey="register">Register</Nav.Link>
                </Nav.Item>
              </Nav>
            </Card.Header>

            <Card.Body>
              <Form>
                {this.state.screen != "login" && (
                  <Form.Group>
                    <Form.Label>Full Name</Form.Label>
                    <Form.Control
                      type="text"
                      placeholder="Enter full name"
                      value={this.state.fullName}
                      onChange={(e) =>
                        this.setState({ fullName: e.target.value })
                      }
                    />
                  </Form.Group>
                )}

                <Form.Group controlId="formBasicEmail">
                  <Form.Label>Email address</Form.Label>
                  <Form.Control
                    type="email"
                    value={this.state.email}
                    placeholder="Enter email address"
                    onChange={(e) => this.setState({ email: e.target.value })}
                  />
                </Form.Group>

                <Form.Group controlId="formBasicPassword">
                  <Form.Label>Password</Form.Label>
                  <Form.Control
                    type="password"
                    placeholder="Enter password"
                    value={this.state.password}
                    onChange={(e) =>
                      this.setState({ password: e.target.value })
                    }
                  />
                </Form.Group>

                {/* <Form.Group controlId="formBasicCheckbox">
                <Form.Check type="checkbox" label="Check me out" />
              </Form.Group> */}

                <Button
                  className="col-12 mt-3 mb-2"
                  variant="primary"
                  onClick={this.submitClick.bind(this)}
                >
                  {this.state.screen.toUpperCase()}
                </Button>
              </Form>
            </Card.Body>
          </Card>
        </Row>
      </Container>
    );
  }
}

export default Login;
