library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity instruction_memory is
	port (
		read_address: in STD_LOGIC_VECTOR (31 downto 0);
		ck: in STD_LOGIC;
		instruction: out STD_LOGIC_VECTOR (31 downto 0)
	);
end instruction_memory;


architecture behavioral of instruction_memory is	  

type mem_array is array(0 to 31) of STD_LOGIC_VECTOR (31 downto 0);

signal data_mem: mem_array := (
    "00000000000000000000000000000001", -- initialize data instruction_memory
    "00000000000000000000000000000000", -- mem 1
    "00000000000000000000000000000001",
    "00000000000000000000000000000000",
    "00000000000000000000000000000001",
    "00000000000000000000000000000000",
    "00000000000000000000000000000001",
    "00000000000000000000000000000000",
    "00000000000000000000000000000001",
    "00000000000000000000000000000000", 
    "00000000000000000000000000000001", -- mem 10 
    "00000000000000000000000000000000", 
    "00000000000000000000000000000001",
    "00000000000000000000000000000000",
    "00000000000000000000000000000001",
    "00000000000000000000000000000000",
    "00000000000000000000000000000001",
    "00000000000000000000000000000000",
    "00000000000000000000000000000001",
    "00000000000000000000000000000000",  
    "00000000000000000000000000000001", -- mem 20
    "00000000000000000000000000000000",
    "00000000000000000000000000000001",
    "00000000000000000000000000000000",
    "00000000000000000000000000000001", 
    "00000000000000000000000000000000",
    "00000000000000000000000000000001",
    "00000000000000000000000000000000",
    "00000000000000000000000000000001",
    "00000000000000000000000000000000", 
    "00000000000000000000000000000001", -- mem 30
    "00000000000000000000000000000000");

begin

instruction <= data_mem(to_integer(unsigned(read_address(31 downto 2))));

end behavioral;
