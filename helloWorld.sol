contract HelloWorld {
	adderess public owner;
	//making a variable to hold the adderess of the owner
	mapping (adderess => uint) balances;
	//this is an hashtable of adderess to a balance value of type uint
	function HelloWorld(){
		owner = msg.sender;
		//assigning the adderess of the sender to the one of the owner
		balances[owner] = 1000;
		//giving the owner a certain amount by accessing the owner in the balances array
	}
	function transfer(adderess _to, uint _value) return (bool success) {
		if (balances[msg.sender] < _value) {
			return false;//if the value is more than what the sender intended, then the function returns a bool of type false
		}
		balances[msg.sender] -= _value;
		//remove the amount transfered from the sender
		balances[_to] += value;
		//give that much amount to the reciever
		return true;
		}
	function getBalance(adderess _user) constant returns (uint balance) {
		return balances[_user];
		//showing us how much each user has and which user is specified by the main function or drivers using the use of the smart contract
	}
}
