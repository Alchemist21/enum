pragma solidity ^0.4.24;

contract Betting {
   enum State {Open, Close} //open=0 and close-1
   State public state;

   struct Bettor {
     uint32 value;
     string name;
   }
   struct Game {
     State state;  
     string name;    
       
   }    
   function openGame() public {     
     state=State.Open;
   
   }
   function closeGame() public {
       state=State.Close;
   }
   function getState() public view returns (State){
       return state;
   }
   
}
