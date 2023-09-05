module basic_data_types_simulation();
  // Declaring and initializing the variables
  bit [ 7:0] data = 8'b0101_01xz;
  logic [ 7:0] address = 8'b010z_01xz;
  integer write_addr = 32'b01x1_01xz_01xz_01xz;
  int read_addr = 32'b01x0_01xz_01xz_01xz;
  byte wr_enable = 8'b0101_01xz;
  reg rd_enable = 8'b0101_01xz;
initial
 begin

  // Displaying the values of the variables for different data types
  $display ("Showing outputs for different datatypes:\n");
  $display ("Value of bit data = %b\n", data);
  $display ("Value of logic address = %b\n", address);
  $display ("Value of integer write address = %b\n", write_addr);
  $display ("Value of int read address = %b\n", read_addr);
  $display ("Value of byte wr_enable = %b\n", wr_enable);  
  $display ("value of reg rd_enable = %b\n", rd_enable);
  $display ("Output for bit + integer is = %b\n", data + address);
  $display ("Output for logic + int is = %b\n", write_addr + read_addr);

  // Re-assigning the variables for the different data types
  data = 10;
  address = 20;
  write_addr = 30;
  read_addr = 40;
  wr_enable = 16'habcx;
  rd_enable = 16'habcx;

  // Displaying the values of the variables for different data types after re-assigning
  $display ("After changing values, output for bit + logic is = %b\n", data + address);
  $display ("After changing values, output for integer + int is = %b\n", write_addr + read_addr);
  $display ("After changing values of byte wr_enable = %b\n", wr_enable);  
  $display ("After changing values of reg rd_enable = %b\n", rd_enable);
 end
endmodule
