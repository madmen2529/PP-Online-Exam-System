import React from "react";
import "./App.css";

import { Layout } from "antd";
import "antd/dist/antd.css";

import { BrowserRouter } from "react-router-dom";

import Header from "./components/HeaderCls";
import Nav from "./components/NavCls";
import Content from "./components/ContentCls";
import Footer from "./components/FooterCls";

function App() {
  return (
    <BrowserRouter>
      <Layout id="layout" className="layout">
        <Header />
        <Nav />
        <Content />
        <Footer />
      </Layout>
    </BrowserRouter>
  );
}

export default App;
