VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL digit_0_1(3:0)
        SIGNAL digit_2_3(3:0)
        SIGNAL XLXN_174
        SIGNAL digit_0_1(7:4)
        SIGNAL XLXN_208
        SIGNAL XLXN_209
        SIGNAL XLXN_214
        SIGNAL XLXN_218(3:0)
        SIGNAL XLXN_222
        SIGNAL XLXN_167(7:0)
        SIGNAL led7seg_segment(7:0)
        SIGNAL led7seg_anode(3:0)
        SIGNAL clock
        SIGNAL XLXN_216(3:0)
        SIGNAL XLXN_205
        SIGNAL XLXN_204
        SIGNAL digit_2_3(7:4)
        SIGNAL XLXN_189
        SIGNAL XLXN_282
        SIGNAL XLXN_190(7:0)
        SIGNAL XLXN_281(7:0)
        SIGNAL slide_switch(7:0)
        SIGNAL button(1)
        SIGNAL XLXN_197
        SIGNAL XLXN_198
        SIGNAL digit_0_1(7:0)
        SIGNAL digit_2_3(7:0)
        SIGNAL button(0)
        SIGNAL button(1:0)
        SIGNAL XLXN_255
        SIGNAL XLXN_280
        SIGNAL XLXN_310
        PORT Output led7seg_segment(7:0)
        PORT Output led7seg_anode(3:0)
        PORT Input clock
        PORT Input slide_switch(7:0)
        PORT Output button(1:0)
        BEGIN BLOCKDEF ibuf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF display_led7seg_controler
            TIMESTAMP 2019 2 6 22 36 38
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
            TIMESTAMP 2019 2 6 22 36 29
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 128 -32 64 0 
            LINE N 128 -32 224 -32 
            RECTANGLE N 128 -44 224 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
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
        BEGIN BLOCKDEF ibuf8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 128 -44 224 -20 
            LINE N 224 -32 128 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF frequency_divider
            TIMESTAMP 2019 2 6 21 58 9
            LINE N 64 0 0 0 
            LINE N 64 -64 0 -64 
            LINE N 352 -64 416 -64 
            LINE N 64 -80 80 -64 
            LINE N 64 -48 80 -64 
            RECTANGLE N 64 -128 352 64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_76 obuf8
            PIN I(7:0) XLXN_167(7:0)
            PIN O(7:0) led7seg_segment(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_95 OBUF4_magistral
            PIN buffer_in(3:0) XLXN_216(3:0)
            PIN buffer_out(3:0) led7seg_anode(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_73 display_led7seg_controler
            BEGIN ATTR DOT_POSITION 2
                EDITNAME all:1 sch:0
                VHDL all:0 gm:1
                VALUETYPE Integer 0 3
            END ATTR
            PIN clock_in XLXN_174
            PIN display_segments_out(7:0) XLXN_167(7:0)
            PIN next_digit_in XLXN_205
            PIN digit_0_in(3:0) digit_0_1(3:0)
            PIN digit_1_in(3:0) digit_0_1(7:4)
            PIN digit_2_in(3:0) digit_2_3(3:0)
            PIN digit_3_in(3:0) digit_2_3(7:4)
            PIN display_catodes_out(3:0) XLXN_216(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_97 gnd
            PIN G XLXN_204
        END BLOCK
        BEGIN BLOCK XLXI_96 frequency_divider
            PIN clock_in XLXN_174
            PIN frequency_out XLXN_205
            PIN reset_in XLXN_204
        END BLOCK
        BEGIN BLOCK XLXI_4 ibuf
            PIN I clock
            PIN O XLXN_174
        END BLOCK
        BEGIN BLOCK XLXI_87 fd8ce
            PIN C XLXN_174
            PIN CE XLXN_197
            PIN CLR XLXN_189
            PIN D(7:0) XLXN_281(7:0)
            PIN Q(7:0) digit_0_1(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_89 fd8ce
            PIN C XLXN_174
            PIN CE XLXN_198
            PIN CLR XLXN_189
            PIN D(7:0) XLXN_281(7:0)
            PIN Q(7:0) digit_2_3(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_90 gnd
            PIN G XLXN_189
        END BLOCK
        BEGIN BLOCK XLXI_92 ibuf8
            PIN I(7:0) slide_switch(7:0)
            PIN O(7:0) XLXN_281(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_93 ibuf
            PIN I button(0)
            PIN O XLXN_197
        END BLOCK
        BEGIN BLOCK XLXI_94 ibuf
            PIN I button(1)
            PIN O XLXN_198
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH digit_2_3(3:0)
            WIRE 1888 640 2064 640
            WIRE 1888 640 1888 1264
            WIRE 1888 1264 1888 1888
            WIRE 1888 1888 1888 1920
            BEGIN DISPLAY 1888 1888 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_167(7:0)
            WIRE 2672 384 2704 384
        END BRANCH
        BEGIN BRANCH led7seg_segment(7:0)
            WIRE 2928 384 2960 384
        END BRANCH
        IOMARKER 2960 384 led7seg_segment(7:0) R0 28
        INSTANCE XLXI_76 2704 416 R0
        BEGIN BRANCH led7seg_anode(3:0)
            WIRE 2928 704 2960 704
        END BRANCH
        BEGIN BRANCH clock
            WIRE 736 384 752 384
        END BRANCH
        BEGIN INSTANCE XLXI_95 2704 736 R0
        END INSTANCE
        IOMARKER 2960 704 led7seg_anode(3:0) R0 28
        BEGIN BRANCH XLXN_216(3:0)
            WIRE 2672 704 2704 704
        END BRANCH
        BEGIN BRANCH XLXN_205
            WIRE 1616 544 1728 544
            WIRE 1728 448 1728 544
            WIRE 1728 448 2064 448
        END BRANCH
        BEGIN INSTANCE XLXI_73 2064 672 R0
        END INSTANCE
        BEGIN BRANCH XLXN_204
            WIRE 1168 608 1200 608
            WIRE 1168 608 1168 640
        END BRANCH
        INSTANCE XLXI_97 1104 768 R0
        BEGIN INSTANCE XLXI_96 1200 608 R0
        END INSTANCE
        INSTANCE XLXI_4 752 416 R0
        IOMARKER 736 384 clock R180 28
        BEGIN BRANCH XLXN_174
            WIRE 976 384 1008 384
            WIRE 1008 384 2064 384
            WIRE 1008 384 1008 544
            WIRE 1008 544 1200 544
            WIRE 1008 544 1008 1760
            WIRE 1008 1760 1136 1760
            WIRE 1008 1760 1008 2144
            WIRE 1008 2144 1136 2144
        END BRANCH
        BEGIN BRANCH digit_0_1(3:0)
            WIRE 1760 512 2064 512
            WIRE 1760 512 1760 1520
            WIRE 1760 1520 1760 1536
            BEGIN DISPLAY 1760 1520 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH digit_0_1(7:4)
            WIRE 1824 576 2064 576
            WIRE 1824 576 1824 1520
            WIRE 1824 1520 1824 1536
            BEGIN DISPLAY 1824 1520 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH digit_2_3(7:4)
            WIRE 1952 704 2064 704
            WIRE 1952 704 1952 1232
            WIRE 1952 1232 1952 1888
            WIRE 1952 1888 1952 1920
            BEGIN DISPLAY 1952 1888 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_87 1136 1888 R0
        INSTANCE XLXI_89 1136 2272 R0
        BEGIN BRANCH XLXN_189
            WIRE 1104 1856 1136 1856
            WIRE 1104 1856 1104 2240
            WIRE 1104 2240 1136 2240
            WIRE 1104 2240 1104 2256
        END BRANCH
        BEGIN BRANCH XLXN_281(7:0)
            WIRE 976 1632 1072 1632
            WIRE 1072 1632 1136 1632
            WIRE 1072 1632 1072 2016
            WIRE 1072 2016 1136 2016
        END BRANCH
        BEGIN BRANCH slide_switch(7:0)
            WIRE 720 1632 752 1632
        END BRANCH
        BEGIN BRANCH button(1)
            WIRE 704 2080 736 2080
            WIRE 736 2080 752 2080
            BEGIN DISPLAY 736 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_197
            WIRE 976 1984 1040 1984
            WIRE 1040 1696 1040 1984
            WIRE 1040 1696 1136 1696
        END BRANCH
        BEGIN BRANCH XLXN_198
            WIRE 976 2080 1136 2080
        END BRANCH
        BEGIN BRANCH digit_0_1(7:0)
            WIRE 1520 1632 1616 1632
            WIRE 1616 1632 1760 1632
            WIRE 1760 1632 1824 1632
            BEGIN DISPLAY 1616 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH digit_2_3(7:0)
            WIRE 1520 2016 1616 2016
            WIRE 1616 2016 1888 2016
            WIRE 1888 2016 1952 2016
            BEGIN DISPLAY 1616 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_90 1040 2384 R0
        INSTANCE XLXI_92 752 1664 R0
        IOMARKER 720 1632 slide_switch(7:0) R180 28
        INSTANCE XLXI_93 752 2016 R0
        INSTANCE XLXI_94 752 2112 R0
        BEGIN BRANCH button(0)
            WIRE 704 1984 736 1984
            WIRE 736 1984 752 1984
            BEGIN DISPLAY 736 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH button(1:0)
            WIRE 576 1936 608 1936
            WIRE 608 1936 608 1984
            WIRE 608 1984 608 2080
        END BRANCH
        IOMARKER 576 1936 button(1:0) R180 28
        BUSTAP 608 1984 704 1984
        BUSTAP 608 2080 704 2080
        BUSTAP 1760 1632 1760 1536
        BUSTAP 1824 1632 1824 1536
        BUSTAP 1888 2016 1888 1920
        BUSTAP 1952 2016 1952 1920
    END SHEET
END SCHEMATIC
