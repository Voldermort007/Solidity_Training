// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TestOwner{
    address public owner;

    constructor(){
        owner=msg.sender;
    }

    modifier onlyowner(){
        require(msg.sender == owner, "Not_Owner");
        _;
    }

    function SetOwner(address _NewOwner) public onlyowner{
        require(_NewOwner != address(0), "Invalid_Owner");
        owner = _NewOwner;
    }

    function OnlyOwnerCanAccess() public onlyowner{
        //code
    }

    function AnyOneCanAccess () public{
        //code
    }
}
