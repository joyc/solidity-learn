// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract HelloWeb3 {
    string public _string = "Hello Web3!";
    uint256 public number = 5;

    // 固定长度的字节数组
    bytes32 public _byte32 = "MiniSolidity";
    bytes1 public _byte = _byte32[0];

    // 用enum将uint 0， 1， 2表示为Buy, Hold, Sell
    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    // 创建enum变量 action
    ActionSet action = ActionSet.Buy;

    // enum可以和uint显式的转换
    function enumToUint() external view returns (uint256) {
        return uint256(action);
    }
}
