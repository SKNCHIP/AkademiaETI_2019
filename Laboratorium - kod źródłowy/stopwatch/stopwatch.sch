VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL button(0)
        SIGNAL button(1)
        SIGNAL button(2)
        SIGNAL button(2:0)
        SIGNAL XLXN_2
        SIGNAL XLXN_15
        SIGNAL XLXN_24
        SIGNAL clock
        SIGNAL XLXN_1
        SIGNAL digit_0(3:0)
        SIGNAL XLXN_26
        SIGNAL digit_2(3:0)
        SIGNAL XLXN_141
        SIGNAL XLXN_142
        SIGNAL XLXN_143
        SIGNAL XLXN_167(7:0)
        SIGNAL led7seg_segment(7:0)
        SIGNAL XLXN_174
        SIGNAL XLXN_178(3:0)
        SIGNAL XLXN_180(3:0)
        SIGNAL display_catodes_out(3:0)
        SIGNAL display_catodes_out(0)
        SIGNAL display_catodes_out(1)
        SIGNAL display_catodes_out(2)
        SIGNAL display_catodes_out(3)
        SIGNAL led7seg_anode(0)
        SIGNAL led7seg_anode(1)
        SIGNAL led7seg_anode(2)
        SIGNAL led7seg_anode(3)
        SIGNAL led7seg_anode(3:0)
        PORT Input button(2:0)
        PORT Input clock
        PORT Output led7seg_segment(7:0)
        PORT Output led7seg_anode(3:0)
        BEGIN BLOCKDEF frequency_divider
            TIMESTAMP 2019 2 4 18 42 53
            LINE N 64 0 0 0 
            LINE N 64 -64 0 -64 
            LINE N 352 -64 416 -64 
            LINE N 64 -80 80 -64 
            LINE N 64 -48 80 -64 
            RECTANGLE N 64 -128 352 64 
        END BLOCKDEF
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF ibuf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF counter_modulo_10
            TIMESTAMP 2019 2 4 19 44 39
            RECTANGLE N 64 -192 400 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 80 -160 64 -176 
            LINE N 80 -160 64 -144 
            RECTANGLE N 400 -172 464 -148 
            LINE N 400 -160 464 -160 
            LINE N 400 -32 464 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF display_led7seg_controler
            TIMESTAMP 2019 2 4 21 7 22
            RECTANGLE N 64 -320 544 0 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 544 -300 608 -276 
            LINE N 544 -288 608 -288 
            RECTANGLE N 544 -44 608 -20 
            LINE N 544 -32 608 -32 
            LINE N 80 -288 64 -304 
            LINE N 80 -288 64 -272 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            RECTANGLE N 0 -44 64 -20 
            RECTANGLE N 128 -44 224 -20 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_9 ibuf
            PIN I button(0)
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_10 ibuf
            PIN I button(1)
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_14 ibuf
            PIN I button(2)
            PIN O XLXN_143
        END BLOCK
        BEGIN BLOCK XLXI_2 fjkc
            PIN C XLXN_174
            PIN CLR XLXN_17
            PIN J XLXN_16
            PIN K XLXN_15
            PIN Q XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_11 gnd
            PIN G XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I XLXN_2
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_4 ibuf
            PIN I clock
            PIN O XLXN_174
        END BLOCK
        BEGIN BLOCK XLXI_1 frequency_divider
            BEGIN ATTR DIVIDER 16
                EDITNAME all:1 sch:0
                VHDL all:0 gm:1
                VALUETYPE Integer 1 2147483647
            END ATTR
            PIN clock_in XLXN_174
            PIN frequency_out XLXN_24
            PIN reset_in XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_12 counter_modulo_10
            PIN clock_in XLXN_174
            PIN count_up_in XLXN_24
            PIN reset_in XLXN_143
            PIN counter_out(3:0) digit_0(3:0)
            PIN overflow_out XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_13 counter_modulo_10
            PIN clock_in XLXN_174
            PIN count_up_in XLXN_26
            PIN reset_in XLXN_143
            PIN counter_out(3:0) XLXN_180(3:0)
            PIN overflow_out XLXN_141
        END BLOCK
        BEGIN BLOCK XLXI_59 counter_modulo_10
            PIN clock_in XLXN_174
            PIN count_up_in XLXN_141
            PIN reset_in XLXN_143
            PIN counter_out(3:0) digit_2(3:0)
            PIN overflow_out XLXN_142
        END BLOCK
        BEGIN BLOCK XLXI_60 counter_modulo_10
            PIN clock_in XLXN_174
            PIN count_up_in XLXN_142
            PIN reset_in XLXN_143
            PIN counter_out(3:0) XLXN_178(3:0)
            PIN overflow_out
        END BLOCK
        BEGIN BLOCK XLXI_73 display_led7seg_controler
            PIN clock_in XLXN_174
            PIN digit_0_in(3:0) digit_0(3:0)
            PIN digit_1_in(3:0) XLXN_180(3:0)
            PIN digit_2_in(3:0) digit_2(3:0)
            PIN digit_3_in(3:0) XLXN_178(3:0)
            PIN display_segments_out(7:0) XLXN_167(7:0)
            PIN display_catodes_out(3:0) display_catodes_out(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_76 obuf8
            PIN I(7:0) XLXN_167(7:0)
            PIN O(7:0) led7seg_segment(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_84 obuf4
            PIN I0 display_catodes_out(0)
            PIN I1 display_catodes_out(1)
            PIN I2 display_catodes_out(2)
            PIN I3 display_catodes_out(3)
            PIN O0 led7seg_anode(0)
            PIN O1 led7seg_anode(1)
            PIN O2 led7seg_anode(2)
            PIN O3 led7seg_anode(3)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_16
            WIRE 624 1952 704 1952
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 624 2240 704 2240
        END BRANCH
        BUSTAP 256 2240 352 2240
        BUSTAP 256 1952 352 1952
        BEGIN BRANCH button(0)
            WIRE 352 1952 384 1952
            WIRE 384 1952 400 1952
            BEGIN DISPLAY 384 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH button(1)
            WIRE 352 2240 384 2240
            WIRE 384 2240 400 2240
            BEGIN DISPLAY 384 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 400 1984 R0
        INSTANCE XLXI_10 400 2272 R0
        INSTANCE XLXI_14 400 2496 R0
        BEGIN BRANCH button(2)
            WIRE 352 2464 368 2464
            WIRE 368 2464 400 2464
            BEGIN DISPLAY 368 2464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH button(2:0)
            WIRE 208 1872 256 1872
            WIRE 256 1872 256 1952
            WIRE 256 1952 256 2240
            WIRE 256 2240 256 2464
        END BRANCH
        BUSTAP 256 2464 352 2464
        INSTANCE XLXI_2 704 2272 R0
        BEGIN BRANCH XLXN_2
            WIRE 1088 2016 1120 2016
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 672 2016 672 2032
            WIRE 672 2016 704 2016
        END BRANCH
        INSTANCE XLXI_11 608 2160 R0
        INSTANCE XLXI_3 1152 2016 R270
        BEGIN BRANCH XLXN_24
            WIRE 1232 1488 1280 1488
        END BRANCH
        BEGIN BRANCH clock
            WIRE 208 1168 320 1168
        END BRANCH
        INSTANCE XLXI_4 320 1200 R0
        BEGIN INSTANCE XLXI_1 816 1552 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 768 1552 768 1776
            WIRE 768 1776 1120 1776
            WIRE 1120 1776 1120 1792
            WIRE 768 1552 816 1552
        END BRANCH
        BEGIN INSTANCE XLXI_12 1280 1584 R0
        END INSTANCE
        BEGIN BRANCH digit_0(3:0)
            WIRE 1744 1424 1760 1424
            WIRE 1760 448 2064 448
            WIRE 1760 448 1760 1424
        END BRANCH
        BEGIN INSTANCE XLXI_13 1808 1584 R0
        END INSTANCE
        BEGIN BRANCH XLXN_26
            WIRE 1744 1552 1760 1552
            WIRE 1760 1488 1808 1488
            WIRE 1760 1488 1760 1552
        END BRANCH
        BEGIN INSTANCE XLXI_59 2336 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_60 2864 1584 R0
        END INSTANCE
        BEGIN BRANCH digit_2(3:0)
            WIRE 2000 576 2064 576
            WIRE 2000 576 2000 1104
            WIRE 2000 1104 2816 1104
            WIRE 2816 1104 2816 1424
            WIRE 2800 1424 2816 1424
        END BRANCH
        BEGIN BRANCH XLXN_141
            WIRE 2272 1552 2304 1552
            WIRE 2304 1488 2304 1552
            WIRE 2304 1488 2336 1488
        END BRANCH
        BEGIN BRANCH XLXN_142
            WIRE 2800 1552 2832 1552
            WIRE 2832 1488 2832 1552
            WIRE 2832 1488 2864 1488
        END BRANCH
        BEGIN BRANCH XLXN_143
            WIRE 624 2464 1264 2464
            WIRE 1264 1552 1280 1552
            WIRE 1264 1552 1264 1760
            WIRE 1264 1760 1264 2464
            WIRE 1264 1760 1792 1760
            WIRE 1792 1760 2320 1760
            WIRE 2320 1760 2848 1760
            WIRE 1792 1552 1792 1760
            WIRE 1792 1552 1808 1552
            WIRE 2320 1552 2320 1760
            WIRE 2320 1552 2336 1552
            WIRE 2848 1552 2848 1760
            WIRE 2848 1552 2864 1552
        END BRANCH
        IOMARKER 208 1872 button(2:0) R180 28
        IOMARKER 208 1168 clock R180 28
        BEGIN BRANCH XLXN_167(7:0)
            WIRE 2672 384 2704 384
        END BRANCH
        BEGIN BRANCH led7seg_segment(7:0)
            WIRE 2928 384 2960 384
        END BRANCH
        BEGIN INSTANCE XLXI_73 2064 672 R0
        END INSTANCE
        IOMARKER 2960 384 led7seg_segment(7:0) R0 28
        BEGIN BRANCH XLXN_174
            WIRE 544 1168 624 1168
            WIRE 624 1168 1264 1168
            WIRE 1264 1168 1264 1424
            WIRE 1264 1424 1280 1424
            WIRE 1264 1168 1792 1168
            WIRE 1792 1168 1792 1424
            WIRE 1792 1424 1808 1424
            WIRE 1792 1168 2320 1168
            WIRE 2320 1168 2320 1424
            WIRE 2320 1424 2336 1424
            WIRE 2320 1168 2848 1168
            WIRE 2848 1168 2848 1424
            WIRE 2848 1424 2864 1424
            WIRE 624 1168 624 1488
            WIRE 624 1488 816 1488
            WIRE 624 1488 624 2144
            WIRE 624 2144 704 2144
            WIRE 624 384 2064 384
            WIRE 624 384 624 1168
        END BRANCH
        BEGIN BRANCH XLXN_178(3:0)
            WIRE 2032 640 2064 640
            WIRE 2032 640 2032 1088
            WIRE 2032 1088 3392 1088
            WIRE 3392 1088 3392 1424
            WIRE 3328 1424 3392 1424
        END BRANCH
        BEGIN BRANCH XLXN_180(3:0)
            WIRE 1968 512 2064 512
            WIRE 1968 512 1968 1136
            WIRE 1968 1136 2304 1136
            WIRE 2304 1136 2304 1424
            WIRE 2272 1424 2304 1424
        END BRANCH
        INSTANCE XLXI_76 2704 416 R0
        BUSTAP 2688 656 2784 656
        INSTANCE XLXI_84 2816 880 R0
        BEGIN BRANCH display_catodes_out(0)
            WIRE 2784 656 2800 656
            WIRE 2800 656 2816 656
            BEGIN DISPLAY 2800 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2688 720 2784 720
        BUSTAP 2688 784 2784 784
        BUSTAP 2688 848 2784 848
        BEGIN BRANCH display_catodes_out(3:0)
            WIRE 2672 640 2688 640
            WIRE 2688 640 2688 656
            WIRE 2688 656 2688 720
            WIRE 2688 720 2688 784
            WIRE 2688 784 2688 848
        END BRANCH
        BEGIN BRANCH display_catodes_out(1)
            WIRE 2784 720 2800 720
            WIRE 2800 720 2816 720
            BEGIN DISPLAY 2800 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH display_catodes_out(2)
            WIRE 2784 784 2800 784
            WIRE 2800 784 2816 784
            BEGIN DISPLAY 2800 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH display_catodes_out(3)
            WIRE 2784 848 2800 848
            WIRE 2800 848 2816 848
            BEGIN DISPLAY 2800 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH led7seg_anode(0)
            WIRE 3040 656 3056 656
            WIRE 3056 656 3072 656
            BEGIN DISPLAY 3056 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH led7seg_anode(1)
            WIRE 3040 720 3056 720
            WIRE 3056 720 3072 720
            BEGIN DISPLAY 3056 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH led7seg_anode(2)
            WIRE 3040 784 3056 784
            WIRE 3056 784 3072 784
            BEGIN DISPLAY 3056 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH led7seg_anode(3)
            WIRE 3040 848 3056 848
            WIRE 3056 848 3072 848
            BEGIN DISPLAY 3056 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH led7seg_anode(3:0)
            WIRE 3168 640 3168 656
            WIRE 3168 656 3168 720
            WIRE 3168 720 3168 784
            WIRE 3168 784 3168 848
            WIRE 3168 640 3200 640
        END BRANCH
        BUSTAP 3168 848 3072 848
        BUSTAP 3168 784 3072 784
        BUSTAP 3168 720 3072 720
        BUSTAP 3168 656 3072 656
        IOMARKER 3200 640 led7seg_anode(3:0) R0 28
    END SHEET
END SCHEMATIC
