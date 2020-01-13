import React, { Component } from "react";
import { Layout } from "antd";

import { Switch, Route, Link } from "react-router-dom";

//Frontend
import Home from "./Home";
import Login from "./Login";
import Register from "./Register";
import ExamList from "./ExamList";
import ExamIntro from "./ExamIntro";
import ExamTopic from "./ExamTopic";
import ExamSummary from "./ExamSummary";

//Backend
import Dashboard from "./Dashboard";
import ManageExam from "./ManageExam";

import "antd/dist/antd.css";

const { Content } = Layout;

export default class ContentCls extends Component {
  render() {
    return (
      <Content id="content-antd" style={{ padding: "0 50px" }}>
        <div
          style={{
            background: "#fff",
            margin: "0",
            padding: "0 2rem 2rem 2rem",
            height: "100%"
          }}
        >
          <Switch>
            <Route path="/examlist">
              <ExamList />
            </Route>
            <Route path="/login">
              <Login />
            </Route>
            <Route path="/register">
              <Register />
            </Route>
            <Route path="/">
              <Home />
            </Route>
          </Switch>
        </div>
      </Content>
    );
  }
}
