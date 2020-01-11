import React, { Component } from "react";
import { Layout, Menu, Icon, Button } from "antd";

import { Link } from "react-router-dom";

import "antd/dist/antd.css";

const { Header } = Layout;

export default class HeaderCls extends Component {
  state = {
    current: "mail"
  };

  handleClick = e => {
    console.log("click ", e);
    this.setState({
      current: e.key
    });
  };

  render() {
    return (
      <section id="header-section">
        {/* <div className="logo bg-white text-center">
          <h2>Logo</h2>
        </div> */}
        <Header id="navtop-header-antd">
          <div className="float-left">
            <div className="pl-3"> Logo </div>
          </div>
          <Menu
            className="float-right"
            onClick={this.handleClick}
            selectedKeys={[this.state.current]}
            mode="horizontal"
            style={{ lineHeight: "64px" }}
          >
            <Menu.Item key="enterpreneur">
              <Button disabled>
                {/* <Link to="/"> */}
                <i className="fas fa-user-tie mr-2"></i>
                Teacher
                {/* </Link> */}
              </Button>
            </Menu.Item>
            <Menu.Item key="user">
              <Button.Group>
                <Button type="primary">
                  <Link to="/login">
                    <i className="fas fa-sign-in-alt mr-2"></i>
                    Login
                  </Link>
                </Button>
                <Button type="primary">
                  <Link to="/register">
                    <i className="fas fa-user mr-2"></i>
                    Register
                  </Link>
                </Button>
              </Button.Group>
            </Menu.Item>
          </Menu>
        </Header>
      </section>
    );
  }
}
