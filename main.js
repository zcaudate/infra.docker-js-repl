#!/usr/local/bin/node

import net from 'net'

import r from 'repl'

var DEFAULT_REPL_PORT = 4555;

function repl_server(port){
  net.createServer(function (socket){
    let remote = r.start(
      {"prompt":"","useGlobal":true,"input":socket,"output":socket}
    );
  }).listen(port);
}

function _main(){
  let port = process.argv[2] || process.env.REPL_PORT || DEFAULT_REPL_PORT;
  log("STARTING SERVER:",port);
  repl_server(port);
}

_main();