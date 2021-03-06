-------------------------------------------------------------------------------
--! @file dpRamSplxNbe-e.vhd
--
--! @brief Simplex Dual Port Ram without byteenables entity
--
--! @details This is the Simplex DPRAM without byteenables entity.
--!          The DPRAM has one write and one read port only.
--
-------------------------------------------------------------------------------
--
--    (c) B&R Industrial Automation GmbH, 2014
--
--    Redistribution and use in source and binary forms, with or without
--    modification, are permitted provided that the following conditions
--    are met:
--
--    1. Redistributions of source code must retain the above copyright
--       notice, this list of conditions and the following disclaimer.
--
--    2. Redistributions in binary form must reproduce the above copyright
--       notice, this list of conditions and the following disclaimer in the
--       documentation and/or other materials provided with the distribution.
--
--    3. Neither the name of B&R nor the names of its
--       contributors may be used to endorse or promote products derived
--       from this software without prior written permission. For written
--       permission, please contact office@br-automation.com
--
--    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
--    FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
--    COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
--    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
--    BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
--    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
--    LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
--    ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--    POSSIBILITY OF SUCH DAMAGE.
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! Common library
library libcommon;
--! Use common library global package
use libcommon.global.all;

entity dpRamSplxNbe is
    generic (
        --! Word width [bit]
        gWordWidth      : natural := 16;
        --! Number of words
        gNumberOfWords  : natural := 1024;
        --! Word width [bit]
        --! Initialization file
        gInitFile       : string := "UNUSED"
    );
    port (
        -- PORT A
        --! Clock of port A
        iClk_A          : in std_logic;
        --! Enable of port A
        iEnable_A       : in std_logic;
        --! Write enable of port A
        iWriteEnable_A  : in std_logic;
        --! Address of port A
        iAddress_A      : in std_logic_vector(logDualis(gNumberOfWords)-1 downto 0);
        --! Writedata of port A
        iWritedata_A    : in std_logic_vector(gWordWidth-1 downto 0);
        -- PORT B
        --! Clock of port B
        iClk_B          : in std_logic;
        --! Enable of port B
        iEnable_B       : in std_logic;
        --! Address of port B
        iAddress_B      : in std_logic_vector(logDualis(gNumberOfWords)-1 downto 0);
        --! Readdata of port B
        oReaddata_B     : out std_logic_vector(gWordWidth-1 downto 0)
    );
end dpRamSplxNbe;
