VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_21
        SIGNAL buffer_in(0)
        SIGNAL buffer_in(1)
        SIGNAL buffer_in(2)
        SIGNAL buffer_in(3)
        SIGNAL buffer_out(2)
        SIGNAL buffer_out(1)
        SIGNAL buffer_out(0)
        SIGNAL buffer_out(3)
        SIGNAL buffer_out(3:0)
        SIGNAL buffer_in(3:0)
        PORT Output buffer_out(3:0)
        PORT Input buffer_in(3:0)
        BEGIN BLOCKDEF obuf4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 64 -128 64 -192 
            LINE N 128 -160 64 -128 
            LINE N 64 -192 128 -160 
            LINE N 64 -192 64 -256 
            LINE N 128 -224 64 -192 
            LINE N 64 -256 128 -224 
            LINE N 224 -224 128 -224 
            LINE N 224 -160 128 -160 
            LINE N 0 -96 64 -96 
            LINE N 224 -96 128 -96 
            LINE N 64 -64 64 -128 
            LINE N 128 -96 64 -64 
            LINE N 64 -128 128 -96 
            LINE N 0 -160 64 -160 
            LINE N 0 -224 64 -224 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 obuf4
            PIN I0 buffer_in(0)
            PIN I1 buffer_in(1)
            PIN I2 buffer_in(2)
            PIN I3 buffer_in(3)
            PIN O0 buffer_out(0)
            PIN O1 buffer_out(1)
            PIN O2 buffer_out(2)
            PIN O3 buffer_out(3)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 480 432 R0
        BEGIN BRANCH buffer_in(0)
            WIRE 448 208 464 208
            WIRE 464 208 480 208
            BEGIN DISPLAY 464 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH buffer_in(1)
            WIRE 448 272 464 272
            WIRE 464 272 480 272
            BEGIN DISPLAY 464 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH buffer_in(2)
            WIRE 448 336 464 336
            WIRE 464 336 480 336
            BEGIN DISPLAY 464 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH buffer_in(3)
            WIRE 448 400 464 400
            WIRE 464 400 480 400
            BEGIN DISPLAY 464 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH buffer_out(2)
            WIRE 704 336 720 336
            WIRE 720 336 736 336
            BEGIN DISPLAY 720 336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH buffer_out(1)
            WIRE 704 272 720 272
            WIRE 720 272 736 272
            BEGIN DISPLAY 720 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH buffer_out(0)
            WIRE 704 208 720 208
            WIRE 720 208 736 208
            BEGIN DISPLAY 720 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH buffer_out(3)
            WIRE 704 400 720 400
            WIRE 720 400 736 400
            BEGIN DISPLAY 720 400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 336 736 336
        BUSTAP 832 400 736 400
        BUSTAP 832 272 736 272
        BUSTAP 832 208 736 208
        BEGIN BRANCH buffer_out(3:0)
            WIRE 832 160 864 160
            WIRE 832 160 832 192
            WIRE 832 192 832 208
            WIRE 832 208 832 272
            WIRE 832 272 832 336
            WIRE 832 336 832 352
            WIRE 832 352 832 400
        END BRANCH
        BEGIN BRANCH buffer_in(3:0)
            WIRE 320 160 352 160
            WIRE 352 160 352 192
            WIRE 352 192 352 208
            WIRE 352 208 352 272
            WIRE 352 272 352 336
            WIRE 352 336 352 400
        END BRANCH
        BUSTAP 352 208 448 208
        BUSTAP 352 272 448 272
        BUSTAP 352 336 448 336
        BUSTAP 352 400 448 400
        IOMARKER 320 160 buffer_in(3:0) R180 28
        IOMARKER 864 160 buffer_out(3:0) R0 28
    END SHEET
END SCHEMATIC
