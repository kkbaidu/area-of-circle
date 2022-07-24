//SPDX License-identifier : Unregisted
pragma solidity ^0.6.0;

contract AreaOfCircle {
    function area(int128 r) public view returns (int128) {
        int128 areacircle;
        areacircle = r*(3.142 ** 2);
        return areacircle;
    }
}