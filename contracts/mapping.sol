// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract Mapping {
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint){
        return myMap[_addr];
    }

    function gset(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

     function remove(address _addr) public{
        delete myMap[_addr];
    }
}

//0x95222290DD7278Aa3Ddd389Cc1E1d165CC4BAfe5 address per fare le prove