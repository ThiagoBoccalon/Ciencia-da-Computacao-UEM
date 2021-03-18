library ieee;
use ieee.std_logic_1164.all;

package somador_package is
component xor_2	
port (x,y: in bit;
		  z: out bit	
			);
		
end component;
component or_3	
port (x,y,w: in bit;
		  z: out bit	
			);		
end component;
component and_2	
port (x,y: in bit;
		  z: out bit	
			);		
end component;
end somador_package;