VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_24
        SIGNAL clock
        SIGNAL XLXN_1
        SIGNAL XLXN_26
        SIGNAL XLXN_141
        SIGNAL XLXN_142
        SIGNAL XLXN_143
        SIGNAL XLXN_17
        SIGNAL XLXN_2
        SIGNAL XLXN_15
        SIGNAL XLXN_167(7:0)
        SIGNAL led7seg_segment(7:0)
        SIGNAL XLXN_185
        SIGNAL XLXN_184
        SIGNAL XLXN_209(3:0)
        SIGNAL XLXN_208(3:0)
        SIGNAL XLXN_207(3:0)
        SIGNAL XLXN_206(3:0)
        SIGNAL XLXN_229
        SIGNAL button(0)
        SIGNAL button(1)
        SIGNAL button(2:0)
        SIGNAL button(2)
        SIGNAL XLXN_234
        SIGNAL led7seg_anode(3:0)
        SIGNAL XLXN_237(3:0)
        PORT Input clock
        PORT Output led7seg_segment(7:0)
        PORT Input button(2:0)
        PORT Output led7seg_anode(3:0)
        BEGIN BLOCKDEF frequency_divider
            TIMESTAMP 2019 2 6 21 58 9
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
            TIMESTAMP 2019 2 6 21 58 35
            RECTANGLE N 64 -192 400 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 80 -160 64 -176 
            LINE N 80 -160 64 -144 
            RECTANGLE N 400 -172 464 -148 
            LINE N 400 -160 464 -160 
            LINE N 400 -96 464 -96 
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
        BEGIN BLOCKDEF OBUF4_magistral
            TIMESTAMP 2019 2 6 22 3 54
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 128 -32 64 0 
            LINE N 128 -32 224 -32 
            RECTANGLE N 128 -44 224 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF display_led7seg_controller
            TIMESTAMP 2019 2 24 14 24 17
            LINE N 64 -288 0 -288 
            RECTANGLE N 544 -300 608 -276 
            LINE N 544 -288 608 -288 
            LINE N 80 -288 64 -304 
            LINE N 80 -288 64 -272 
            RECTANGLE N 64 -320 544 64 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            RECTANGLE N 544 20 608 44 
            LINE N 544 32 608 32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 ibuf
            PIN I clock
            PIN O XLXN_229
        END BLOCK
        BEGIN BLOCK XLXI_1 frequency_divider
            BEGIN ATTR DIVIDER 500000
                EDITNAME all:1 sch:0
                VHDL all:0 gm:1
                VALUETYPE Integer 1 2147483647
            END ATTR
            PIN clock_in XLXN_229
            PIN frequency_out XLXN_24
            PIN reset_in XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_12 counter_modulo_10
            PIN clock_in XLXN_229
            PIN count_up_in XLXN_24
            PIN reset_in XLXN_143
            PIN counter_out(3:0) XLXN_209(3:0)
            PIN overflow_out XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_13 counter_modulo_10
            PIN clock_in XLXN_229
            PIN count_up_in XLXN_26
            PIN reset_in XLXN_143
            PIN counter_out(3:0) XLXN_208(3:0)
            PIN overflow_out XLXN_141
        END BLOCK
        BEGIN BLOCK XLXI_59 counter_modulo_10
            PIN clock_in XLXN_229
            PIN count_up_in XLXN_141
            PIN reset_in XLXN_143
            PIN counter_out(3:0) XLXN_207(3:0)
            PIN overflow_out XLXN_142
        END BLOCK
        BEGIN BLOCK XLXI_60 counter_modulo_10
            PIN clock_in XLXN_229
            PIN count_up_in XLXN_142
            PIN reset_in XLXN_143
            PIN counter_out(3:0) XLXN_206(3:0)
            PIN overflow_out
        END BLOCK
        BEGIN BLOCK XLXI_9 ibuf
            PIN I button(0)
            PIN O XLXN_234
        END BLOCK
        BEGIN BLOCK XLXI_10 ibuf
            PIN I button(1)
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_2 fjkc
            PIN C XLXN_229
            PIN CLR XLXN_17
            PIN J XLXN_234
            PIN K XLXN_15
            PIN Q XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_11 gnd
            PIN G XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_14 ibuf
            PIN I button(2)
            PIN O XLXN_143
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I XLXN_2
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_76 obuf8
            PIN I(7:0) XLXN_167(7:0)
            PIN O(7:0) led7seg_segment(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_88 gnd
            PIN G XLXN_184
        END BLOCK
        BEGIN BLOCK XLXI_87 frequency_divider
            BEGIN ATTR DIVIDER 10000
                EDITNAME all:1 sch:0
                VHDL all:0 gm:1
                VALUETYPE Integer 1 2147483647
            END ATTR
            PIN clock_in XLXN_229
            PIN frequency_out XLXN_185
            PIN reset_in XLXN_184
        END BLOCK
        BEGIN BLOCK XLXI_101 OBUF4_magistral
            PIN buffer_in(3:0) XLXN_237(3:0)
            PIN buffer_out(3:0) led7seg_anode(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_102 display_led7seg_controller
            PIN clock_in XLXN_229
            PIN display_segments_out(7:0) XLXN_167(7:0)
            PIN next_digit_in XLXN_185
            PIN digit_0_in(3:0) XLXN_209(3:0)
            PIN digit_1_in(3:0) XLXN_208(3:0)
            PIN digit_2_in(3:0) XLXN_207(3:0)
            PIN digit_3_in(3:0) XLXN_206(3:0)
            PIN display_catodes_out(3:0) XLXN_237(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_24
            WIRE 1120 1488 1264 1488
        END BRANCH
        BEGIN BRANCH clock
            WIRE 368 1168 384 1168
        END BRANCH
        BEGIN INSTANCE XLXI_13 1808 1584 R0
        END INSTANCE
        BEGIN BRANCH XLXN_26
            WIRE 1728 1488 1808 1488
        END BRANCH
        BEGIN INSTANCE XLXI_59 2336 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_60 2864 1584 R0
        END INSTANCE
        BEGIN BRANCH XLXN_141
            WIRE 2272 1488 2336 1488
        END BRANCH
        BEGIN BRANCH XLXN_142
            WIRE 2800 1488 2864 1488
        END BRANCH
        BEGIN INSTANCE XLXI_1 704 1552 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 704 1552 704 1712
            WIRE 704 1712 1120 1712
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 592 2160 704 2160
        END BRANCH
        INSTANCE XLXI_2 704 2192 R0
        BEGIN BRANCH XLXN_2
            WIRE 1088 1936 1120 1936
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 672 1936 672 1952
            WIRE 672 1936 704 1936
        END BRANCH
        INSTANCE XLXI_11 608 2080 R0
        INSTANCE XLXI_3 1152 1936 R270
        BEGIN INSTANCE XLXI_12 1264 1584 R0
        END INSTANCE
        BEGIN BRANCH XLXN_143
            WIRE 592 2240 1264 2240
            WIRE 1264 1552 1264 1760
            WIRE 1264 1760 1792 1760
            WIRE 1792 1760 2320 1760
            WIRE 2320 1760 2848 1760
            WIRE 1264 1760 1264 2240
            WIRE 1792 1552 1792 1760
            WIRE 1792 1552 1808 1552
            WIRE 2320 1552 2320 1760
            WIRE 2320 1552 2336 1552
            WIRE 2848 1552 2848 1760
            WIRE 2848 1552 2864 1552
        END BRANCH
        BEGIN BRANCH XLXN_167(7:0)
            WIRE 2672 576 2704 576
        END BRANCH
        BEGIN BRANCH led7seg_segment(7:0)
            WIRE 2928 576 2960 576
        END BRANCH
        BEGIN BRANCH XLXN_185
            WIRE 1232 752 1680 752
            WIRE 1680 640 1680 752
            WIRE 1680 640 2064 640
        END BRANCH
        BEGIN BRANCH XLXN_209(3:0)
            WIRE 1728 1424 1792 1424
            WIRE 1792 704 2064 704
            WIRE 1792 704 1792 1424
        END BRANCH
        BEGIN BRANCH XLXN_208(3:0)
            WIRE 1968 768 2064 768
            WIRE 1968 768 1968 1024
            WIRE 1968 1024 2288 1024
            WIRE 2288 1024 2288 1424
            WIRE 2272 1424 2288 1424
        END BRANCH
        BEGIN BRANCH XLXN_207(3:0)
            WIRE 2000 832 2064 832
            WIRE 2000 832 2000 992
            WIRE 2000 992 2816 992
            WIRE 2816 992 2816 1424
            WIRE 2800 1424 2816 1424
        END BRANCH
        BEGIN BRANCH XLXN_206(3:0)
            WIRE 2032 896 2064 896
            WIRE 2032 896 2032 960
            WIRE 2032 960 3344 960
            WIRE 3344 960 3344 1424
            WIRE 3328 1424 3344 1424
        END BRANCH
        INSTANCE XLXI_76 2704 608 R0
        INSTANCE XLXI_88 720 976 R0
        IOMARKER 2960 576 led7seg_segment(7:0) R0 28
        IOMARKER 2960 896 led7seg_anode(3:0) R0 28
        BEGIN INSTANCE XLXI_87 816 816 R0
        END INSTANCE
        BEGIN BRANCH XLXN_184
            WIRE 784 816 816 816
            WIRE 784 816 784 848
        END BRANCH
        INSTANCE XLXI_4 384 1200 R0
        IOMARKER 368 1168 clock R180 28
        BEGIN BRANCH XLXN_229
            WIRE 608 1168 624 1168
            WIRE 624 1168 624 1488
            WIRE 624 1488 704 1488
            WIRE 624 1488 624 1872
            WIRE 624 1872 624 2064
            WIRE 624 2064 704 2064
            WIRE 624 1168 1264 1168
            WIRE 1264 1168 1808 1168
            WIRE 1808 1168 2336 1168
            WIRE 2336 1168 2336 1424
            WIRE 2336 1168 2864 1168
            WIRE 2864 1168 2864 1424
            WIRE 1808 1168 1808 1424
            WIRE 1264 1168 1264 1424
            WIRE 624 576 2064 576
            WIRE 624 576 624 752
            WIRE 624 752 624 1168
            WIRE 624 752 816 752
        END BRANCH
        BEGIN BRANCH button(0)
            WIRE 336 1872 368 1872
        END BRANCH
        BEGIN BRANCH button(1)
            WIRE 336 2160 368 2160
        END BRANCH
        BEGIN BRANCH button(2:0)
            WIRE 208 1824 240 1824
            WIRE 240 1824 240 1872
            WIRE 240 1872 240 2160
            WIRE 240 2160 240 2240
        END BRANCH
        BEGIN BRANCH button(2)
            WIRE 336 2240 368 2240
        END BRANCH
        BUSTAP 240 2160 336 2160
        BUSTAP 240 1872 336 1872
        BUSTAP 240 2240 336 2240
        IOMARKER 208 1824 button(2:0) R180 28
        INSTANCE XLXI_9 368 1904 R0
        BEGIN BRANCH XLXN_234
            WIRE 592 1872 704 1872
        END BRANCH
        INSTANCE XLXI_10 368 2192 R0
        INSTANCE XLXI_14 368 2272 R0
        BEGIN BRANCH led7seg_anode(3:0)
            WIRE 2928 896 2960 896
        END BRANCH
        BEGIN INSTANCE XLXI_101 2704 928 R0
        END INSTANCE
        BEGIN BRANCH XLXN_237(3:0)
            WIRE 2672 896 2704 896
        END BRANCH
        BEGIN INSTANCE XLXI_102 2064 864 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
