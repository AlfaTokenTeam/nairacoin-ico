pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Nairacoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Nairacoin(address _owner)  UpgradeableToken(_owner) {
    name = "Nairacoin";
    symbol = "NGN";
    totalSupply = 5000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}