import "phoenix_html";
// import socket from "./socket"

import React, { Component } from 'react';
import $ from 'jquery';
import _ from 'underscore';
import ReactDOM from 'react-dom';

// Initialize turbolinks
import Turbolinks from 'turbolinks';
Turbolinks.start();

// Forgive the duplication
// Just for demo

var node = document.getElementById('app');
var nodeShow = document.getElementById('app-show');

if (node) {
  var props = JSON.parse(node.getAttribute('data-props'));

  const App = (props) => {
    const { items } = props;
    const itemList = _.map(items, (item) => {
      return <li key={item.id}>
        <a href={item.url}>{item.title}</a>
      </li>;
    });

    return (
      <ul className="items">
        {itemList}
      </ul>
    );
  };

  ReactDOM.render(
    <App items={props} />,
    node
  );
}

if (nodeShow) {
  var props = JSON.parse(nodeShow.getAttribute('data-props'));

  const AppShow = (props) => {
    const { item } = props;
    return (
      <div className="item">
        {item.title}
      </div>
    );
  };

  ReactDOM.render(
    <AppShow item={props} />,
    nodeShow
  );
}
