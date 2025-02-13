// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public SimpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        SimpleStorageArray.push(simpleStorage);
    }

    function sfstore(uint256 add, uint256 num) public {
        SimpleStorage obj = SimpleStorage(address(SimpleStorageArray[add]));
        obj.store(num);
    }

    function sfget(uint256 add) public view returns (uint256){
        SimpleStorage obj = SimpleStorage(address(SimpleStorageArray[add]));
        return obj.retrieve();


    }
}
