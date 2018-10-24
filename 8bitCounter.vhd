library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador is 
port(
     CLK,CLR,En : in std_logic;
     SR : out std_logic_vector(7 downto 0)
);
end Contador;

architecture behavioral of Contador is
signal C : unsigned(7 downto 0); 
begin
process(CLK,CLR)
begin
if(CLR = '1')then
  C <= (others=>'0');
elsif(CLLK'Event and CLLK = '1')then
  if(En = '1')then
    C <= C + 1;
end if;
end if;
end process;
SR <= std_logic_vector(C);
end behavioral;
