module packed_and_unpacked();

// ADD_CODE:declare a packed array packed_array of 8 bits and initialize it to 8'hAA
bit [7:0] packed_array = 8'hAA;

// ADD_CODE:declare an unpacked array unpacked_array of 8 bits and initialize it to '{0,0,0,0,0,0,0,1}
bit unpacked_array [7:0] =  '{0,0,0,0,0,0,0,1};

initial 
 begin
  //ADD_CODE:display the 0th element of the packed array
  $display(" the 0th element of the packed array %0d", packed_array[0]);
  //ADD_CODE:display the 0th element of the unpacked array
  $display(" the 0th element of the unpacked array %0d", unpacked_array[0]);
  //ADD_CODE:display the whole packed array. Is it possible???
   $display(" %0p", packed_array);
   
  //ADD_CODE:display the whole unpacked array. Is it possible??? 
   $display(" %0p", unpacked_array);
   
  #1 $finish;
end

endmodule
