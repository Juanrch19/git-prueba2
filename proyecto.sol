
pragma solidity >0.6.1 <0.7.0;


contract GenerarUsuarioConSuEdad{
    
    uint Edad;
    uint usuario;
    
    
    event Datos(string, uint Edad, string, uint usuario);
    event Fallo(string);
    
  function SetAge(uint AGE) public {
      
      Edad=2021-AGE;
  }
   
   
  function GenCode() public{
      
    if (Edad >= 18){
       
     usuario = uint(keccak256(abi.encodePacked(now, msg.sender))) %10000000 + Edad;
     
     emit Datos("Su edad es:",Edad, "Con usuario para ingreso es:",usuario);
     
     
    } else{
        
     emit Fallo("Usted no tiene edad para ingresar al edificio"); 
        
    }
       
     

  }