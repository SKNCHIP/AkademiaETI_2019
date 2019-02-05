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
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL clock
        SIGNAL XLXN_10
        SIGNAL button(0)
        SIGNAL button(1)
        SIGNAL button(2)
        SIGNAL button(2:0)
        SIGNAL led_0
        PORT Input clock
        PORT Input button(2:0)
        PORT Output led_0
        BEGIN BLOCKDEF fjkc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -320 64 -320 
            LINE N 384 -256 320 -256 
            LINE N 0 -256 64 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 64 -384 320 -64 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_1 fjkc
            PIN C XLXN_3
            PIN CLR XLXN_4
            PIN J XLXN_1
            PIN K XLXN_2
            PIN Q XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_2 ibuf
            PIN I button(0)
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 ibuf
            PIN I button(1)
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_4 ibuf
            PIN I button(2)
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_6 obuf
            PIN I XLXN_10
            PIN O led_0
        END BLOCK
        BEGIN BLOCK XLXI_5 ibuf
            PIN I clock
            PIN O XLXN_3
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 784 592 R0
        INSTANCE XLXI_2 480 304 R0
        INSTANCE XLXI_3 480 368 R0
        INSTANCE XLXI_4 480 592 R0
        INSTANCE XLXI_6 1264 368 R0
        INSTANCE XLXI_5 480 496 R0
        BEGIN BRANCH XLXN_1
            WIRE 704 272 784 272
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 704 336 784 336
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 704 464 784 464
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 704 560 784 560
        END BRANCH
        BEGIN BRANCH clock
            WIRE 448 464 480 464
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1168 336 1264 336
        END BRANCH
        BEGIN BRANCH button(0)
            WIRE 384 272 400 272
            WIRE 400 272 480 272
            BEGIN DISPLAY 400 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH button(1)
            WIRE 384 336 400 336
            WIRE 400 336 480 336
            BEGIN DISPLAY 400 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH button(2)
            WIRE 384 560 400 560
            WIRE 400 560 480 560
            BEGIN DISPLAY 400 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 288 560 384 560
        BUSTAP 288 336 384 336
        BUSTAP 288 272 384 272
        BEGIN BRANCH button(2:0)
            WIRE 256 112 288 112
            WIRE 288 112 288 272
            WIRE 288 272 288 336
            WIRE 288 336 288 560
        END BRANCH
        BEGIN BRANCH led_0
            WIRE 1488 336 1520 336
        END BRANCH
        IOMARKER 448 464 clock R180 28
        IOMARKER 256 112 button(2:0) R180 28
        IOMARKER 1520 336 led_0 R0 28
    END SHEET
END SCHEMATIC
