pragma solidity ^0.4.13;

import './zeppelin/token/CappedToken.sol';
import './zeppelin/token/PausableToken.sol';

/// @title Xsure Token - Token code for our Xsure.nl Project
/// @author Jan Bolhuis, Wesley van Heije
//  Version 3, december 2017
//  This version is completely based on the Openzeppelin Solidity framework.
//
//  There will be a presale cap of 6.400.000 BPT Tokens
//  Minimum presale investment in Ether will be set at the start in the Presale contract; calculated on a weekly avarage for an amount of ~ 1000 Euro
//  Unsold presale tokens will be burnt, implemented as mintbale token as such that only sold tokens are minted.
//  Presale rate has a 33% bonus to the crowdsale to compensate the extra risk
//  The total supply of tokens (pre-sale + crowdsale) will be 49,600,000 BPT
//  Minimum crowdsale investment will be 0.1 ether
//  Mac cap for the crowdsale is 43,200,000 BPT
//  There is no bonus scheme for the crowdsale
//  Unsold Crowsdale tokens will be burnt, implemented as mintbale token as such that only sold tokens are minted.
//  On the amount tokens sold an additional 40% will be minted; this will be allocated to the Xsure company(20%) and the Xsure team(20%)
//  BPT tokens will be tradable straigt after the finalization of the crowdsale. This is implemented by being a pausable token that is unpaused at Crowdsale finalisation.


contract XsureToken is CappedToken, PausableToken {

    string public constant name                 = "Xsure";
    string public constant symbol               = "XSR3";
    uint public constant decimals               = 18;

    function XsureToken(uint256 _totalSupply) 
        CappedToken(_totalSupply) public {
            paused = true;
    }
}