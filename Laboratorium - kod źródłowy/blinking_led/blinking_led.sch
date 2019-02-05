VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL led_0
        SIGNAL clock
        SIGNAL button_0
        SIGNAL XLXN_6
        PORT Output led_0
        PORT Input clock
        PORT Input button_0
        BEGIN BLOCKDEF ibuf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF frequency_divider
            TIMESTAMP 2019 2 4 18 42 53
            LINE N 64 0 0 0 
            LINE N 64 -64 0 -64 
            LINE N 352 -64 416 -64 
            LINE N 64 -80 80 -64 
            LINE N 64 -48 80 -64 
            RECTANGLE N 64 -128 352 64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 ibuf
            PIN I clock
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 obuf
            PIN I XLXN_2
            PIN O led_0
        END BLOCK
        BEGIN BLOCK XLXI_4 frequency_divider
            BEGIN ATTR DIVIDER 5
                EDITNAME all:1 sch:0
                VHDL all:0 gm:1
                VALUETYPE Integer 1 2147483647
            END ATTR
            PIN clock_in XLXN_1
            PIN frequency_out XLXN_2
            PIN reset_in XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_5 ibuf
            PIN I button_0
            PIN O XLXN_6
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_3 1120 272 R0
        INSTANCE XLXI_2 336 272 R0
        BEGIN BRANCH XLXN_1
            WIRE 560 240 624 240
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1040 240 1120 240
        END BRANCH
        BEGIN BRANCH led_0
            WIRE 1344 240 1376 240
        END BRANCH
        IOMARKER 1376 240 led_0 R0 28
        BEGIN BRANCH clock
            WIRE 304 240 336 240
        END BRANCH
        IOMARKER 304 240 clock R180 28
        BEGIN INSTANCE XLXI_4 624 304 R0
        END INSTANCE
        INSTANCE XLXI_5 336 336 R0
        BEGIN BRANCH button_0
            WIRE 304 304 336 304
        END BRANCH
        IOMARKER 304 304 button_0 R180 28
        BEGIN BRANCH XLXN_6
            WIRE 560 304 624 304
        END BRANCH
    END SHEET
END SCHEMATIC
