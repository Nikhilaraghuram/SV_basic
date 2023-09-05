
Description:    Concept of class constructor with example 
************************************************************************/
//ADD_CODE: Declare a class called "packet" with property length of int data type
//          Explicitly override the class constructor-function new() by passing l 
//          of int data type as an argument. Inside the function new() make lenght 
//          equal to l.
class packet;
int length;
function new;
int l;
length=1;
endfunction
endclass



program constructor;
    
 initial
  begin
// ADD_CODE: Declare handle pkt to the class packet
   packet pkt;
// AAD_CODE: Create object for the handle pkt using function new() and
//           change the value of length to 10
    pkt=new();
pkt.length=10;


//ADD_CODE: Display the value of length
    $display(" value of length is %0d", pkt.length);
  end
endprogram

