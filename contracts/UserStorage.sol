// SPDX-License-Identifier: MIT
// 각 solidity 파일의 첫번째 줄에는 버전에 대한 정보를 넣어준다.
pragma solidity 0.8.3;

//import "filename"; filename 을 import

// 스마트 컨트랙트 정의
contract UserStorage {
  mapping(address => uint) userData; // 상태 변수 userData 는 address

  function set(uint x) public {
    userData[msg.sender] = x;
  }

  function get() public view returns (uint) {
    return userData[msg.sender];
  }

  function getUserData(address user) public view returns (uint) {
    return userData[user];
  }
}
