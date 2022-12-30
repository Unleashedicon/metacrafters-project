pragma solidity ^0.6.0;
contract Transaction{
    uint public balance;
constructor() public {
        balance = 200;
    }
    function SetBalance(uint _newbalance) public{
        require(_newbalance > 0, "Your balance is not greater than 0");
        balance = _newbalance;
    }
    function deposit(uint _amount) public{
        assert(_amount > 0);
        balance += _amount;
    }
    function withdraw(uint _amount) public{
        require(_amount <= balance, "Amount is less than your balance");
        balance -= _amount;
        revert("Transaction failed");
    }
}