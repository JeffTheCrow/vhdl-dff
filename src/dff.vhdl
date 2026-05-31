LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY dff is
    port (
        CLK : in std_logic;
        RST : in std_logic;
        D : in std_logic;
        Q : out std_logic
    );
END ENTITY;

ARCHITECTURE rtl of dff is

begin
    process (CLK, RST)
        begin
    if (rst = '1') then
        Q <= '0';
    elsif rising_edge(clk) then
        Q <= D;
    end if;
    end process;

end architecture;