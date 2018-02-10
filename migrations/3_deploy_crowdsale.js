var SafeMath = artifacts.require("./zeppelin/math/SafeMath.sol");
var XsureToken = artifacts.require("./XsureToken.sol");
var XsureCrowdsale = artifacts.require("./XsureCrowdsale.sol");

let settings = require('../tokenSettings.json');

module.exports = function(deployer, network, accounts) {

    // Account & Wallet configuration
    var admin = accounts[0];
    var refundVault = accounts[0];
    var crowdsaleRate = new web3.BigNumber(settings.crowdsaleRatio);

    // Deploying..
    deployer.link(SafeMath, XsureCrowdsale);
    deployer.deploy(XsureCrowdsale,
                    settings.crowdsaleCap,
                    settings.crowdsaleStartTimestamp,
                    settings.crowdsaleEndTimestamp,
                    crowdsaleRate,
                    settings.companyFundWallet,
                    XsureToken.address,
                    settings.companyTokenVault,
                    settings.companyTokenVault);
}