
Description:    Concept of polymorphism with example 
************************************************************************/

program polymorphism;


// ADD_CODE: Write a class called "Packet" with property "data" of 32 bits and 
//           function "send" with return type int and expecting argument "data" 
//           of 32 bits. Inside the function "send" display "SENDING BASE PACKET"
class packet;
bit [31:0] data;
function int send(data);
	$display("SENDING BASE PACKET");
endfunction
endclass
// This is a Packet class, defining that there will 
// be different types of packets to be sent 



// ADD_CODE: Write a class called "Ethernet_packet" with property "ether_data" of 32 bits and 
//           function "send" with return type int and expecting argument "ether_data" 
//           of 32 bits. Inside the function "send" display "SENDING ETHERNET PACKET"
class Ethernet_packet;
bit [31:0] ether_data;
function int send(ether_data);
	$display("SENDING ETHERNET PACKET");
endfunction
endclass


// ADD_CODE: Write a class called "Token_packet" with property "token_data" of 32 bits and 
//           function "send" with return type int and expecting argument "token_data" 
//           of 32 bits. Inside the function "send" display "SENDING ETHERNET PACKET"
class Token_packet;
bit [31:0] token_data;
function int send(token_data);
	$display("SENDING ETHERNET PACKET");
endfunction
endclass

//ADD_CODE: Declare an array of 10 handles for Packet class as pkts[10]
packet pkts[10];  

//ADD_CODE: Declare an handle for Ethernet_packet class as ep and 
//          create object for it
 Ethernet_packet ep =new; 

//ADD_CODE: Declare an handle for Token_packet class as tp and 
//          create object for it
 
Token_packet tp =new;



initial 
  begin
// ADD_CODE: Make the base class handles point to objects "ep" and "tp".
//           i.e. pkt[0]  points to ether packet and pkt[1] points to token packet
pkt[0]=ep;   
pkt[1]=tp;
		

	// pkts[0].send(); is the same as calling ep.send(), but
	// the neat thing here is that a BFM only needs the 
	// base class handle, and doesn't need to be modifed
	// if the functionality or data features change!!

// ADD_CODE: Call function "send" using handles pkts[0] and pkts[1],
//           Also pass the value for "data" in the function's argument list
pkt[0].send(67);  
pkt[1].send(67);



end 
endprogram
