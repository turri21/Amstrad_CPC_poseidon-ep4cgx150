-- generated with tablegen by MikeJ
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vol_table is
  port (
    CLK         : in    std_logic;
    ADDR_A      : in    std_logic_vector(11 downto 0);
    DATA_A      : out   std_logic_vector(9 downto 0);
    ADDR_B      : in    std_logic_vector(11 downto 0);
    DATA_B      : out   std_logic_vector(9 downto 0)
    );
end;

architecture RTL of vol_table is


  type ROM_ARRAY is array(0 to 4095) of std_logic_vector(11 downto 0);
  constant ROM : ROM_ARRAY := (
    x"000",x"002",x"004",x"006",x"009",x"00D",x"014",x"01B", -- 0x0000
    x"027",x"036",x"050",x"06D",x"0A5",x"0EB",x"17D",x"24D", -- 0x0008
    x"002",x"005",x"007",x"009",x"00D",x"010",x"016",x"01D", -- 0x0010
    x"02A",x"038",x"051",x"06F",x"0A7",x"0ED",x"17E",x"24D", -- 0x0018
    x"004",x"007",x"009",x"00B",x"00E",x"012",x"018",x"020", -- 0x0020
    x"02B",x"03A",x"054",x"071",x"0A9",x"0EF",x"17E",x"24D", -- 0x0028
    x"006",x"009",x"00B",x"00D",x"011",x"014",x"01A",x"021", -- 0x0030
    x"02E",x"03C",x"055",x"073",x"0AB",x"0F0",x"17F",x"24D", -- 0x0038
    x"009",x"00D",x"00E",x"011",x"014",x"018",x"01D",x"024", -- 0x0040
    x"031",x"03F",x"058",x"076",x"0AD",x"0F3",x"180",x"24D", -- 0x0048
    x"00D",x"010",x"012",x"014",x"018",x"01B",x"021",x"028", -- 0x0050
    x"035",x"042",x"05C",x"079",x"0B0",x"0F5",x"182",x"24D", -- 0x0058
    x"014",x"016",x"018",x"01A",x"01D",x"021",x"027",x"02F", -- 0x0060
    x"03A",x"049",x"062",x"07E",x"0B5",x"0FA",x"184",x"24D", -- 0x0068
    x"01B",x"01D",x"020",x"021",x"024",x"028",x"02F",x"035", -- 0x0070
    x"042",x"050",x"068",x"085",x"0BB",x"0FE",x"188",x"24D", -- 0x0078
    x"027",x"02A",x"02B",x"02E",x"031",x"035",x"03A",x"042", -- 0x0080
    x"04D",x"05C",x"073",x"091",x"0C5",x"108",x"18E",x"24D", -- 0x0088
    x"036",x"038",x"03A",x"03C",x"03F",x"042",x"049",x"050", -- 0x0090
    x"05C",x"06A",x"082",x"09D",x"0D2",x"114",x"19A",x"24D", -- 0x0098
    x"050",x"051",x"054",x"055",x"058",x"05C",x"062",x"068", -- 0x00A0
    x"073",x"082",x"098",x"0B4",x"0E7",x"128",x"1AB",x"254", -- 0x00A8
    x"06D",x"06F",x"071",x"073",x"076",x"079",x"07E",x"085", -- 0x00B0
    x"091",x"09D",x"0B4",x"0D0",x"102",x"142",x"1C1",x"264", -- 0x00B8
    x"0A5",x"0A7",x"0A9",x"0AB",x"0AD",x"0B0",x"0B5",x"0BB", -- 0x00C0
    x"0C5",x"0D2",x"0E7",x"102",x"133",x"172",x"1ED",x"27C", -- 0x00C8
    x"0EB",x"0ED",x"0EF",x"0F0",x"0F3",x"0F5",x"0FA",x"0FE", -- 0x00D0
    x"108",x"114",x"128",x"142",x"172",x"1AF",x"21D",x"2AB", -- 0x00D8
    x"17D",x"17E",x"17E",x"17F",x"180",x"182",x"184",x"188", -- 0x00E0
    x"18E",x"19A",x"1AB",x"1C1",x"1ED",x"21D",x"284",x"30A", -- 0x00E8
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x00F0
    x"24D",x"24D",x"254",x"264",x"27C",x"2AB",x"30A",x"379", -- 0x00F8
    x"002",x"005",x"006",x"009",x"00C",x"010",x"016",x"01D", -- 0x0100
    x"02A",x"038",x"052",x"06F",x"0A7",x"0ED",x"17E",x"24E", -- 0x0108
    x"005",x"007",x"009",x"00B",x"00F",x"012",x"018",x"01F", -- 0x0110
    x"02C",x"03A",x"053",x"071",x"0A9",x"0EF",x"17F",x"24E", -- 0x0118
    x"006",x"009",x"00B",x"00D",x"011",x"014",x"01B",x"022", -- 0x0120
    x"02E",x"03D",x"056",x"073",x"0AB",x"0F0",x"180",x"24E", -- 0x0128
    x"009",x"00B",x"00D",x"010",x"013",x"016",x"01C",x"023", -- 0x0130
    x"030",x"03E",x"057",x"075",x"0AD",x"0F2",x"181",x"24E", -- 0x0138
    x"00C",x"00F",x"011",x"013",x"016",x"01A",x"01F",x"027", -- 0x0140
    x"033",x"041",x"05B",x"078",x"0AF",x"0F4",x"181",x"24E", -- 0x0148
    x"010",x"012",x"014",x"016",x"01A",x"01D",x"023",x"02A", -- 0x0150
    x"037",x"044",x"05E",x"07B",x"0B2",x"0F7",x"183",x"24E", -- 0x0158
    x"016",x"018",x"01B",x"01C",x"01F",x"023",x"02A",x"031", -- 0x0160
    x"03D",x"04B",x"064",x"080",x"0B7",x"0FB",x"185",x"24E", -- 0x0168
    x"01D",x"01F",x"022",x"023",x"027",x"02A",x"031",x"037", -- 0x0170
    x"044",x"052",x"06A",x"087",x"0BD",x"100",x"189",x"24E", -- 0x0178
    x"02A",x"02C",x"02E",x"030",x"033",x"037",x"03D",x"044", -- 0x0180
    x"04F",x"05E",x"075",x"092",x"0C7",x"10A",x"190",x"24E", -- 0x0188
    x"038",x"03A",x"03D",x"03E",x"041",x"044",x"04B",x"052", -- 0x0190
    x"05E",x"06C",x"083",x"09F",x"0D4",x"115",x"19B",x"24E", -- 0x0198
    x"052",x"053",x"056",x"057",x"05B",x"05E",x"064",x"06A", -- 0x01A0
    x"075",x"083",x"09A",x"0B6",x"0E9",x"12A",x"1AD",x"256", -- 0x01A8
    x"06F",x"071",x"073",x"075",x"078",x"07B",x"080",x"087", -- 0x01B0
    x"092",x"09F",x"0B6",x"0D1",x"104",x"143",x"1C2",x"265", -- 0x01B8
    x"0A7",x"0A9",x"0AB",x"0AD",x"0AF",x"0B2",x"0B7",x"0BD", -- 0x01C0
    x"0C7",x"0D4",x"0E9",x"104",x"135",x"174",x"1EE",x"27D", -- 0x01C8
    x"0ED",x"0EF",x"0F0",x"0F2",x"0F4",x"0F7",x"0FB",x"100", -- 0x01D0
    x"10A",x"115",x"12A",x"143",x"174",x"1B0",x"21E",x"2AC", -- 0x01D8
    x"17E",x"17F",x"180",x"181",x"181",x"183",x"185",x"189", -- 0x01E0
    x"190",x"19B",x"1AD",x"1C2",x"1EE",x"21E",x"285",x"30B", -- 0x01E8
    x"24E",x"24E",x"24E",x"24E",x"24E",x"24E",x"24E",x"24E", -- 0x01F0
    x"24E",x"24E",x"256",x"265",x"27D",x"2AC",x"30B",x"379", -- 0x01F8
    x"004",x"006",x"008",x"00A",x"00D",x"011",x"018",x"01F", -- 0x0200
    x"02B",x"039",x"053",x"070",x"0A8",x"0EE",x"17F",x"24F", -- 0x0208
    x"006",x"009",x"00B",x"00D",x"011",x"014",x"01A",x"021", -- 0x0210
    x"02E",x"03C",x"055",x"073",x"0AB",x"0F0",x"180",x"24F", -- 0x0218
    x"008",x"00B",x"00D",x"00F",x"012",x"016",x"01C",x"023", -- 0x0220
    x"02F",x"03E",x"057",x"074",x"0AC",x"0F2",x"181",x"24F", -- 0x0228
    x"00A",x"00D",x"00F",x"011",x"014",x"018",x"01E",x"025", -- 0x0230
    x"031",x"040",x"059",x"077",x"0AE",x"0F3",x"182",x"24F", -- 0x0238
    x"00D",x"011",x"012",x"014",x"018",x"01B",x"021",x"028", -- 0x0240
    x"035",x"043",x"05C",x"079",x"0B0",x"0F5",x"183",x"24F", -- 0x0248
    x"011",x"014",x"016",x"018",x"01B",x"01F",x"025",x"02C", -- 0x0250
    x"039",x"046",x"05F",x"07C",x"0B3",x"0F8",x"184",x"24F", -- 0x0258
    x"018",x"01A",x"01C",x"01E",x"021",x"025",x"02B",x"032", -- 0x0260
    x"03E",x"04C",x"065",x"082",x"0B8",x"0FD",x"186",x"24F", -- 0x0268
    x"01F",x"021",x"023",x"025",x"028",x"02C",x"032",x"039", -- 0x0270
    x"045",x"053",x"06C",x"088",x"0BE",x"101",x"18A",x"24F", -- 0x0278
    x"02B",x"02E",x"02F",x"031",x"035",x"039",x"03E",x"045", -- 0x0280
    x"051",x"05F",x"077",x"094",x"0C8",x"10B",x"191",x"24F", -- 0x0288
    x"039",x"03C",x"03E",x"040",x"043",x"046",x"04C",x"053", -- 0x0290
    x"05F",x"06D",x"085",x"0A0",x"0D5",x"116",x"19C",x"24F", -- 0x0298
    x"053",x"055",x"057",x"059",x"05C",x"05F",x"065",x"06C", -- 0x02A0
    x"077",x"085",x"09B",x"0B7",x"0EA",x"12B",x"1AE",x"256", -- 0x02A8
    x"070",x"073",x"074",x"077",x"079",x"07C",x"082",x"088", -- 0x02B0
    x"094",x"0A0",x"0B7",x"0D3",x"105",x"144",x"1C3",x"266", -- 0x02B8
    x"0A8",x"0AB",x"0AC",x"0AE",x"0B0",x"0B3",x"0B8",x"0BE", -- 0x02C0
    x"0C8",x"0D5",x"0EA",x"105",x"136",x"175",x"1EF",x"27E", -- 0x02C8
    x"0EE",x"0F0",x"0F2",x"0F3",x"0F5",x"0F8",x"0FC",x"101", -- 0x02D0
    x"10B",x"116",x"12B",x"144",x"175",x"1B1",x"21F",x"2AD", -- 0x02D8
    x"17F",x"180",x"181",x"182",x"183",x"184",x"186",x"18A", -- 0x02E0
    x"191",x"19C",x"1AE",x"1C3",x"1EF",x"21F",x"285",x"30B", -- 0x02E8
    x"24E",x"24E",x"24E",x"24E",x"24E",x"24E",x"24E",x"24E", -- 0x02F0
    x"24E",x"24E",x"256",x"266",x"27E",x"2AD",x"30B",x"37A", -- 0x02F8
    x"006",x"009",x"00A",x"00D",x"010",x"014",x"01A",x"021", -- 0x0300
    x"02D",x"03B",x"055",x"072",x"0AA",x"0F0",x"181",x"250", -- 0x0308
    x"009",x"00B",x"00D",x"00F",x"013",x"016",x"01C",x"023", -- 0x0310
    x"030",x"03E",x"057",x"075",x"0AD",x"0F2",x"182",x"250", -- 0x0318
    x"00A",x"00D",x"00F",x"011",x"014",x"018",x"01F",x"026", -- 0x0320
    x"031",x"040",x"059",x"076",x"0AE",x"0F3",x"183",x"250", -- 0x0328
    x"00D",x"00F",x"011",x"014",x"017",x"01A",x"020",x"027", -- 0x0330
    x"034",x"042",x"05B",x"079",x"0B0",x"0F5",x"183",x"250", -- 0x0338
    x"010",x"013",x"014",x"017",x"01A",x"01E",x"023",x"02A", -- 0x0340
    x"037",x"045",x"05E",x"07B",x"0B2",x"0F7",x"184",x"250", -- 0x0348
    x"014",x"016",x"018",x"01A",x"01E",x"021",x"027",x"02E", -- 0x0350
    x"03B",x"048",x"061",x"07E",x"0B5",x"0FA",x"186",x"250", -- 0x0358
    x"01A",x"01C",x"01F",x"020",x"023",x"027",x"02D",x"034", -- 0x0360
    x"040",x"04E",x"067",x"084",x"0BA",x"0FE",x"188",x"250", -- 0x0368
    x"021",x"023",x"026",x"027",x"02A",x"02E",x"034",x"03B", -- 0x0370
    x"047",x"055",x"06E",x"08A",x"0C0",x"103",x"18C",x"250", -- 0x0378
    x"02D",x"030",x"031",x"034",x"037",x"03B",x"040",x"047", -- 0x0380
    x"053",x"061",x"079",x"096",x"0CA",x"10C",x"192",x"250", -- 0x0388
    x"03B",x"03E",x"040",x"042",x"045",x"048",x"04E",x"055", -- 0x0390
    x"061",x"06F",x"087",x"0A2",x"0D7",x"118",x"19E",x"250", -- 0x0398
    x"055",x"057",x"059",x"05B",x"05E",x"061",x"067",x"06E", -- 0x03A0
    x"079",x"087",x"09D",x"0B9",x"0EC",x"12C",x"1AF",x"258", -- 0x03A8
    x"072",x"075",x"076",x"079",x"07B",x"07E",x"084",x"08A", -- 0x03B0
    x"096",x"0A2",x"0B9",x"0D4",x"106",x"145",x"1C4",x"267", -- 0x03B8
    x"0AA",x"0AD",x"0AE",x"0B0",x"0B2",x"0B5",x"0BA",x"0C0", -- 0x03C0
    x"0CA",x"0D7",x"0EC",x"106",x"137",x"176",x"1F0",x"27F", -- 0x03C8
    x"0F0",x"0F2",x"0F3",x"0F5",x"0F7",x"0FA",x"0FE",x"103", -- 0x03D0
    x"10C",x"118",x"12C",x"145",x"176",x"1B2",x"220",x"2AE", -- 0x03D8
    x"181",x"182",x"183",x"183",x"184",x"186",x"188",x"18C", -- 0x03E0
    x"192",x"19E",x"1AF",x"1C4",x"1F0",x"220",x"286",x"30C", -- 0x03E8
    x"250",x"250",x"250",x"250",x"250",x"250",x"250",x"250", -- 0x03F0
    x"250",x"250",x"257",x"267",x"27F",x"2AE",x"30C",x"37A", -- 0x03F8
    x"009",x"00C",x"00D",x"010",x"013",x"017",x"01D",x"024", -- 0x0400
    x"030",x"03E",x"058",x"075",x"0AD",x"0F3",x"183",x"251", -- 0x0408
    x"00C",x"00E",x"010",x"012",x"016",x"019",x"01F",x"026", -- 0x0410
    x"033",x"041",x"05A",x"077",x"0AF",x"0F4",x"184",x"251", -- 0x0418
    x"00D",x"010",x"012",x"014",x"017",x"01B",x"022",x"029", -- 0x0420
    x"034",x"043",x"05C",x"079",x"0B1",x"0F6",x"185",x"251", -- 0x0428
    x"010",x"012",x"014",x"017",x"01A",x"01D",x"023",x"02A", -- 0x0430
    x"037",x"045",x"05E",x"07B",x"0B2",x"0F7",x"185",x"251", -- 0x0438
    x"013",x"016",x"017",x"01A",x"01D",x"021",x"026",x"02D", -- 0x0440
    x"03A",x"048",x"061",x"07E",x"0B4",x"0FA",x"186",x"251", -- 0x0448
    x"017",x"019",x"01B",x"01D",x"021",x"024",x"02A",x"031", -- 0x0450
    x"03E",x"04B",x"064",x"081",x"0B8",x"0FC",x"188",x"251", -- 0x0458
    x"01D",x"01F",x"022",x"023",x"026",x"02A",x"030",x"037", -- 0x0460
    x"043",x"051",x"06A",x"086",x"0BC",x"101",x"18A",x"251", -- 0x0468
    x"024",x"026",x"029",x"02A",x"02D",x"031",x"037",x"03E", -- 0x0470
    x"04A",x"058",x"070",x"08C",x"0C2",x"105",x"18E",x"251", -- 0x0478
    x"030",x"033",x"034",x"037",x"03A",x"03E",x"043",x"04A", -- 0x0480
    x"056",x"064",x"07B",x"098",x"0CD",x"10F",x"194",x"251", -- 0x0488
    x"03E",x"041",x"043",x"045",x"048",x"04B",x"051",x"058", -- 0x0490
    x"064",x"072",x"089",x"0A4",x"0D9",x"11A",x"1A0",x"251", -- 0x0498
    x"058",x"05A",x"05C",x"05E",x"061",x"064",x"06A",x"070", -- 0x04A0
    x"07B",x"089",x"0A0",x"0BB",x"0EE",x"12E",x"1B1",x"259", -- 0x04A8
    x"075",x"077",x"079",x"07B",x"07E",x"081",x"086",x"08C", -- 0x04B0
    x"098",x"0A4",x"0BB",x"0D6",x"109",x"147",x"1C6",x"269", -- 0x04B8
    x"0AD",x"0AF",x"0B1",x"0B2",x"0B4",x"0B8",x"0BC",x"0C2", -- 0x04C0
    x"0CD",x"0D9",x"0EE",x"109",x"139",x"178",x"1F2",x"280", -- 0x04C8
    x"0F3",x"0F4",x"0F6",x"0F7",x"0FA",x"0FC",x"101",x"105", -- 0x04D0
    x"10E",x"11A",x"12E",x"147",x"178",x"1B3",x"221",x"2AF", -- 0x04D8
    x"183",x"184",x"185",x"185",x"186",x"188",x"18A",x"18E", -- 0x04E0
    x"194",x"1A0",x"1B1",x"1C6",x"1F1",x"221",x"287",x"30D", -- 0x04E8
    x"251",x"251",x"251",x"251",x"251",x"251",x"251",x"251", -- 0x04F0
    x"251",x"251",x"259",x"269",x"280",x"2AF",x"30D",x"37B", -- 0x04F8
    x"00D",x"010",x"011",x"014",x"017",x"01B",x"021",x"028", -- 0x0500
    x"034",x"042",x"05C",x"078",x"0B0",x"0F6",x"186",x"254", -- 0x0508
    x"010",x"012",x"014",x"016",x"01A",x"01D",x"023",x"02A", -- 0x0510
    x"036",x"044",x"05D",x"07B",x"0B2",x"0F7",x"187",x"254", -- 0x0518
    x"011",x"014",x"016",x"018",x"01B",x"01F",x"025",x"02C", -- 0x0520
    x"038",x"047",x"05F",x"07C",x"0B4",x"0F9",x"187",x"254", -- 0x0528
    x"014",x"016",x"018",x"01B",x"01E",x"021",x"027",x"02E", -- 0x0530
    x"03A",x"048",x"061",x"07F",x"0B5",x"0FA",x"188",x"254", -- 0x0538
    x"017",x"01A",x"01B",x"01E",x"021",x"025",x"02A",x"031", -- 0x0540
    x"03D",x"04B",x"064",x"081",x"0B8",x"0FD",x"189",x"254", -- 0x0548
    x"01B",x"01D",x"01F",x"021",x"025",x"028",x"02E",x"035", -- 0x0550
    x"041",x"04E",x"067",x"084",x"0BB",x"0FF",x"18A",x"254", -- 0x0558
    x"021",x"023",x"025",x"027",x"02A",x"02E",x"034",x"03B", -- 0x0560
    x"047",x"055",x"06D",x"089",x"0BF",x"104",x"18D",x"254", -- 0x0568
    x"028",x"02A",x"02C",x"02E",x"031",x"035",x"03B",x"041", -- 0x0570
    x"04E",x"05B",x"074",x"090",x"0C6",x"108",x"191",x"254", -- 0x0578
    x"034",x"036",x"038",x"03A",x"03D",x"041",x"047",x"04E", -- 0x0580
    x"059",x"067",x"07E",x"09B",x"0D0",x"112",x"197",x"254", -- 0x0588
    x"042",x"044",x"047",x"048",x"04B",x"04E",x"055",x"05B", -- 0x0590
    x"067",x"075",x"08C",x"0A8",x"0DC",x"11D",x"1A2",x"254", -- 0x0598
    x"05C",x"05D",x"05F",x"061",x"064",x"067",x"06D",x"074", -- 0x05A0
    x"07E",x"08C",x"0A3",x"0BE",x"0F1",x"131",x"1B3",x"25B", -- 0x05A8
    x"078",x"07B",x"07C",x"07F",x"081",x"084",x"089",x"090", -- 0x05B0
    x"09B",x"0A8",x"0BE",x"0D9",x"10B",x"14A",x"1C8",x"26B", -- 0x05B8
    x"0B0",x"0B2",x"0B4",x"0B5",x"0B8",x"0BB",x"0BF",x"0C6", -- 0x05C0
    x"0D0",x"0DC",x"0F1",x"10B",x"13C",x"17A",x"1F4",x"282", -- 0x05C8
    x"0F6",x"0F7",x"0F9",x"0FA",x"0FD",x"0FF",x"103",x"108", -- 0x05D0
    x"111",x"11D",x"131",x"14A",x"17A",x"1B6",x"223",x"2B0", -- 0x05D8
    x"186",x"187",x"187",x"188",x"189",x"18A",x"18D",x"191", -- 0x05E0
    x"197",x"1A2",x"1B3",x"1C8",x"1F4",x"223",x"289",x"30E", -- 0x05E8
    x"253",x"253",x"253",x"253",x"253",x"253",x"253",x"253", -- 0x05F0
    x"253",x"253",x"25B",x"26B",x"282",x"2B0",x"30E",x"37C", -- 0x05F8
    x"014",x"016",x"018",x"01A",x"01D",x"021",x"027",x"02E", -- 0x0600
    x"03A",x"048",x"061",x"07E",x"0B5",x"0FA",x"18A",x"256", -- 0x0608
    x"016",x"018",x"01B",x"01C",x"020",x"023",x"029",x"030", -- 0x0610
    x"03C",x"04A",x"063",x"080",x"0B7",x"0FC",x"18B",x"256", -- 0x0618
    x"018",x"01B",x"01C",x"01E",x"021",x"025",x"02B",x"032", -- 0x0620
    x"03E",x"04C",x"065",x"081",x"0B9",x"0FD",x"18B",x"256", -- 0x0628
    x"01A",x"01C",x"01E",x"021",x"024",x"027",x"02D",x"034", -- 0x0630
    x"040",x"04E",x"066",x"084",x"0BA",x"0FF",x"18C",x"256", -- 0x0638
    x"01D",x"020",x"021",x"024",x"027",x"02B",x"030",x"037", -- 0x0640
    x"043",x"051",x"069",x"086",x"0BC",x"101",x"18D",x"256", -- 0x0648
    x"021",x"023",x"025",x"027",x"02B",x"02E",x"034",x"03B", -- 0x0650
    x"047",x"054",x"06D",x"089",x"0C0",x"104",x"18E",x"256", -- 0x0658
    x"027",x"029",x"02B",x"02D",x"030",x"034",x"03A",x"041", -- 0x0660
    x"04C",x"05A",x"073",x"08E",x"0C4",x"108",x"191",x"256", -- 0x0668
    x"02E",x"030",x"032",x"034",x"037",x"03B",x"041",x"047", -- 0x0670
    x"053",x"061",x"079",x"094",x"0CA",x"10D",x"194",x"256", -- 0x0678
    x"03A",x"03C",x"03E",x"040",x"043",x"047",x"04C",x"053", -- 0x0680
    x"05F",x"06C",x"083",x"0A0",x"0D4",x"116",x"19B",x"256", -- 0x0688
    x"048",x"04A",x"04C",x"04E",x"051",x"054",x"05A",x"061", -- 0x0690
    x"06C",x"07A",x"091",x"0AC",x"0E0",x"121",x"1A6",x"256", -- 0x0698
    x"061",x"063",x"065",x"066",x"069",x"06D",x"073",x"079", -- 0x06A0
    x"083",x"091",x"0A7",x"0C3",x"0F5",x"135",x"1B7",x"25E", -- 0x06A8
    x"07E",x"080",x"081",x"084",x"086",x"089",x"08E",x"094", -- 0x06B0
    x"0A0",x"0AC",x"0C3",x"0DE",x"10F",x"14E",x"1CB",x"26D", -- 0x06B8
    x"0B5",x"0B7",x"0B9",x"0BA",x"0BC",x"0C0",x"0C4",x"0CA", -- 0x06C0
    x"0D4",x"0E0",x"0F5",x"10F",x"13F",x"17E",x"1F6",x"284", -- 0x06C8
    x"0FA",x"0FC",x"0FD",x"0FF",x"101",x"103",x"108",x"10C", -- 0x06D0
    x"116",x"121",x"135",x"14E",x"17D",x"1B8",x"226",x"2B2", -- 0x06D8
    x"18A",x"18B",x"18B",x"18C",x"18D",x"18E",x"191",x"194", -- 0x06E0
    x"19B",x"1A6",x"1B7",x"1CB",x"1F6",x"226",x"28B",x"30F", -- 0x06E8
    x"256",x"256",x"256",x"256",x"256",x"256",x"256",x"256", -- 0x06F0
    x"256",x"256",x"25E",x"26D",x"284",x"2B2",x"30F",x"37D", -- 0x06F8
    x"01B",x"01D",x"01F",x"021",x"024",x"028",x"02E",x"034", -- 0x0700
    x"041",x"04E",x"067",x"084",x"0BB",x"100",x"18E",x"25A", -- 0x0708
    x"01D",x"01F",x"022",x"023",x"027",x"02A",x"030",x"037", -- 0x0710
    x"043",x"050",x"069",x"086",x"0BD",x"101",x"18F",x"25A", -- 0x0718
    x"01F",x"022",x"023",x"025",x"028",x"02C",x"032",x"039", -- 0x0720
    x"044",x"053",x"06B",x"087",x"0BE",x"103",x"190",x"25A", -- 0x0728
    x"021",x"023",x"025",x"028",x"02B",x"02E",x"034",x"03B", -- 0x0730
    x"047",x"054",x"06D",x"08A",x"0C0",x"104",x"191",x"25A", -- 0x0738
    x"024",x"027",x"028",x"02B",x"02E",x"031",x"037",x"03E", -- 0x0740
    x"04A",x"057",x"070",x"08C",x"0C2",x"107",x"191",x"25A", -- 0x0748
    x"028",x"02A",x"02C",x"02E",x"031",x"034",x"03B",x"041", -- 0x0750
    x"04D",x"05A",x"073",x"08F",x"0C5",x"109",x"193",x"25A", -- 0x0758
    x"02E",x"030",x"032",x"034",x"037",x"03B",x"041",x"047", -- 0x0760
    x"053",x"060",x"079",x"094",x"0CA",x"10D",x"195",x"25A", -- 0x0768
    x"034",x"037",x"039",x"03B",x"03E",x"041",x"047",x"04D", -- 0x0770
    x"059",x"067",x"07F",x"09A",x"0D0",x"112",x"199",x"25A", -- 0x0778
    x"041",x"043",x"044",x"047",x"04A",x"04D",x"053",x"059", -- 0x0780
    x"065",x"072",x"089",x"0A5",x"0D9",x"11B",x"19F",x"25A", -- 0x0788
    x"04E",x"050",x"053",x"054",x"057",x"05A",x"060",x"067", -- 0x0790
    x"072",x"080",x"097",x"0B2",x"0E6",x"126",x"1AA",x"25A", -- 0x0798
    x"067",x"069",x"06B",x"06D",x"070",x"073",x"079",x"07F", -- 0x07A0
    x"089",x"097",x"0AD",x"0C8",x"0FA",x"13A",x"1BB",x"262", -- 0x07A8
    x"084",x"086",x"087",x"08A",x"08C",x"08F",x"094",x"09A", -- 0x07B0
    x"0A5",x"0B2",x"0C8",x"0E3",x"114",x"152",x"1CF",x"271", -- 0x07B8
    x"0BB",x"0BD",x"0BE",x"0C0",x"0C2",x"0C5",x"0CA",x"0D0", -- 0x07C0
    x"0D9",x"0E6",x"0FA",x"114",x"144",x"182",x"1FA",x"287", -- 0x07C8
    x"0FF",x"101",x"102",x"104",x"106",x"108",x"10D",x"112", -- 0x07D0
    x"11B",x"126",x"13A",x"152",x"181",x"1BC",x"229",x"2B5", -- 0x07D8
    x"18E",x"18F",x"190",x"191",x"191",x"193",x"195",x"199", -- 0x07E0
    x"19F",x"1AA",x"1BB",x"1CF",x"1F9",x"229",x"28D",x"312", -- 0x07E8
    x"25A",x"25A",x"25A",x"25A",x"25A",x"25A",x"25A",x"25A", -- 0x07F0
    x"25A",x"25A",x"261",x"270",x"287",x"2B5",x"312",x"37F", -- 0x07F8
    x"027",x"02A",x"02B",x"02D",x"030",x"034",x"03A",x"041", -- 0x0800
    x"04C",x"05A",x"072",x"08E",x"0C5",x"109",x"197",x"261", -- 0x0808
    x"02A",x"02C",x"02E",x"030",x"033",x"036",x"03C",x"043", -- 0x0810
    x"04F",x"05C",x"074",x"090",x"0C7",x"10B",x"198",x"261", -- 0x0818
    x"02B",x"02E",x"030",x"032",x"035",x"038",x"03E",x"045", -- 0x0820
    x"050",x"05E",x"076",x"092",x"0C8",x"10C",x"198",x"261", -- 0x0828
    x"02D",x"030",x"032",x"034",x"037",x"03A",x"040",x"046", -- 0x0830
    x"052",x"060",x"078",x"094",x"0CA",x"10E",x"199",x"261", -- 0x0838
    x"030",x"033",x"035",x"037",x"03A",x"03E",x"043",x"049", -- 0x0840
    x"055",x"062",x"07B",x"096",x"0CC",x"110",x"19A",x"261", -- 0x0848
    x"034",x"036",x"038",x"03A",x"03E",x"041",x"046",x"04D", -- 0x0850
    x"059",x"065",x"07E",x"099",x"0CF",x"112",x"19B",x"261", -- 0x0858
    x"03A",x"03C",x"03E",x"040",x"043",x"046",x"04C",x"053", -- 0x0860
    x"05E",x"06B",x"083",x"09E",x"0D3",x"117",x"19E",x"261", -- 0x0868
    x"041",x"043",x"045",x"046",x"049",x"04D",x"053",x"059", -- 0x0870
    x"065",x"072",x"089",x"0A4",x"0D9",x"11B",x"1A1",x"261", -- 0x0878
    x"04C",x"04F",x"050",x"052",x"055",x"059",x"05E",x"065", -- 0x0880
    x"070",x"07D",x"094",x"0AF",x"0E3",x"124",x"1A7",x"261", -- 0x0888
    x"05A",x"05C",x"05E",x"060",x"062",x"065",x"06B",x"072", -- 0x0890
    x"07D",x"08A",x"0A1",x"0BB",x"0EF",x"12F",x"1B2",x"261", -- 0x0898
    x"072",x"074",x"076",x"078",x"07B",x"07E",x"083",x"089", -- 0x08A0
    x"094",x"0A1",x"0B6",x"0D1",x"103",x"142",x"1C2",x"268", -- 0x08A8
    x"08E",x"090",x"092",x"094",x"096",x"099",x"09E",x"0A4", -- 0x08B0
    x"0AF",x"0BB",x"0D1",x"0EB",x"11C",x"15A",x"1D6",x"277", -- 0x08B8
    x"0C5",x"0C7",x"0C8",x"0CA",x"0CC",x"0CF",x"0D3",x"0D9", -- 0x08C0
    x"0E3",x"0EF",x"103",x"11C",x"14B",x"189",x"200",x"28D", -- 0x08C8
    x"109",x"10A",x"10C",x"10D",x"110",x"112",x"116",x"11B", -- 0x08D0
    x"123",x"12F",x"142",x"15A",x"189",x"1C3",x"22F",x"2BA", -- 0x08D8
    x"197",x"198",x"198",x"199",x"19A",x"19B",x"19E",x"1A1", -- 0x08E0
    x"1A7",x"1B2",x"1C2",x"1D6",x"200",x"22F",x"292",x"315", -- 0x08E8
    x"260",x"260",x"260",x"260",x"260",x"260",x"260",x"260", -- 0x08F0
    x"260",x"260",x"268",x"276",x"28C",x"2BA",x"315",x"382", -- 0x08F8
    x"036",x"038",x"039",x"03B",x"03E",x"042",x"048",x"04E", -- 0x0900
    x"05A",x"067",x"07F",x"09A",x"0D0",x"114",x"1A1",x"268", -- 0x0908
    x"038",x"03A",x"03C",x"03E",x"041",x"044",x"04A",x"050", -- 0x0910
    x"05C",x"069",x"080",x"09C",x"0D2",x"116",x"1A1",x"268", -- 0x0918
    x"039",x"03C",x"03E",x"040",x"043",x"046",x"04C",x"052", -- 0x0920
    x"05D",x"06B",x"083",x"09E",x"0D4",x"117",x"1A2",x"268", -- 0x0928
    x"03B",x"03E",x"040",x"042",x"045",x"048",x"04D",x"054", -- 0x0930
    x"05F",x"06C",x"084",x"0A0",x"0D5",x"119",x"1A3",x"268", -- 0x0938
    x"03E",x"041",x"043",x"045",x"048",x"04B",x"050",x"057", -- 0x0940
    x"062",x"06F",x"087",x"0A2",x"0D7",x"11B",x"1A3",x"268", -- 0x0948
    x"042",x"044",x"046",x"048",x"04B",x"04E",x"054",x"05A", -- 0x0950
    x"066",x"072",x"08A",x"0A5",x"0DA",x"11D",x"1A5",x"268", -- 0x0958
    x"048",x"04A",x"04C",x"04D",x"050",x"054",x"05A",x"060", -- 0x0960
    x"06B",x"078",x"090",x"0AA",x"0DF",x"121",x"1A7",x"268", -- 0x0968
    x"04E",x"050",x"052",x"054",x"057",x"05A",x"060",x"066", -- 0x0970
    x"071",x"07E",x"095",x"0B0",x"0E4",x"126",x"1AB",x"268", -- 0x0978
    x"05A",x"05C",x"05D",x"05F",x"062",x"066",x"06B",x"071", -- 0x0980
    x"07C",x"089",x"09F",x"0BB",x"0EE",x"12E",x"1B0",x"268", -- 0x0988
    x"067",x"069",x"06B",x"06C",x"06F",x"072",x"078",x"07E", -- 0x0990
    x"089",x"096",x"0AC",x"0C6",x"0F9",x"139",x"1BB",x"268", -- 0x0998
    x"07F",x"080",x"083",x"084",x"087",x"08A",x"090",x"095", -- 0x09A0
    x"09F",x"0AC",x"0C1",x"0DC",x"10D",x"14C",x"1CB",x"26F", -- 0x09A8
    x"09A",x"09C",x"09E",x"0A0",x"0A2",x"0A5",x"0AA",x"0B0", -- 0x09B0
    x"0BB",x"0C6",x"0DC",x"0F6",x"126",x"163",x"1DE",x"27E", -- 0x09B8
    x"0D0",x"0D2",x"0D4",x"0D5",x"0D7",x"0DA",x"0DF",x"0E4", -- 0x09C0
    x"0EE",x"0F9",x"10D",x"126",x"154",x"192",x"207",x"293", -- 0x09C8
    x"114",x"115",x"117",x"118",x"11A",x"11C",x"121",x"125", -- 0x09D0
    x"12E",x"138",x"14C",x"163",x"191",x"1CA",x"235",x"2BF", -- 0x09D8
    x"1A1",x"1A1",x"1A2",x"1A3",x"1A3",x"1A5",x"1A7",x"1AB", -- 0x09E0
    x"1B0",x"1BB",x"1CB",x"1DE",x"207",x"235",x"298",x"31A", -- 0x09E8
    x"268",x"268",x"268",x"268",x"268",x"268",x"268",x"268", -- 0x09F0
    x"268",x"268",x"26F",x"27D",x"293",x"2BF",x"31A",x"386", -- 0x09F8
    x"050",x"052",x"053",x"055",x"058",x"05B",x"061",x"067", -- 0x0A00
    x"072",x"07E",x"096",x"0B0",x"0E5",x"128",x"1B1",x"275", -- 0x0A08
    x"052",x"054",x"056",x"057",x"05B",x"05D",x"063",x"069", -- 0x0A10
    x"074",x"080",x"097",x"0B2",x"0E7",x"129",x"1B2",x"275", -- 0x0A18
    x"053",x"056",x"057",x"059",x"05C",x"05F",x"065",x"06B", -- 0x0A20
    x"075",x"082",x"099",x"0B4",x"0E8",x"12B",x"1B3",x"275", -- 0x0A28
    x"055",x"057",x"059",x"05B",x"05E",x"061",x"066",x"06C", -- 0x0A30
    x"077",x"084",x"09B",x"0B6",x"0EA",x"12C",x"1B4",x"275", -- 0x0A38
    x"058",x"05B",x"05C",x"05E",x"061",x"064",x"069",x"06F", -- 0x0A40
    x"07A",x"086",x"09D",x"0B8",x"0EC",x"12E",x"1B4",x"275", -- 0x0A48
    x"05B",x"05D",x"05F",x"061",x"064",x"067",x"06C",x"073", -- 0x0A50
    x"07E",x"089",x"0A0",x"0BA",x"0EE",x"130",x"1B6",x"275", -- 0x0A58
    x"061",x"063",x"065",x"066",x"069",x"06C",x"072",x"078", -- 0x0A60
    x"082",x"08F",x"0A5",x"0BF",x"0F3",x"134",x"1B8",x"275", -- 0x0A68
    x"067",x"069",x"06B",x"06C",x"06F",x"073",x"078",x"07E", -- 0x0A70
    x"088",x"095",x"0AB",x"0C5",x"0F8",x"138",x"1BB",x"275", -- 0x0A78
    x"072",x"074",x"075",x"077",x"07A",x"07E",x"082",x"088", -- 0x0A80
    x"093",x"09F",x"0B5",x"0CF",x"101",x"141",x"1C0",x"275", -- 0x0A88
    x"07E",x"080",x"082",x"084",x"086",x"089",x"08F",x"095", -- 0x0A90
    x"09F",x"0AB",x"0C1",x"0DA",x"10C",x"14B",x"1CB",x"275", -- 0x0A98
    x"096",x"097",x"099",x"09B",x"09D",x"0A0",x"0A5",x"0AB", -- 0x0AA0
    x"0B5",x"0C1",x"0D5",x"0EF",x"11F",x"15D",x"1DA",x"27C", -- 0x0AA8
    x"0B0",x"0B2",x"0B4",x"0B6",x"0B8",x"0BA",x"0BF",x"0C5", -- 0x0AB0
    x"0CF",x"0DA",x"0EF",x"108",x"136",x"172",x"1EC",x"28A", -- 0x0AB8
    x"0E5",x"0E7",x"0E8",x"0EA",x"0EC",x"0EE",x"0F3",x"0F8", -- 0x0AC0
    x"101",x"10C",x"11E",x"136",x"164",x"1A0",x"213",x"29E", -- 0x0AC8
    x"127",x"128",x"12A",x"12B",x"12D",x"12F",x"133",x"137", -- 0x0AD0
    x"140",x"14A",x"15D",x"172",x"19F",x"1D7",x"240",x"2C8", -- 0x0AD8
    x"1B1",x"1B2",x"1B3",x"1B4",x"1B4",x"1B6",x"1B8",x"1BB", -- 0x0AE0
    x"1C0",x"1CB",x"1DA",x"1EC",x"212",x"240",x"2A1",x"320", -- 0x0AE8
    x"274",x"274",x"274",x"274",x"274",x"274",x"274",x"274", -- 0x0AF0
    x"274",x"274",x"27B",x"288",x"29D",x"2C8",x"320",x"38B", -- 0x0AF8
    x"06D",x"06F",x"070",x"072",x"075",x"078",x"07D",x"082", -- 0x0B00
    x"08C",x"097",x"0AE",x"0C6",x"0F9",x"13B",x"1C0",x"27D", -- 0x0B08
    x"06F",x"071",x"073",x"074",x"077",x"079",x"07E",x"084", -- 0x0B10
    x"08E",x"099",x"0AF",x"0C8",x"0FB",x"13C",x"1C1",x"27D", -- 0x0B18
    x"070",x"073",x"074",x"076",x"078",x"07B",x"080",x"086", -- 0x0B20
    x"08F",x"09B",x"0B1",x"0CA",x"0FD",x"13D",x"1C1",x"27D", -- 0x0B28
    x"072",x"074",x"076",x"078",x"07A",x"07D",x"082",x"087", -- 0x0B30
    x"091",x"09C",x"0B2",x"0CB",x"0FE",x"13F",x"1C2",x"27D", -- 0x0B38
    x"075",x"077",x"078",x"07A",x"07D",x"080",x"084",x"08A", -- 0x0B40
    x"094",x"09F",x"0B5",x"0CD",x"100",x"141",x"1C2",x"27D", -- 0x0B48
    x"078",x"079",x"07B",x"07D",x"080",x"082",x"087",x"08D", -- 0x0B50
    x"097",x"0A1",x"0B7",x"0D0",x"102",x"142",x"1C4",x"27D", -- 0x0B58
    x"07D",x"07E",x"080",x"082",x"084",x"087",x"08C",x"092", -- 0x0B60
    x"09B",x"0A6",x"0BC",x"0D4",x"106",x"146",x"1C6",x"27D", -- 0x0B68
    x"082",x"084",x"086",x"087",x"08A",x"08D",x"092",x"097", -- 0x0B70
    x"0A1",x"0AC",x"0C1",x"0D9",x"10B",x"14A",x"1C9",x"27D", -- 0x0B78
    x"08C",x"08E",x"08F",x"091",x"094",x"097",x"09B",x"0A1", -- 0x0B80
    x"0AA",x"0B5",x"0CA",x"0E3",x"113",x"151",x"1CE",x"27D", -- 0x0B88
    x"097",x"099",x"09B",x"09C",x"09F",x"0A1",x"0A6",x"0AC", -- 0x0B90
    x"0B5",x"0C1",x"0D5",x"0ED",x"11D",x"15B",x"1D7",x"27D", -- 0x0B98
    x"0AE",x"0AF",x"0B1",x"0B2",x"0B5",x"0B7",x"0BC",x"0C1", -- 0x0BA0
    x"0CA",x"0D5",x"0E7",x"100",x"12F",x"16B",x"1E5",x"283", -- 0x0BA8
    x"0C6",x"0C8",x"0CA",x"0CB",x"0CD",x"0D0",x"0D4",x"0D9", -- 0x0BB0
    x"0E3",x"0ED",x"100",x"118",x"145",x"17F",x"1F6",x"290", -- 0x0BB8
    x"0F9",x"0FB",x"0FD",x"0FE",x"100",x"102",x"106",x"10B", -- 0x0BC0
    x"113",x"11D",x"12E",x"145",x"170",x"1AB",x"21A",x"2A2", -- 0x0BC8
    x"139",x"13A",x"13C",x"13D",x"13F",x"141",x"144",x"148", -- 0x0BD0
    x"150",x"159",x"16B",x"17F",x"1A9",x"1DF",x"245",x"2CA", -- 0x0BD8
    x"1C0",x"1C1",x"1C1",x"1C2",x"1C2",x"1C4",x"1C6",x"1C9", -- 0x0BE0
    x"1CE",x"1D7",x"1E5",x"1F6",x"219",x"245",x"2A2",x"31E", -- 0x0BE8
    x"27B",x"27B",x"27B",x"27B",x"27B",x"27B",x"27B",x"27B", -- 0x0BF0
    x"27B",x"27B",x"282",x"28E",x"2A1",x"2CA",x"31E",x"386", -- 0x0BF8
    x"0A5",x"0A7",x"0A8",x"0A9",x"0AB",x"0AE",x"0B2",x"0B7", -- 0x0C00
    x"0C0",x"0C9",x"0DD",x"0F3",x"123",x"162",x"1E0",x"292", -- 0x0C08
    x"0A7",x"0A8",x"0AA",x"0AB",x"0AE",x"0B0",x"0B4",x"0B9", -- 0x0C10
    x"0C1",x"0CB",x"0DE",x"0F5",x"125",x"163",x"1E1",x"292", -- 0x0C18
    x"0A8",x"0AA",x"0AB",x"0AD",x"0AF",x"0B1",x"0B6",x"0BA", -- 0x0C20
    x"0C2",x"0CC",x"0E0",x"0F6",x"126",x"164",x"1E1",x"292", -- 0x0C28
    x"0A9",x"0AB",x"0AD",x"0AE",x"0B0",x"0B2",x"0B7",x"0BB", -- 0x0C30
    x"0C4",x"0CD",x"0E1",x"0F8",x"127",x"165",x"1E2",x"292", -- 0x0C38
    x"0AB",x"0AE",x"0AF",x"0B0",x"0B2",x"0B5",x"0B9",x"0BD", -- 0x0C40
    x"0C6",x"0CF",x"0E3",x"0F9",x"129",x"167",x"1E2",x"292", -- 0x0C48
    x"0AE",x"0B0",x"0B1",x"0B2",x"0B5",x"0B7",x"0BB",x"0C0", -- 0x0C50
    x"0C9",x"0D2",x"0E5",x"0FB",x"12B",x"168",x"1E3",x"292", -- 0x0C58
    x"0B2",x"0B4",x"0B6",x"0B7",x"0B9",x"0BB",x"0C0",x"0C4", -- 0x0C60
    x"0CC",x"0D6",x"0E9",x"0FF",x"12E",x"16C",x"1E5",x"292", -- 0x0C68
    x"0B7",x"0B9",x"0BA",x"0BB",x"0BD",x"0C0",x"0C4",x"0C9", -- 0x0C70
    x"0D1",x"0DB",x"0EE",x"103",x"132",x"16F",x"1E8",x"292", -- 0x0C78
    x"0C0",x"0C1",x"0C2",x"0C4",x"0C6",x"0C9",x"0CC",x"0D1", -- 0x0C80
    x"0D9",x"0E2",x"0F5",x"10B",x"139",x"175",x"1EC",x"292", -- 0x0C88
    x"0C9",x"0CB",x"0CC",x"0CD",x"0CF",x"0D2",x"0D6",x"0DB", -- 0x0C90
    x"0E2",x"0EC",x"0FF",x"114",x"142",x"17D",x"1F4",x"292", -- 0x0C98
    x"0DD",x"0DE",x"0E0",x"0E1",x"0E3",x"0E5",x"0E9",x"0EE", -- 0x0CA0
    x"0F5",x"0FF",x"10E",x"126",x"152",x"18B",x"1FF",x"298", -- 0x0CA8
    x"0F3",x"0F5",x"0F6",x"0F8",x"0F9",x"0FB",x"0FF",x"103", -- 0x0CB0
    x"10B",x"114",x"126",x"13B",x"164",x"19C",x"20E",x"2A2", -- 0x0CB8
    x"123",x"125",x"126",x"127",x"129",x"12B",x"12E",x"132", -- 0x0CC0
    x"139",x"142",x"150",x"164",x"18D",x"1C4",x"22E",x"2B2", -- 0x0CC8
    x"160",x"161",x"162",x"163",x"164",x"166",x"169",x"16C", -- 0x0CD0
    x"173",x"17A",x"18B",x"19C",x"1C2",x"1F4",x"256",x"2D5", -- 0x0CD8
    x"1E0",x"1E1",x"1E1",x"1E2",x"1E2",x"1E3",x"1E5",x"1E8", -- 0x0CE0
    x"1EC",x"1F4",x"1FF",x"20E",x"22B",x"256",x"2AD",x"324", -- 0x0CE8
    x"290",x"290",x"290",x"290",x"290",x"290",x"290",x"290", -- 0x0CF0
    x"290",x"290",x"295",x"2A0",x"2B0",x"2D5",x"324",x"388", -- 0x0CF8
    x"0EB",x"0ED",x"0EE",x"0EF",x"0F1",x"0F3",x"0F7",x"0FB", -- 0x0D00
    x"103",x"10B",x"11E",x"132",x"160",x"19D",x"217",x"2C2", -- 0x0D08
    x"0ED",x"0EE",x"0F0",x"0F1",x"0F3",x"0F5",x"0F8",x"0FD", -- 0x0D10
    x"104",x"10C",x"11F",x"134",x"162",x"19E",x"217",x"2C2", -- 0x0D18
    x"0EE",x"0F0",x"0F1",x"0F2",x"0F4",x"0F6",x"0FA",x"0FE", -- 0x0D20
    x"105",x"10E",x"120",x"135",x"163",x"19F",x"217",x"2C2", -- 0x0D28
    x"0EF",x"0F1",x"0F2",x"0F3",x"0F5",x"0F7",x"0FB",x"0FF", -- 0x0D30
    x"106",x"10F",x"121",x"136",x"164",x"1A0",x"218",x"2C2", -- 0x0D38
    x"0F1",x"0F3",x"0F4",x"0F5",x"0F7",x"0F9",x"0FD",x"101", -- 0x0D40
    x"108",x"111",x"123",x"137",x"165",x"1A1",x"218",x"2C2", -- 0x0D48
    x"0F3",x"0F5",x"0F6",x"0F7",x"0F9",x"0FB",x"0FF",x"103", -- 0x0D50
    x"10B",x"113",x"125",x"139",x"167",x"1A3",x"219",x"2C2", -- 0x0D58
    x"0F7",x"0F8",x"0FA",x"0FB",x"0FD",x"0FF",x"103",x"107", -- 0x0D60
    x"10E",x"116",x"128",x"13C",x"16A",x"1A6",x"21B",x"2C2", -- 0x0D68
    x"0FB",x"0FD",x"0FE",x"0FF",x"101",x"103",x"107",x"10B", -- 0x0D70
    x"112",x"11A",x"12C",x"140",x"16D",x"1A8",x"21D",x"2C2", -- 0x0D78
    x"103",x"104",x"105",x"106",x"108",x"10B",x"10E",x"112", -- 0x0D80
    x"119",x"121",x"133",x"147",x"173",x"1AE",x"221",x"2C2", -- 0x0D88
    x"10B",x"10C",x"10E",x"10F",x"111",x"113",x"116",x"11A", -- 0x0D90
    x"121",x"12A",x"13B",x"14F",x"17B",x"1B5",x"228",x"2C2", -- 0x0D98
    x"11E",x"11F",x"120",x"121",x"123",x"125",x"128",x"12C", -- 0x0DA0
    x"133",x"13B",x"149",x"15F",x"18B",x"1C1",x"232",x"2C6", -- 0x0DA8
    x"132",x"134",x"135",x"136",x"137",x"139",x"13C",x"140", -- 0x0DB0
    x"147",x"14F",x"15F",x"173",x"19A",x"1D0",x"23F",x"2D0", -- 0x0DB8
    x"160",x"162",x"163",x"164",x"165",x"167",x"16A",x"16D", -- 0x0DC0
    x"173",x"17B",x"187",x"19A",x"1C1",x"1F7",x"25C",x"2DE", -- 0x0DC8
    x"19A",x"19B",x"19C",x"19D",x"19E",x"1A0",x"1A2",x"1A5", -- 0x0DD0
    x"1AB",x"1B2",x"1C1",x"1D0",x"1F3",x"224",x"282",x"2FD", -- 0x0DD8
    x"217",x"217",x"217",x"218",x"218",x"219",x"21B",x"21D", -- 0x0DE0
    x"221",x"228",x"232",x"23F",x"259",x"282",x"2D5",x"348", -- 0x0DE8
    x"2BE",x"2BE",x"2BE",x"2BE",x"2BE",x"2BE",x"2BE",x"2BE", -- 0x0DF0
    x"2BE",x"2BE",x"2C3",x"2CC",x"2DA",x"2FD",x"348",x"3AA", -- 0x0DF8
    x"17D",x"17E",x"17E",x"17F",x"181",x"183",x"185",x"188", -- 0x0E00
    x"18E",x"194",x"1A4",x"1B5",x"1DF",x"218",x"288",x"325", -- 0x0E08
    x"17E",x"17F",x"180",x"180",x"182",x"184",x"186",x"189", -- 0x0E10
    x"18F",x"195",x"1A4",x"1B6",x"1E0",x"219",x"288",x"325", -- 0x0E18
    x"17E",x"180",x"180",x"182",x"183",x"185",x"187",x"18A", -- 0x0E20
    x"18F",x"196",x"1A5",x"1B6",x"1E0",x"219",x"289",x"325", -- 0x0E28
    x"17F",x"180",x"182",x"183",x"184",x"185",x"188",x"18B", -- 0x0E30
    x"190",x"197",x"1A6",x"1B7",x"1E1",x"21A",x"289",x"325", -- 0x0E38
    x"181",x"182",x"183",x"184",x"185",x"187",x"189",x"18C", -- 0x0E40
    x"192",x"198",x"1A7",x"1B8",x"1E2",x"21B",x"289",x"325", -- 0x0E48
    x"183",x"184",x"185",x"185",x"187",x"188",x"18B",x"18E", -- 0x0E50
    x"194",x"199",x"1A9",x"1BA",x"1E4",x"21C",x"28A",x"325", -- 0x0E58
    x"185",x"186",x"187",x"188",x"189",x"18B",x"18E",x"191", -- 0x0E60
    x"196",x"19C",x"1AB",x"1BC",x"1E6",x"21E",x"28B",x"325", -- 0x0E68
    x"188",x"189",x"18A",x"18B",x"18C",x"18E",x"191",x"194", -- 0x0E70
    x"199",x"19F",x"1AE",x"1BF",x"1E8",x"220",x"28D",x"325", -- 0x0E78
    x"18E",x"18F",x"18F",x"190",x"192",x"194",x"196",x"199", -- 0x0E80
    x"19E",x"1A4",x"1B3",x"1C4",x"1ED",x"224",x"290",x"325", -- 0x0E88
    x"194",x"195",x"196",x"197",x"198",x"199",x"19C",x"19F", -- 0x0E90
    x"1A4",x"1AA",x"1B9",x"1C9",x"1F2",x"229",x"295",x"325", -- 0x0E98
    x"1A4",x"1A4",x"1A5",x"1A6",x"1A7",x"1A9",x"1AB",x"1AE", -- 0x0EA0
    x"1B3",x"1B9",x"1C3",x"1D8",x"200",x"232",x"29C",x"328", -- 0x0EA8
    x"1B5",x"1B6",x"1B6",x"1B7",x"1B8",x"1BA",x"1BC",x"1BF", -- 0x0EB0
    x"1C4",x"1C9",x"1D8",x"1E8",x"20B",x"23D",x"2A5",x"32F", -- 0x0EB8
    x"1DF",x"1E0",x"1E0",x"1E1",x"1E2",x"1E4",x"1E6",x"1E8", -- 0x0EC0
    x"1ED",x"1F2",x"1FB",x"20B",x"22E",x"260",x"2BD",x"339", -- 0x0EC8
    x"214",x"214",x"215",x"216",x"217",x"218",x"21A",x"21C", -- 0x0ED0
    x"220",x"225",x"232",x"23D",x"25B",x"287",x"2DF",x"352", -- 0x0ED8
    x"288",x"288",x"289",x"289",x"289",x"28A",x"28B",x"28D", -- 0x0EE0
    x"290",x"295",x"29C",x"2A5",x"2B8",x"2DF",x"32B",x"396", -- 0x0EE8
    x"320",x"320",x"320",x"320",x"320",x"320",x"320",x"320", -- 0x0EF0
    x"320",x"320",x"324",x"32B",x"335",x"352",x"396",x"3F3", -- 0x0EF8
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F00
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F08
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F10
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F18
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F20
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F28
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F30
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F38
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F40
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F48
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F50
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F58
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F60
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F68
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F70
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F78
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F80
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F88
    x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D",x"24D", -- 0x0F90
    x"24D",x"24D",x"254",x"25C",x"27C",x"2AB",x"302",x"379", -- 0x0F98
    x"254",x"254",x"254",x"254",x"254",x"254",x"254",x"254", -- 0x0FA0
    x"254",x"254",x"254",x"264",x"284",x"2AB",x"302",x"379", -- 0x0FA8
    x"25C",x"25C",x"25C",x"25C",x"25C",x"25C",x"25C",x"25C", -- 0x0FB0
    x"25C",x"25C",x"264",x"26C",x"284",x"2AB",x"302",x"379", -- 0x0FB8
    x"27C",x"27C",x"27C",x"27C",x"27C",x"27C",x"27C",x"27C", -- 0x0FC0
    x"27C",x"27C",x"27C",x"284",x"29C",x"2C3",x"30A",x"379", -- 0x0FC8
    x"2A3",x"2A3",x"2A3",x"2A3",x"2A3",x"2A3",x"2A3",x"2A3", -- 0x0FD0
    x"2A3",x"2A3",x"2AB",x"2AB",x"2BB",x"2DB",x"322",x"381", -- 0x0FD8
    x"302",x"302",x"302",x"302",x"302",x"302",x"302",x"302", -- 0x0FE0
    x"302",x"302",x"302",x"302",x"302",x"322",x"359",x"3B0", -- 0x0FE8
    x"371",x"371",x"371",x"371",x"371",x"371",x"371",x"371", -- 0x0FF0
    x"371",x"371",x"371",x"371",x"371",x"381",x"3B0",x"3FF"  -- 0x0FF8
  );

begin

  p_rom : process
  begin
    wait until rising_edge(CLK);
     DATA_A <= ROM(to_integer(unsigned(ADDR_A)))(9 downto 0);
     DATA_B <= ROM(to_integer(unsigned(ADDR_B)))(9 downto 0);
  end process;
end RTL;
