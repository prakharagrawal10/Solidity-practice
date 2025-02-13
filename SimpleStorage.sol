// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    uint256 fav;
    bool favbool;

    struct People{
        uint256 fav;
        string name;
    }

    People[] public people;
    mapping (string => uint256) public nametofav;

    function store(uint256 _fav) public {
        fav = _fav;
    }

    function retrieve() public view returns (uint256) {
        return fav;
    }

    function addPerson(string memory _name, uint256 _fav) public  {
        people.push(People(_fav,_name));
        nametofav[_name]=_fav;
    }
}
