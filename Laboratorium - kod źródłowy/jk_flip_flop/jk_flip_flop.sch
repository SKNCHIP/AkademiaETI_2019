VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL button(2:0)
        SIGNAL XLXN_45
        SIGNAL XLXN_44
        SIGNAL XLXN_43
        SIGNAL XLXN_3
        SIGNAL XLXN_10
        SIGNAL clock
        SIGNAL button(1)
        SIGNAL button(0)
        SIGNAL button(2)
        SIGNAL led_0
        PORT Input button(2:0)
        PORT Input clock
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
            PIN CLR XLXN_45
            PIN J XLXN_43
            PIN K XLXN_44
            PIN Q XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_2 ibuf
            PIN I button(0)
            PIN O XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_3 ibuf
            PIN I button(1)
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_4 ibuf
            PIN I button(2)
            PIN O XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_5 ibuf
            PIN I clock
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_6 obuf
            PIN I XLXN_10
            PIN O led_0
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_45
            WIRE 768 560 784 560
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 768 336 784 336
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 768 272 784 272
        END BRANCH
        INSTANCE XLXI_1 784 592 R0
        BEGIN BRANCH XLXN_3
            WIRE 768 464 784 464
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1168 336 1184 336
        END BRANCH
        IOMARKER 528 464 clock R180 28
        BEGIN BRANCH clock
            WIRE 528 464 544 464
        END BRANCH
        BUSTAP 416 336 512 336
        BUSTAP 416 272 512 272
        INSTANCE XLXI_2 544 304 R0
        INSTANCE XLXI_3 544 368 R0
        BEGIN BRANCH button(1)
            WIRE 512 336 528 336
            WIRE 528 336 544 336
            BEGIN DISPLAY 528 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH button(0)
            WIRE 512 272 528 272
            WIRE 528 272 544 272
            BEGIN DISPLAY 528 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 544 592 R0
        BUSTAP 416 560 512 560
        INSTANCE XLXI_5 544 496 R0
        BEGIN BRANCH button(2)
            WIRE 512 560 528 560
            WIRE 528 560 544 560
            BEGIN DISPLAY 528 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 384 224 button(2:0) R180 28
        BEGIN BRANCH button(2:0)
            WIRE 384 224 416 224
            WIRE 416 224 416 272
            WIRE 416 272 416 336
            WIRE 416 336 416 560
        END BRANCH
        INSTANCE XLXI_6 1184 368 R0
        BEGIN BRANCH led_0
            WIRE 1408 336 1424 336
        END BRANCH
        IOMARKER 1424 336 led_0 R0 28
    END SHEET
END SCHEMATIC
