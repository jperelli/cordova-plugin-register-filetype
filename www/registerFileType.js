var argscheck = require('cordova/argscheck'),
    channel = require('cordova/channel'),
    utils = require('cordova/utils'),
    exec = require('cordova/exec'),
    cordova = require('cordova');

function RegisterFileType() {
}

RegisterFileType.prototype.registerFileType = function(successCallback, errorCallback) {
    argscheck.checkArgs('fF', 'RegisterFileType.registerFileType', arguments);
    exec(successCallback, errorCallback, "RegisterFileType", "registerFileType", []);
};

module.exports = new RegisterFileType();
