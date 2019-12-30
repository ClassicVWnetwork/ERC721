pragma solidity ^0.5.0;
//import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract my721 is ERC721{

	mapping(address => uint) tokens;

	function approval(address _owner, address _approved,uint _tokenId){
		require(tokens[_owner]==_tokenId);
		tokens[_approved]=_tokenId;
	}
	function transfer(address _to, uint _amount) public{
		require(_amount <= tokens[msg.sender]);
		tokens[msg.sender]-=_amount;
		tokens[_to]+=_amount;
	}
	function balanceOf(address _owner) public view returns (uint){
		return tokens[_owner];
	}
	function ownerOf(uint _tokenId) public view returns(address){
		return tokens[_id].address;
	}
	function TransferFrom(address _from, address _to, uint _tokenId) payable{

	}
	function approve(address _approved, uint _tokenId) payable{

	}

	function mint(address _to, uint _id) public{
		super._mint(_to,_id);
	}

