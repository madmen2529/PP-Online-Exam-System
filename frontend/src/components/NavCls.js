import React, { Component } from "react";
import { Layout, Menu } from "antd";

import "antd/dist/antd.css";

import { Link } from "react-router-dom";

const { Header } = Layout;

export default class NavCls extends Component {
  render() {
    return (
      <Header id="navmid-header-antd">
        <Menu
          theme="dark"
          mode="horizontal"
          defaultSelectedKeys={["home"]}
          style={{ lineHeight: "64px" }}
        >
          {/* <Menu.Item key="home">
            <Link to="/">
              <i className="fas fa-home mr-2"></i>Home
            </Link>
          </Menu.Item> */}
          <Menu.Item key="examlist">
            <Link to="/examlist">
              <i className="fas fa-briefcase mr-2"></i>Exam List
            </Link>
          </Menu.Item>
        </Menu>
      </Header>
    );
  }
}
