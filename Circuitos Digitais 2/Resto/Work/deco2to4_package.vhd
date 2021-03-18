library ieee;
use ieee.std_logic_1164.all;

package deco2to4_package is
component not_1	
port (x: in bit;
		  z: out bit	
			);		
end component;
component and_2	
port (x,y: in bit;
		  z: out bit	
			);		
end component;
end deco2to4_package;

