LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity dff_tb is
end entity;

architecture stim of dff_tb is

    signal CLK : std_logic := '0';
    signal RST: std_logic := '1';
    signal D : std_logic := '0';
    signal Q : std_logic;

    signal expected_Q : std_logic := '0';

begin

    uut : entity work.dff
        port map(
            clk => CLK,
            rst => RST,
            D => D,
            Q => Q
        );
    
    clk_process : process
        begin
            while true loop
                CLK <= '0';
                wait for 10 ns;
                CLK <= '1';
                wait for 10 ns;
            end loop;
        end process;
    
    stim : process
    begin

        RST <= '1';
        wait for 25 ns;

        expected_Q <= '0';
        wait for 10 ns;
        assert Q = expected_Q
            report "Reset test failed!"
            severity error;

        RST <= '0';

        D <= '1';
        wait until rising_edge(clk);
        wait for 0 ns;

        expected_Q <= '1';
        wait for 10 ns;
        assert Q = expected_Q
            report "D = 1 test failed!"
            severity error;

        D <= '0';
        wait until rising_edge(clk);
        wait for 0 ns;

        expected_Q <= '0';
        wait for 10 ns;
        assert Q = expected_Q
            report "D = 0 test failed!"
            severity error;

        report "All tests passed!"
            severity note;

    end process;
end architecture;
