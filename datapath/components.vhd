library ieee;
use ieee.std_logic_1164.all;

package components is
    component adder
        port (a: in std_logic_vector(31 downto 0);
              b: in std_logic_vector(31 downto 0);
              y: out std_logic_vector(31 downto 0));
    end component;

    component ALU
        port (a: in std_logic_vector(31 downto 0);
              b: in std_logic_vector(31 downto 0);
              alucontrol: in std_logic_vector(2 downto 0);
              zero: out std_logic;
              result: out std_logic_vector(31 downto 0));
    end component;

    component dmem 
        port (a: in std_logic_vector(31 downto 0);
              wd: in std_logic_vector(31 downto 0);
              clk, we: in std_logic;
              rd: out std_logic_vector(31 downto 0));
    end component;

    component flopr
        port (d: in std_logic_vector(31 downto 0);
              clk, reset: in std_logic;
              q: out std_logic_vector(31 downto 0));
    end component;

    component imem
        port (a: in std_logic_vector(5 downto 0);
              y: out std_logic_vector(31 downto 0));
    end component;

    component mux2 
        generic (N: integer:=32);
        port (d0, d1: in std_logic_vector(N-1 downto  0);
              s: in std_logic;
              y: out std_logic_vector(N-1 downto 0));
    end component;

    component regfile
        port (ra1, ra2, wa3: in std_logic_vector(4 downto 0);
              wd3: in std_logic_vector(31 downto 0);
              we3, clk: in std_logic;
              rd1, rd2: out std_logic_vector(31 downto 0));
    end component;

    component signext
        port (a: in std_logic_vector(0 to 15);
              y: out std_logic_vector(0 to 31));
    end component;

    component sl2
        port (a: in std_logic_vector(0 to 31);
              y: out std_logic_vector(0 to 31));
    end component;

end package;
