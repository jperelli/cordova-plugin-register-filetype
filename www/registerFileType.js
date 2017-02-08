var argscheck = require('cordova/argscheck'),
    channel = require('cordova/channel'),
    utils = require('cordova/utils'),
    exec = require('cordova/exec'),
    cordova = require('cordova');

function RegisterFileType() {
}

function registerCB(cb1,cb2) {
  exec(
    function(url){
      cb1(url);
      registerCB(cb1,cb2)
    },
    function(err){
      cb2(err);
      registerCB(cb1,cb2)
    },
    "RegisterFileType",
    "registerFileType",
    []
  );
}

RegisterFileType.prototype.registerFileType = function(successCallback, errorCallback) {
  argscheck.checkArgs('fF', 'RegisterFileType.registerFileType', arguments);
  registerCB(successCallback, errorCallback);
};

module.exports = new RegisterFileType();
