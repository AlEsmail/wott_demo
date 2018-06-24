pragma solidity ^0.4.19;

contract TokenCuratedRegistry {
    
    //---------------------------------information--------------------------------//
     
    //  registery information
    SmartDevice[] public devicesInRegistery;
    uint public registerySize;
    
    
    // manufacturer information
    address manufacturerAddress;
    uint manufacturerStakes;
    
    
    // challanger information
    address challangerAddress;
    uint challangerStakes;
    
    
    // device that needs to be added
    SmartDevice deviceToAddToRegistry;
    
    // voting
    uint forVote;
    uint againstVote;
    uint constant votesToWin = 5;
    //----------------------------------functions---------------------------------//
    
    /*  
    structure to store information 
    about smart device
    */
    struct SmartDevice {
        uint id;
        string name;
        string manufacturer;
        string softwareVersion;
    }
   
    
    // constructor
    function TokenCuratedRegistry() payable {
        registerySize = 0;
    }
 
    
    /*
    add device to the registery and stake
    5 ethers form the manufacturer side
    */
    function addDevice(uint dId, string dName, string dManufacturer, string dSoftwareVersion) public payable {
        deviceToAddToRegistry = SmartDevice(dId, dName, dManufacturer, dSoftwareVersion);
        devicesInRegistery.push(deviceToAddToRegistry);
        registerySize++;
        
        manufacturerAddress = msg.sender;
        manufacturerStakes = msg.value;
    }

    
    /*
    white hat hacker challanges device and passes in the
    device ID and its then voting is done to see if the 
    person is actually telling the truth.
    
    if right the manufacturer loses his stakes
    */
    function challangeDevice() public payable {
        
        challangerAddress = msg.sender;
        challangerStakes = msg.value;
        
    }
    
   
   //---------------------------Voting functions---------------------------//
    function voteForChallange() public {
        forVote++;
        checkVotingPoll();
    }
    
    function voteAgainstChallange() public {
        againstVote++;
        checkVotingPoll();
    }    
    
    
    function checkVotingPoll() internal {
        if (forVote > votesToWin) {
            challangerAddress.transfer(challangerStakes + manufacturerStakes);        
        } else if (againstVote > votesToWin){
            manufacturerAddress.transfer(challangerStakes + manufacturerStakes);
        }
    }
    
    
}
