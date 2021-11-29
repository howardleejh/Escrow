// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract TokenB is ERC20, Ownable {
  constructor(uint256 initialSupply) ERC20('Token B', 'TKNB') {
    _mint(msg.sender, initialSupply);
  }

  function mint(address _to, uint256 _amount) external onlyOwner {
    _mint(_to, _amount);
  }

  function burn(address _from, uint256 _amount) external {
    _burn(_from, _amount);
  }
}
