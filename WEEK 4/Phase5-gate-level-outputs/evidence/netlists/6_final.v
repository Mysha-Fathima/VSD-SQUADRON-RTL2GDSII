module user_project_wrapper (user_clock2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _109_;
 wire _111_;
 wire _112_;
 wire _114_;
 wire _116_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _124_;
 wire _127_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire \debug.debug_reg_1[0] ;
 wire \debug.debug_reg_1[10] ;
 wire \debug.debug_reg_1[11] ;
 wire \debug.debug_reg_1[12] ;
 wire \debug.debug_reg_1[13] ;
 wire \debug.debug_reg_1[14] ;
 wire \debug.debug_reg_1[15] ;
 wire \debug.debug_reg_1[16] ;
 wire \debug.debug_reg_1[17] ;
 wire \debug.debug_reg_1[18] ;
 wire \debug.debug_reg_1[19] ;
 wire \debug.debug_reg_1[1] ;
 wire \debug.debug_reg_1[20] ;
 wire \debug.debug_reg_1[21] ;
 wire \debug.debug_reg_1[22] ;
 wire \debug.debug_reg_1[23] ;
 wire \debug.debug_reg_1[24] ;
 wire \debug.debug_reg_1[25] ;
 wire \debug.debug_reg_1[26] ;
 wire \debug.debug_reg_1[27] ;
 wire \debug.debug_reg_1[28] ;
 wire \debug.debug_reg_1[29] ;
 wire \debug.debug_reg_1[2] ;
 wire \debug.debug_reg_1[30] ;
 wire \debug.debug_reg_1[31] ;
 wire \debug.debug_reg_1[3] ;
 wire \debug.debug_reg_1[4] ;
 wire \debug.debug_reg_1[5] ;
 wire \debug.debug_reg_1[6] ;
 wire \debug.debug_reg_1[7] ;
 wire \debug.debug_reg_1[8] ;
 wire \debug.debug_reg_1[9] ;
 wire \debug.debug_reg_2[0] ;
 wire \debug.debug_reg_2[10] ;
 wire \debug.debug_reg_2[11] ;
 wire \debug.debug_reg_2[12] ;
 wire \debug.debug_reg_2[13] ;
 wire \debug.debug_reg_2[14] ;
 wire \debug.debug_reg_2[15] ;
 wire \debug.debug_reg_2[16] ;
 wire \debug.debug_reg_2[17] ;
 wire \debug.debug_reg_2[18] ;
 wire \debug.debug_reg_2[19] ;
 wire \debug.debug_reg_2[1] ;
 wire \debug.debug_reg_2[20] ;
 wire \debug.debug_reg_2[21] ;
 wire \debug.debug_reg_2[22] ;
 wire \debug.debug_reg_2[23] ;
 wire \debug.debug_reg_2[24] ;
 wire \debug.debug_reg_2[25] ;
 wire \debug.debug_reg_2[26] ;
 wire \debug.debug_reg_2[27] ;
 wire \debug.debug_reg_2[28] ;
 wire \debug.debug_reg_2[29] ;
 wire \debug.debug_reg_2[2] ;
 wire \debug.debug_reg_2[30] ;
 wire \debug.debug_reg_2[31] ;
 wire \debug.debug_reg_2[3] ;
 wire \debug.debug_reg_2[4] ;
 wire \debug.debug_reg_2[5] ;
 wire \debug.debug_reg_2[6] ;
 wire \debug.debug_reg_2[7] ;
 wire \debug.debug_reg_2[8] ;
 wire \debug.debug_reg_2[9] ;
 wire \debug.wbs_ack_o ;
 wire net207;
 wire net279;
 wire net208;
 wire net209;
 wire net210;
 wire net211;
 wire net212;
 wire net213;
 wire net214;
 wire net215;
 wire net216;
 wire net217;
 wire net218;
 wire net219;
 wire net220;
 wire net221;
 wire net222;
 wire net223;
 wire net224;
 wire net225;
 wire net226;
 wire net227;
 wire net228;
 wire net229;
 wire net230;
 wire net231;
 wire net232;
 wire net233;
 wire net234;
 wire net235;
 wire net236;
 wire net237;
 wire net238;
 wire net239;
 wire net240;
 wire net241;
 wire net242;
 wire net243;
 wire net244;
 wire net245;
 wire net246;
 wire net247;
 wire net248;
 wire clknet_3_1__leaf_wb_clk_i;
 wire clknet_3_0__leaf_wb_clk_i;
 wire net251;
 wire net252;
 wire net253;
 wire net254;
 wire net337;
 wire net256;
 wire net257;
 wire net258;
 wire net259;
 wire net260;
 wire net261;
 wire net262;
 wire net263;
 wire net264;
 wire net265;
 wire net266;
 wire net267;
 wire net268;
 wire net269;
 wire net270;
 wire net271;
 wire net272;
 wire net280;
 wire net281;
 wire net282;
 wire net283;
 wire net284;
 wire net285;
 wire net286;
 wire net287;
 wire net288;
 wire net289;
 wire net290;
 wire net291;
 wire net292;
 wire net293;
 wire net294;
 wire net295;
 wire net296;
 wire net297;
 wire net298;
 wire net299;
 wire net300;
 wire net301;
 wire net302;
 wire net303;
 wire net304;
 wire net305;
 wire net306;
 wire net307;
 wire net308;
 wire net309;
 wire net310;
 wire net311;
 wire net273;
 wire net274;
 wire net275;
 wire net276;
 wire net277;
 wire net278;
 wire clknet_3_7__leaf_wb_clk_i;
 wire clknet_3_6__leaf_wb_clk_i;
 wire clknet_3_5__leaf_wb_clk_i;
 wire clknet_3_4__leaf_wb_clk_i;
 wire clknet_0_wb_clk_i;
 wire net333;
 wire net332;
 wire net331;
 wire net321;
 wire net320;
 wire net319;
 wire net330;
 wire clknet_3_3__leaf_wb_clk_i;
 wire clknet_3_2__leaf_wb_clk_i;
 wire net334;
 wire net335;
 wire net336;
 wire net338;

 sky130_fd_sc_hd__nand2_1 _220_ (.A(net238),
    .B(net209),
    .Y(_098_));
 sky130_fd_sc_hd__nand4_1 _221_ (.A(net234),
    .B(net235),
    .C(net236),
    .D(net237),
    .Y(_099_));
 sky130_fd_sc_hd__mux2_2 _223_ (.A0(\debug.debug_reg_1[13] ),
    .A1(\debug.debug_reg_2[13] ),
    .S(_124_),
    .X(_172_));
 sky130_fd_sc_hd__mux2i_1 _224_ (.A0(_172_),
    .A1(net284),
    .S(net338),
    .Y(_173_));
 sky130_fd_sc_hd__nor2_1 _225_ (.A(net330),
    .B(_173_),
    .Y(_074_));
 sky130_fd_sc_hd__mux2_2 _226_ (.A0(\debug.debug_reg_1[12] ),
    .A1(\debug.debug_reg_2[12] ),
    .S(_124_),
    .X(_174_));
 sky130_fd_sc_hd__mux2i_1 _227_ (.A0(_174_),
    .A1(net283),
    .S(net338),
    .Y(_175_));
 sky130_fd_sc_hd__nor2_1 _228_ (.A(net330),
    .B(_175_),
    .Y(_075_));
 sky130_fd_sc_hd__mux2_2 _230_ (.A0(\debug.debug_reg_1[11] ),
    .A1(\debug.debug_reg_2[11] ),
    .S(_124_),
    .X(_177_));
 sky130_fd_sc_hd__mux2i_1 _231_ (.A0(_177_),
    .A1(net282),
    .S(net338),
    .Y(_178_));
 sky130_fd_sc_hd__nor2_1 _232_ (.A(net330),
    .B(_178_),
    .Y(_076_));
 sky130_fd_sc_hd__and3b_1 _233_ (.A_N(\debug.wbs_ack_o ),
    .B(net277),
    .C(net240),
    .X(_109_));
 sky130_fd_sc_hd__mux2_2 _234_ (.A0(\debug.debug_reg_1[10] ),
    .A1(\debug.debug_reg_2[10] ),
    .S(_124_),
    .X(_179_));
 sky130_fd_sc_hd__mux2i_1 _235_ (.A0(_179_),
    .A1(net281),
    .S(net338),
    .Y(_180_));
 sky130_fd_sc_hd__nor2_1 _236_ (.A(net330),
    .B(_180_),
    .Y(_077_));
 sky130_fd_sc_hd__mux2_2 _237_ (.A0(\debug.debug_reg_1[9] ),
    .A1(\debug.debug_reg_2[9] ),
    .S(_124_),
    .X(_181_));
 sky130_fd_sc_hd__mux2i_1 _238_ (.A0(_181_),
    .A1(net311),
    .S(net338),
    .Y(_182_));
 sky130_fd_sc_hd__nor2_1 _239_ (.A(net330),
    .B(_182_),
    .Y(_078_));
 sky130_fd_sc_hd__mux2_2 _240_ (.A0(\debug.debug_reg_1[8] ),
    .A1(\debug.debug_reg_2[8] ),
    .S(_124_),
    .X(_183_));
 sky130_fd_sc_hd__mux2i_1 _241_ (.A0(_183_),
    .A1(net310),
    .S(net338),
    .Y(_184_));
 sky130_fd_sc_hd__nor2_1 _242_ (.A(net330),
    .B(_184_),
    .Y(_079_));
 sky130_fd_sc_hd__mux2i_1 _243_ (.A0(\debug.debug_reg_1[7] ),
    .A1(\debug.debug_reg_2[7] ),
    .S(_124_),
    .Y(_185_));
 sky130_fd_sc_hd__nand2_1 _245_ (.A(net338),
    .B(net309),
    .Y(_186_));
 sky130_fd_sc_hd__o21ai_0 _246_ (.A1(net338),
    .A2(_185_),
    .B1(_186_),
    .Y(_187_));
 sky130_fd_sc_hd__nor2b_1 _247_ (.A(_112_),
    .B_N(_187_),
    .Y(_080_));
 sky130_fd_sc_hd__mux2_2 _248_ (.A0(\debug.debug_reg_1[6] ),
    .A1(\debug.debug_reg_2[6] ),
    .S(_124_),
    .X(_188_));
 sky130_fd_sc_hd__mux2i_1 _249_ (.A0(_188_),
    .A1(net308),
    .S(net338),
    .Y(_189_));
 sky130_fd_sc_hd__nor2_1 _250_ (.A(_112_),
    .B(_189_),
    .Y(_081_));
 sky130_fd_sc_hd__mux2_2 _251_ (.A0(\debug.debug_reg_1[5] ),
    .A1(\debug.debug_reg_2[5] ),
    .S(_124_),
    .X(_190_));
 sky130_fd_sc_hd__mux2i_1 _252_ (.A0(_190_),
    .A1(net307),
    .S(net338),
    .Y(_191_));
 sky130_fd_sc_hd__nor2_1 _253_ (.A(_112_),
    .B(_191_),
    .Y(_082_));
 sky130_fd_sc_hd__mux2_2 _254_ (.A0(\debug.debug_reg_1[4] ),
    .A1(\debug.debug_reg_2[4] ),
    .S(_124_),
    .X(_192_));
 sky130_fd_sc_hd__nor3b_1 _255_ (.A(net208),
    .B(net219),
    .C_N(net233),
    .Y(_111_));
 sky130_fd_sc_hd__mux2i_1 _256_ (.A0(_192_),
    .A1(net306),
    .S(net338),
    .Y(_193_));
 sky130_fd_sc_hd__nor2_1 _257_ (.A(net330),
    .B(_193_),
    .Y(_083_));
 sky130_fd_sc_hd__mux2_2 _258_ (.A0(\debug.debug_reg_1[3] ),
    .A1(\debug.debug_reg_2[3] ),
    .S(_124_),
    .X(_194_));
 sky130_fd_sc_hd__mux2i_1 _259_ (.A0(_194_),
    .A1(net305),
    .S(net338),
    .Y(_195_));
 sky130_fd_sc_hd__nor2_1 _260_ (.A(net330),
    .B(_195_),
    .Y(_084_));
 sky130_fd_sc_hd__mux2_2 _261_ (.A0(\debug.debug_reg_1[2] ),
    .A1(\debug.debug_reg_2[2] ),
    .S(_124_),
    .X(_196_));
 sky130_fd_sc_hd__mux2i_1 _262_ (.A0(_196_),
    .A1(net302),
    .S(net338),
    .Y(_197_));
 sky130_fd_sc_hd__nor2_1 _263_ (.A(net330),
    .B(_197_),
    .Y(_085_));
 sky130_fd_sc_hd__mux2_2 _264_ (.A0(\debug.debug_reg_1[1] ),
    .A1(\debug.debug_reg_2[1] ),
    .S(_124_),
    .X(_198_));
 sky130_fd_sc_hd__mux2i_1 _265_ (.A0(_198_),
    .A1(net291),
    .S(net338),
    .Y(_199_));
 sky130_fd_sc_hd__nand4_1 _266_ (.A(_102_),
    .B(net331),
    .C(_109_),
    .D(_111_),
    .Y(_112_));
 sky130_fd_sc_hd__nor2_1 _267_ (.A(_112_),
    .B(_199_),
    .Y(_086_));
 sky130_fd_sc_hd__mux2_2 _268_ (.A0(\debug.debug_reg_1[0] ),
    .A1(\debug.debug_reg_2[0] ),
    .S(_124_),
    .X(_200_));
 sky130_fd_sc_hd__mux2i_1 _269_ (.A0(_200_),
    .A1(net280),
    .S(net338),
    .Y(_201_));
 sky130_fd_sc_hd__nor2_1 _270_ (.A(net330),
    .B(_201_),
    .Y(_087_));
 sky130_fd_sc_hd__mux2_2 _271_ (.A0(\debug.debug_reg_1[31] ),
    .A1(\debug.debug_reg_2[31] ),
    .S(_124_),
    .X(_202_));
 sky130_fd_sc_hd__mux2i_1 _272_ (.A0(_202_),
    .A1(net304),
    .S(net338),
    .Y(_203_));
 sky130_fd_sc_hd__nor2_1 _273_ (.A(net330),
    .B(_203_),
    .Y(_088_));
 sky130_fd_sc_hd__mux2_2 _274_ (.A0(\debug.debug_reg_1[31] ),
    .A1(net265),
    .S(_121_),
    .X(_089_));
 sky130_fd_sc_hd__and2_1 _275_ (.A(net338),
    .B(net275),
    .X(_204_));
 sky130_fd_sc_hd__nand4b_1 _276_ (.A_N(net230),
    .B(_109_),
    .C(_111_),
    .D(_204_),
    .Y(_205_));
 sky130_fd_sc_hd__nor3_4 _278_ (.A(_114_),
    .B(_116_),
    .C(_205_),
    .Y(_206_));
 sky130_fd_sc_hd__mux2_2 _279_ (.A0(\debug.debug_reg_1[23] ),
    .A1(net256),
    .S(_206_),
    .X(_090_));
 sky130_fd_sc_hd__and2_1 _280_ (.A(net338),
    .B(net274),
    .X(_207_));
 sky130_fd_sc_hd__nand4b_1 _281_ (.A_N(net230),
    .B(_109_),
    .C(_111_),
    .D(_207_),
    .Y(_208_));
 sky130_fd_sc_hd__nor3_4 _282_ (.A(_114_),
    .B(_116_),
    .C(_208_),
    .Y(_209_));
 sky130_fd_sc_hd__mux2_2 _283_ (.A0(\debug.debug_reg_1[15] ),
    .A1(net247),
    .S(_209_),
    .X(_091_));
 sky130_fd_sc_hd__and2_1 _284_ (.A(net338),
    .B(net273),
    .X(_210_));
 sky130_fd_sc_hd__nand4b_1 _285_ (.A_N(net230),
    .B(_109_),
    .C(_111_),
    .D(_210_),
    .Y(_211_));
 sky130_fd_sc_hd__nor3_4 _286_ (.A(_114_),
    .B(_116_),
    .C(_211_),
    .Y(_212_));
 sky130_fd_sc_hd__mux2_2 _287_ (.A0(\debug.debug_reg_1[7] ),
    .A1(net270),
    .S(_212_),
    .X(_092_));
 sky130_fd_sc_hd__inv_1 _288_ (.A(net330),
    .Y(_097_));
 sky130_fd_sc_hd__and2_0 _289_ (.A(_109_),
    .B(_124_),
    .X(_213_));
 sky130_fd_sc_hd__nand4_2 _291_ (.A(_102_),
    .B(net331),
    .C(_119_),
    .D(_213_),
    .Y(_215_));
 sky130_fd_sc_hd__mux2_2 _292_ (.A0(net265),
    .A1(\debug.debug_reg_2[31] ),
    .S(_215_),
    .X(_093_));
 sky130_fd_sc_hd__nand4_2 _293_ (.A(_102_),
    .B(net331),
    .C(_204_),
    .D(_213_),
    .Y(_216_));
 sky130_fd_sc_hd__mux2_2 _294_ (.A0(net256),
    .A1(\debug.debug_reg_2[23] ),
    .S(_216_),
    .X(_094_));
 sky130_fd_sc_hd__nand4_2 _295_ (.A(_102_),
    .B(net331),
    .C(_207_),
    .D(_213_),
    .Y(_217_));
 sky130_fd_sc_hd__mux2_2 _296_ (.A0(net247),
    .A1(\debug.debug_reg_2[15] ),
    .S(_217_),
    .X(_095_));
 sky130_fd_sc_hd__nand4_2 _297_ (.A(_102_),
    .B(net331),
    .C(_210_),
    .D(_213_),
    .Y(_218_));
 sky130_fd_sc_hd__mux2_2 _298_ (.A0(net270),
    .A1(\debug.debug_reg_2[7] ),
    .S(_218_),
    .X(_096_));
 sky130_fd_sc_hd__or4_1 _299_ (.A(_098_),
    .B(_099_),
    .C(_100_),
    .D(_101_),
    .X(_114_));
 sky130_fd_sc_hd__inv_1 _300_ (.A(net207),
    .Y(_000_));
 sky130_fd_sc_hd__mux2_2 _301_ (.A0(net269),
    .A1(\debug.debug_reg_2[6] ),
    .S(_218_),
    .X(_001_));
 sky130_fd_sc_hd__mux2_2 _302_ (.A0(net268),
    .A1(\debug.debug_reg_2[5] ),
    .S(_218_),
    .X(_002_));
 sky130_fd_sc_hd__mux2_2 _303_ (.A0(net267),
    .A1(\debug.debug_reg_2[4] ),
    .S(_218_),
    .X(_003_));
 sky130_fd_sc_hd__mux2_2 _304_ (.A0(net266),
    .A1(\debug.debug_reg_2[3] ),
    .S(_218_),
    .X(_004_));
 sky130_fd_sc_hd__mux2_2 _305_ (.A0(net263),
    .A1(\debug.debug_reg_2[2] ),
    .S(_218_),
    .X(_005_));
 sky130_fd_sc_hd__mux2_2 _306_ (.A0(net252),
    .A1(\debug.debug_reg_2[1] ),
    .S(_218_),
    .X(_006_));
 sky130_fd_sc_hd__mux2_2 _307_ (.A0(net241),
    .A1(\debug.debug_reg_2[0] ),
    .S(_218_),
    .X(_007_));
 sky130_fd_sc_hd__mux2_2 _308_ (.A0(net246),
    .A1(\debug.debug_reg_2[14] ),
    .S(_217_),
    .X(_008_));
 sky130_fd_sc_hd__mux2_2 _309_ (.A0(net245),
    .A1(\debug.debug_reg_2[13] ),
    .S(_217_),
    .X(_009_));
 sky130_fd_sc_hd__mux2_2 _311_ (.A0(net244),
    .A1(\debug.debug_reg_2[12] ),
    .S(_217_),
    .X(_010_));
 sky130_fd_sc_hd__mux2_2 _312_ (.A0(net243),
    .A1(\debug.debug_reg_2[11] ),
    .S(_217_),
    .X(_011_));
 sky130_fd_sc_hd__mux2_2 _313_ (.A0(net242),
    .A1(\debug.debug_reg_2[10] ),
    .S(_217_),
    .X(_012_));
 sky130_fd_sc_hd__mux2_2 _314_ (.A0(net272),
    .A1(\debug.debug_reg_2[9] ),
    .S(_217_),
    .X(_013_));
 sky130_fd_sc_hd__mux2_2 _315_ (.A0(net271),
    .A1(\debug.debug_reg_2[8] ),
    .S(_217_),
    .X(_014_));
 sky130_fd_sc_hd__mux2_2 _316_ (.A0(net319),
    .A1(\debug.debug_reg_2[22] ),
    .S(_216_),
    .X(_015_));
 sky130_fd_sc_hd__mux2_2 _317_ (.A0(net254),
    .A1(\debug.debug_reg_2[21] ),
    .S(_216_),
    .X(_016_));
 sky130_fd_sc_hd__mux2_2 _318_ (.A0(net253),
    .A1(\debug.debug_reg_2[20] ),
    .S(_216_),
    .X(_017_));
 sky130_fd_sc_hd__mux2_2 _319_ (.A0(net251),
    .A1(\debug.debug_reg_2[19] ),
    .S(_216_),
    .X(_018_));
 sky130_fd_sc_hd__mux2_2 _320_ (.A0(net320),
    .A1(\debug.debug_reg_2[18] ),
    .S(_216_),
    .X(_019_));
 sky130_fd_sc_hd__nand4bb_1 _321_ (.A_N(_103_),
    .B_N(_104_),
    .C(_105_),
    .D(_106_),
    .Y(_116_));
 sky130_fd_sc_hd__mux2_2 _322_ (.A0(net321),
    .A1(\debug.debug_reg_2[17] ),
    .S(_216_),
    .X(_020_));
 sky130_fd_sc_hd__mux2_2 _323_ (.A0(net248),
    .A1(\debug.debug_reg_2[16] ),
    .S(_216_),
    .X(_021_));
 sky130_fd_sc_hd__mux2_2 _324_ (.A0(net264),
    .A1(\debug.debug_reg_2[30] ),
    .S(_215_),
    .X(_022_));
 sky130_fd_sc_hd__mux2_2 _325_ (.A0(net262),
    .A1(\debug.debug_reg_2[29] ),
    .S(_215_),
    .X(_023_));
 sky130_fd_sc_hd__mux2_2 _326_ (.A0(net261),
    .A1(\debug.debug_reg_2[28] ),
    .S(_215_),
    .X(_024_));
 sky130_fd_sc_hd__mux2_2 _327_ (.A0(net260),
    .A1(\debug.debug_reg_2[27] ),
    .S(_215_),
    .X(_025_));
 sky130_fd_sc_hd__mux2_2 _328_ (.A0(net259),
    .A1(\debug.debug_reg_2[26] ),
    .S(_215_),
    .X(_026_));
 sky130_fd_sc_hd__mux2_2 _329_ (.A0(net258),
    .A1(\debug.debug_reg_2[25] ),
    .S(_215_),
    .X(_027_));
 sky130_fd_sc_hd__mux2_2 _330_ (.A0(net257),
    .A1(\debug.debug_reg_2[24] ),
    .S(_215_),
    .X(_028_));
 sky130_fd_sc_hd__mux2_2 _331_ (.A0(\debug.debug_reg_1[6] ),
    .A1(net269),
    .S(_212_),
    .X(_029_));
 sky130_fd_sc_hd__nand4_1 _332_ (.A(net239),
    .B(net210),
    .C(net211),
    .D(net216),
    .Y(_100_));
 sky130_fd_sc_hd__mux2_2 _334_ (.A0(\debug.debug_reg_1[5] ),
    .A1(net268),
    .S(_212_),
    .X(_030_));
 sky130_fd_sc_hd__mux2_2 _335_ (.A0(\debug.debug_reg_1[4] ),
    .A1(net267),
    .S(_212_),
    .X(_031_));
 sky130_fd_sc_hd__mux2_2 _336_ (.A0(\debug.debug_reg_1[3] ),
    .A1(net266),
    .S(_212_),
    .X(_032_));
 sky130_fd_sc_hd__mux2_2 _337_ (.A0(\debug.debug_reg_1[2] ),
    .A1(net263),
    .S(_212_),
    .X(_033_));
 sky130_fd_sc_hd__mux2_2 _338_ (.A0(\debug.debug_reg_1[1] ),
    .A1(net252),
    .S(_212_),
    .X(_034_));
 sky130_fd_sc_hd__mux2_2 _339_ (.A0(\debug.debug_reg_1[0] ),
    .A1(net241),
    .S(_212_),
    .X(_035_));
 sky130_fd_sc_hd__mux2_2 _340_ (.A0(\debug.debug_reg_1[14] ),
    .A1(net246),
    .S(_209_),
    .X(_036_));
 sky130_fd_sc_hd__mux2_2 _341_ (.A0(\debug.debug_reg_1[13] ),
    .A1(net245),
    .S(_209_),
    .X(_037_));
 sky130_fd_sc_hd__mux2_2 _342_ (.A0(\debug.debug_reg_1[12] ),
    .A1(net244),
    .S(_209_),
    .X(_038_));
 sky130_fd_sc_hd__mux2_2 _343_ (.A0(\debug.debug_reg_1[11] ),
    .A1(net243),
    .S(_209_),
    .X(_039_));
 sky130_fd_sc_hd__mux2_2 _345_ (.A0(\debug.debug_reg_1[10] ),
    .A1(net242),
    .S(_209_),
    .X(_040_));
 sky130_fd_sc_hd__mux2_2 _346_ (.A0(\debug.debug_reg_1[9] ),
    .A1(net272),
    .S(_209_),
    .X(_041_));
 sky130_fd_sc_hd__mux2_2 _347_ (.A0(\debug.debug_reg_1[8] ),
    .A1(net271),
    .S(_209_),
    .X(_042_));
 sky130_fd_sc_hd__mux2_2 _348_ (.A0(\debug.debug_reg_1[22] ),
    .A1(net319),
    .S(_206_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_2 _349_ (.A0(\debug.debug_reg_1[21] ),
    .A1(net254),
    .S(_206_),
    .X(_044_));
 sky130_fd_sc_hd__mux2_2 _350_ (.A0(\debug.debug_reg_1[20] ),
    .A1(net253),
    .S(_206_),
    .X(_045_));
 sky130_fd_sc_hd__mux2_2 _351_ (.A0(\debug.debug_reg_1[19] ),
    .A1(net251),
    .S(_206_),
    .X(_046_));
 sky130_fd_sc_hd__mux2_2 _352_ (.A0(\debug.debug_reg_1[18] ),
    .A1(net320),
    .S(_206_),
    .X(_047_));
 sky130_fd_sc_hd__mux2_1 _353_ (.A0(\debug.debug_reg_1[17] ),
    .A1(net321),
    .S(_206_),
    .X(_048_));
 sky130_fd_sc_hd__mux2_1 _354_ (.A0(\debug.debug_reg_1[16] ),
    .A1(net248),
    .S(_206_),
    .X(_049_));
 sky130_fd_sc_hd__and2_1 _355_ (.A(net338),
    .B(net276),
    .X(_119_));
 sky130_fd_sc_hd__nand4b_1 _356_ (.A_N(net230),
    .B(_109_),
    .C(_111_),
    .D(_119_),
    .Y(_120_));
 sky130_fd_sc_hd__nor3_4 _357_ (.A(_114_),
    .B(_116_),
    .C(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__mux2_2 _358_ (.A0(\debug.debug_reg_1[30] ),
    .A1(net264),
    .S(_121_),
    .X(_050_));
 sky130_fd_sc_hd__mux2_2 _359_ (.A0(\debug.debug_reg_1[29] ),
    .A1(net262),
    .S(_121_),
    .X(_051_));
 sky130_fd_sc_hd__mux2_2 _360_ (.A0(\debug.debug_reg_1[28] ),
    .A1(net261),
    .S(_121_),
    .X(_052_));
 sky130_fd_sc_hd__mux2_2 _361_ (.A0(\debug.debug_reg_1[27] ),
    .A1(net260),
    .S(_121_),
    .X(_053_));
 sky130_fd_sc_hd__mux2_2 _362_ (.A0(\debug.debug_reg_1[26] ),
    .A1(net259),
    .S(_121_),
    .X(_054_));
 sky130_fd_sc_hd__nand4_1 _363_ (.A(net212),
    .B(net213),
    .C(net214),
    .D(net215),
    .Y(_101_));
 sky130_fd_sc_hd__and3_1 _364_ (.A(\debug.wbs_ack_o ),
    .B(_102_),
    .C(net331),
    .X(net279));
 sky130_fd_sc_hd__mux2_2 _365_ (.A0(\debug.debug_reg_1[25] ),
    .A1(net258),
    .S(_121_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_2 _366_ (.A0(\debug.debug_reg_1[24] ),
    .A1(net257),
    .S(_121_),
    .X(_056_));
 sky130_fd_sc_hd__and4bb_2 _369_ (.A_N(net208),
    .B_N(net219),
    .C(net230),
    .D(net233),
    .X(_124_));
 sky130_fd_sc_hd__mux2i_1 _372_ (.A0(\debug.debug_reg_1[30] ),
    .A1(\debug.debug_reg_2[30] ),
    .S(_124_),
    .Y(_127_));
 sky130_fd_sc_hd__nor4_2 _374_ (.A(_098_),
    .B(_099_),
    .C(_100_),
    .D(_101_),
    .Y(_102_));
 sky130_fd_sc_hd__nand2_1 _375_ (.A(net338),
    .B(net303),
    .Y(_129_));
 sky130_fd_sc_hd__o21ai_0 _376_ (.A1(net338),
    .A2(_127_),
    .B1(_129_),
    .Y(_130_));
 sky130_fd_sc_hd__nor2b_1 _377_ (.A(_112_),
    .B_N(_130_),
    .Y(_057_));
 sky130_fd_sc_hd__mux2i_1 _378_ (.A0(\debug.debug_reg_1[29] ),
    .A1(\debug.debug_reg_2[29] ),
    .S(_124_),
    .Y(_131_));
 sky130_fd_sc_hd__nand2_1 _379_ (.A(net338),
    .B(net301),
    .Y(_132_));
 sky130_fd_sc_hd__o21ai_0 _380_ (.A1(net338),
    .A2(_131_),
    .B1(_132_),
    .Y(_133_));
 sky130_fd_sc_hd__nor2b_1 _381_ (.A(net330),
    .B_N(_133_),
    .Y(_058_));
 sky130_fd_sc_hd__mux2i_1 _382_ (.A0(\debug.debug_reg_1[28] ),
    .A1(\debug.debug_reg_2[28] ),
    .S(_124_),
    .Y(_134_));
 sky130_fd_sc_hd__nand2_1 _383_ (.A(net338),
    .B(net300),
    .Y(_135_));
 sky130_fd_sc_hd__o21ai_0 _384_ (.A1(net338),
    .A2(_134_),
    .B1(_135_),
    .Y(_136_));
 sky130_fd_sc_hd__nand4b_1 _385_ (.A_N(net222),
    .B(net228),
    .C(net218),
    .D(net217),
    .Y(_103_));
 sky130_fd_sc_hd__nor2b_1 _386_ (.A(_112_),
    .B_N(_136_),
    .Y(_059_));
 sky130_fd_sc_hd__mux2i_1 _387_ (.A0(\debug.debug_reg_1[27] ),
    .A1(\debug.debug_reg_2[27] ),
    .S(_124_),
    .Y(_137_));
 sky130_fd_sc_hd__nand2_1 _388_ (.A(net338),
    .B(net299),
    .Y(_138_));
 sky130_fd_sc_hd__o21ai_0 _389_ (.A1(net338),
    .A2(_137_),
    .B1(_138_),
    .Y(_139_));
 sky130_fd_sc_hd__nor2b_1 _390_ (.A(_112_),
    .B_N(_139_),
    .Y(_060_));
 sky130_fd_sc_hd__mux2i_1 _391_ (.A0(\debug.debug_reg_1[26] ),
    .A1(\debug.debug_reg_2[26] ),
    .S(_124_),
    .Y(_140_));
 sky130_fd_sc_hd__nand2_1 _392_ (.A(net338),
    .B(net298),
    .Y(_141_));
 sky130_fd_sc_hd__o21ai_0 _393_ (.A1(net338),
    .A2(_140_),
    .B1(_141_),
    .Y(_142_));
 sky130_fd_sc_hd__nor2b_1 _394_ (.A(_112_),
    .B_N(_142_),
    .Y(_061_));
 sky130_fd_sc_hd__mux2_2 _395_ (.A0(\debug.debug_reg_1[25] ),
    .A1(\debug.debug_reg_2[25] ),
    .S(_124_),
    .X(_143_));
 sky130_fd_sc_hd__nand4bb_1 _396_ (.A_N(net220),
    .B_N(net221),
    .C(net233),
    .D(net229),
    .Y(_104_));
 sky130_fd_sc_hd__mux2i_1 _398_ (.A0(_143_),
    .A1(net297),
    .S(net338),
    .Y(_145_));
 sky130_fd_sc_hd__nor2_1 _399_ (.A(_112_),
    .B(_145_),
    .Y(_062_));
 sky130_fd_sc_hd__mux2_2 _400_ (.A0(\debug.debug_reg_1[24] ),
    .A1(\debug.debug_reg_2[24] ),
    .S(_124_),
    .X(_146_));
 sky130_fd_sc_hd__mux2i_1 _401_ (.A0(_146_),
    .A1(net296),
    .S(net338),
    .Y(_147_));
 sky130_fd_sc_hd__nor2_1 _402_ (.A(_112_),
    .B(_147_),
    .Y(_063_));
 sky130_fd_sc_hd__mux2_2 _403_ (.A0(\debug.debug_reg_1[23] ),
    .A1(\debug.debug_reg_2[23] ),
    .S(_124_),
    .X(_148_));
 sky130_fd_sc_hd__mux2i_1 _404_ (.A0(_148_),
    .A1(net295),
    .S(net338),
    .Y(_149_));
 sky130_fd_sc_hd__nor2_1 _405_ (.A(_112_),
    .B(_149_),
    .Y(_064_));
 sky130_fd_sc_hd__nor4_1 _407_ (.A(net223),
    .B(net224),
    .C(net225),
    .D(net226),
    .Y(_105_));
 sky130_fd_sc_hd__mux2_2 _408_ (.A0(\debug.debug_reg_1[22] ),
    .A1(\debug.debug_reg_2[22] ),
    .S(_124_),
    .X(_151_));
 sky130_fd_sc_hd__mux2i_1 _409_ (.A0(_151_),
    .A1(net333),
    .S(net338),
    .Y(_152_));
 sky130_fd_sc_hd__nor2_1 _410_ (.A(_112_),
    .B(_152_),
    .Y(_065_));
 sky130_fd_sc_hd__mux2_2 _411_ (.A0(\debug.debug_reg_1[21] ),
    .A1(\debug.debug_reg_2[21] ),
    .S(_124_),
    .X(_153_));
 sky130_fd_sc_hd__mux2i_1 _412_ (.A0(_153_),
    .A1(net293),
    .S(net338),
    .Y(_154_));
 sky130_fd_sc_hd__nor2_1 _413_ (.A(net330),
    .B(_154_),
    .Y(_066_));
 sky130_fd_sc_hd__mux2_2 _414_ (.A0(\debug.debug_reg_1[20] ),
    .A1(\debug.debug_reg_2[20] ),
    .S(_124_),
    .X(_155_));
 sky130_fd_sc_hd__mux2i_1 _415_ (.A0(_155_),
    .A1(net292),
    .S(net338),
    .Y(_156_));
 sky130_fd_sc_hd__nor2_1 _416_ (.A(_112_),
    .B(_156_),
    .Y(_067_));
 sky130_fd_sc_hd__mux2_2 _417_ (.A0(\debug.debug_reg_1[19] ),
    .A1(\debug.debug_reg_2[19] ),
    .S(_124_),
    .X(_157_));
 sky130_fd_sc_hd__nor3_1 _418_ (.A(net227),
    .B(net231),
    .C(net232),
    .Y(_106_));
 sky130_fd_sc_hd__mux2i_1 _419_ (.A0(_157_),
    .A1(net290),
    .S(net338),
    .Y(_158_));
 sky130_fd_sc_hd__nor2_1 _420_ (.A(net330),
    .B(_158_),
    .Y(_068_));
 sky130_fd_sc_hd__mux2_2 _421_ (.A0(\debug.debug_reg_1[18] ),
    .A1(\debug.debug_reg_2[18] ),
    .S(_124_),
    .X(_159_));
 sky130_fd_sc_hd__mux2i_1 _422_ (.A0(_159_),
    .A1(net289),
    .S(net338),
    .Y(_160_));
 sky130_fd_sc_hd__nor2_1 _423_ (.A(_112_),
    .B(_160_),
    .Y(_069_));
 sky130_fd_sc_hd__mux2_2 _424_ (.A0(\debug.debug_reg_1[17] ),
    .A1(\debug.debug_reg_2[17] ),
    .S(_124_),
    .X(_161_));
 sky130_fd_sc_hd__mux2i_1 _425_ (.A0(_161_),
    .A1(net335),
    .S(net338),
    .Y(_162_));
 sky130_fd_sc_hd__nor2_1 _426_ (.A(_112_),
    .B(_162_),
    .Y(_070_));
 sky130_fd_sc_hd__mux2_2 _428_ (.A0(\debug.debug_reg_1[16] ),
    .A1(\debug.debug_reg_2[16] ),
    .S(_124_),
    .X(_164_));
 sky130_fd_sc_hd__nor4bb_1 _429_ (.A(_103_),
    .B(_104_),
    .C_N(_105_),
    .D_N(_106_),
    .Y(_107_));
 sky130_fd_sc_hd__mux2i_1 _430_ (.A0(_164_),
    .A1(net287),
    .S(net338),
    .Y(_165_));
 sky130_fd_sc_hd__nor2_1 _431_ (.A(net330),
    .B(_165_),
    .Y(_071_));
 sky130_fd_sc_hd__mux2i_1 _432_ (.A0(\debug.debug_reg_1[15] ),
    .A1(\debug.debug_reg_2[15] ),
    .S(_124_),
    .Y(_166_));
 sky130_fd_sc_hd__nand2_1 _433_ (.A(net338),
    .B(net286),
    .Y(_167_));
 sky130_fd_sc_hd__o21ai_0 _434_ (.A1(net338),
    .A2(_166_),
    .B1(_167_),
    .Y(_168_));
 sky130_fd_sc_hd__nor2b_1 _435_ (.A(net330),
    .B_N(_168_),
    .Y(_072_));
 sky130_fd_sc_hd__mux2_2 _436_ (.A0(\debug.debug_reg_1[14] ),
    .A1(\debug.debug_reg_2[14] ),
    .S(_124_),
    .X(_169_));
 sky130_fd_sc_hd__mux2i_1 _438_ (.A0(_169_),
    .A1(net285),
    .S(net338),
    .Y(_171_));
 sky130_fd_sc_hd__nor2_1 _439_ (.A(net330),
    .B(_171_),
    .Y(_073_));
 sky130_fd_sc_hd__conb_1 _441__1 (.LO(io_oeb[0]));
 sky130_fd_sc_hd__conb_1 _442__2 (.LO(io_oeb[1]));
 sky130_fd_sc_hd__conb_1 _443__3 (.LO(io_oeb[2]));
 sky130_fd_sc_hd__conb_1 _444__4 (.LO(io_oeb[3]));
 sky130_fd_sc_hd__conb_1 _445__5 (.LO(io_oeb[4]));
 sky130_fd_sc_hd__conb_1 _446__6 (.LO(io_oeb[5]));
 sky130_fd_sc_hd__conb_1 _447__7 (.LO(io_oeb[6]));
 sky130_fd_sc_hd__conb_1 _448__8 (.LO(io_oeb[7]));
 sky130_fd_sc_hd__conb_1 _449__9 (.LO(io_oeb[8]));
 sky130_fd_sc_hd__conb_1 _450__10 (.LO(io_oeb[9]));
 sky130_fd_sc_hd__conb_1 _451__11 (.LO(io_oeb[10]));
 sky130_fd_sc_hd__conb_1 _452__12 (.LO(io_oeb[11]));
 sky130_fd_sc_hd__conb_1 _453__13 (.LO(io_oeb[12]));
 sky130_fd_sc_hd__conb_1 _454__14 (.LO(io_oeb[13]));
 sky130_fd_sc_hd__conb_1 _455__15 (.LO(io_oeb[14]));
 sky130_fd_sc_hd__conb_1 _456__16 (.LO(io_oeb[15]));
 sky130_fd_sc_hd__conb_1 _457__17 (.LO(io_oeb[16]));
 sky130_fd_sc_hd__conb_1 _458__18 (.LO(io_oeb[17]));
 sky130_fd_sc_hd__conb_1 _459__19 (.LO(io_oeb[18]));
 sky130_fd_sc_hd__conb_1 _460__20 (.LO(io_oeb[19]));
 sky130_fd_sc_hd__conb_1 _461__21 (.LO(io_oeb[20]));
 sky130_fd_sc_hd__conb_1 _462__22 (.LO(io_oeb[21]));
 sky130_fd_sc_hd__conb_1 _463__23 (.LO(io_oeb[22]));
 sky130_fd_sc_hd__conb_1 _464__24 (.LO(io_oeb[23]));
 sky130_fd_sc_hd__conb_1 _465__25 (.LO(io_oeb[24]));
 sky130_fd_sc_hd__conb_1 _466__26 (.LO(io_oeb[25]));
 sky130_fd_sc_hd__conb_1 _467__27 (.LO(io_oeb[26]));
 sky130_fd_sc_hd__conb_1 _468__28 (.LO(io_oeb[27]));
 sky130_fd_sc_hd__conb_1 _469__29 (.LO(io_oeb[28]));
 sky130_fd_sc_hd__conb_1 _470__30 (.LO(io_oeb[29]));
 sky130_fd_sc_hd__conb_1 _471__31 (.LO(io_oeb[30]));
 sky130_fd_sc_hd__conb_1 _472__32 (.LO(io_oeb[31]));
 sky130_fd_sc_hd__conb_1 _473__33 (.LO(io_oeb[32]));
 sky130_fd_sc_hd__conb_1 _474__34 (.LO(io_oeb[33]));
 sky130_fd_sc_hd__conb_1 _475__35 (.LO(io_oeb[34]));
 sky130_fd_sc_hd__conb_1 _476__36 (.LO(io_oeb[35]));
 sky130_fd_sc_hd__conb_1 _477__37 (.LO(io_oeb[36]));
 sky130_fd_sc_hd__conb_1 _478__38 (.LO(io_oeb[37]));
 sky130_fd_sc_hd__conb_1 _479__39 (.LO(io_out[0]));
 sky130_fd_sc_hd__conb_1 _480__40 (.LO(io_out[1]));
 sky130_fd_sc_hd__conb_1 _481__41 (.LO(io_out[2]));
 sky130_fd_sc_hd__conb_1 _482__42 (.LO(io_out[3]));
 sky130_fd_sc_hd__conb_1 _483__43 (.LO(io_out[4]));
 sky130_fd_sc_hd__conb_1 _484__44 (.LO(io_out[5]));
 sky130_fd_sc_hd__conb_1 _485__45 (.LO(io_out[6]));
 sky130_fd_sc_hd__conb_1 _486__46 (.LO(io_out[7]));
 sky130_fd_sc_hd__conb_1 _487__47 (.LO(io_out[8]));
 sky130_fd_sc_hd__conb_1 _488__48 (.LO(io_out[9]));
 sky130_fd_sc_hd__conb_1 _489__49 (.LO(io_out[10]));
 sky130_fd_sc_hd__conb_1 _490__50 (.LO(io_out[11]));
 sky130_fd_sc_hd__conb_1 _491__51 (.LO(io_out[12]));
 sky130_fd_sc_hd__conb_1 _492__52 (.LO(io_out[13]));
 sky130_fd_sc_hd__conb_1 _493__53 (.LO(io_out[14]));
 sky130_fd_sc_hd__conb_1 _494__54 (.LO(io_out[15]));
 sky130_fd_sc_hd__conb_1 _495__55 (.LO(io_out[16]));
 sky130_fd_sc_hd__conb_1 _496__56 (.LO(io_out[17]));
 sky130_fd_sc_hd__conb_1 _497__57 (.LO(io_out[18]));
 sky130_fd_sc_hd__conb_1 _498__58 (.LO(io_out[19]));
 sky130_fd_sc_hd__conb_1 _499__59 (.LO(io_out[20]));
 sky130_fd_sc_hd__conb_1 _500__60 (.LO(io_out[21]));
 sky130_fd_sc_hd__conb_1 _501__61 (.LO(io_out[22]));
 sky130_fd_sc_hd__conb_1 _502__62 (.LO(io_out[23]));
 sky130_fd_sc_hd__conb_1 _503__63 (.LO(io_out[24]));
 sky130_fd_sc_hd__conb_1 _504__64 (.LO(io_out[25]));
 sky130_fd_sc_hd__conb_1 _505__65 (.LO(io_out[26]));
 sky130_fd_sc_hd__conb_1 _506__66 (.LO(io_out[27]));
 sky130_fd_sc_hd__conb_1 _507__67 (.LO(io_out[28]));
 sky130_fd_sc_hd__conb_1 _508__68 (.LO(io_out[29]));
 sky130_fd_sc_hd__conb_1 _509__69 (.LO(io_out[30]));
 sky130_fd_sc_hd__conb_1 _510__70 (.LO(io_out[31]));
 sky130_fd_sc_hd__conb_1 _511__71 (.LO(io_out[32]));
 sky130_fd_sc_hd__conb_1 _512__72 (.LO(io_out[33]));
 sky130_fd_sc_hd__conb_1 _513__73 (.LO(io_out[34]));
 sky130_fd_sc_hd__conb_1 _514__74 (.LO(io_out[35]));
 sky130_fd_sc_hd__conb_1 _515__75 (.LO(io_out[36]));
 sky130_fd_sc_hd__conb_1 _516__76 (.LO(io_out[37]));
 sky130_fd_sc_hd__conb_1 _517__77 (.LO(la_data_out[0]));
 sky130_fd_sc_hd__conb_1 _518__78 (.LO(la_data_out[1]));
 sky130_fd_sc_hd__conb_1 _519__79 (.LO(la_data_out[2]));
 sky130_fd_sc_hd__conb_1 _520__80 (.LO(la_data_out[3]));
 sky130_fd_sc_hd__conb_1 _521__81 (.LO(la_data_out[4]));
 sky130_fd_sc_hd__conb_1 _522__82 (.LO(la_data_out[5]));
 sky130_fd_sc_hd__conb_1 _523__83 (.LO(la_data_out[6]));
 sky130_fd_sc_hd__conb_1 _524__84 (.LO(la_data_out[7]));
 sky130_fd_sc_hd__conb_1 _525__85 (.LO(la_data_out[8]));
 sky130_fd_sc_hd__conb_1 _526__86 (.LO(la_data_out[9]));
 sky130_fd_sc_hd__conb_1 _527__87 (.LO(la_data_out[10]));
 sky130_fd_sc_hd__conb_1 _528__88 (.LO(la_data_out[11]));
 sky130_fd_sc_hd__conb_1 _529__89 (.LO(la_data_out[12]));
 sky130_fd_sc_hd__conb_1 _530__90 (.LO(la_data_out[13]));
 sky130_fd_sc_hd__conb_1 _531__91 (.LO(la_data_out[14]));
 sky130_fd_sc_hd__conb_1 _532__92 (.LO(la_data_out[15]));
 sky130_fd_sc_hd__conb_1 _533__93 (.LO(la_data_out[16]));
 sky130_fd_sc_hd__conb_1 _534__94 (.LO(la_data_out[17]));
 sky130_fd_sc_hd__conb_1 _535__95 (.LO(la_data_out[18]));
 sky130_fd_sc_hd__conb_1 _536__96 (.LO(la_data_out[19]));
 sky130_fd_sc_hd__conb_1 _537__97 (.LO(la_data_out[20]));
 sky130_fd_sc_hd__conb_1 _538__98 (.LO(la_data_out[21]));
 sky130_fd_sc_hd__conb_1 _539__99 (.LO(la_data_out[22]));
 sky130_fd_sc_hd__conb_1 _540__100 (.LO(la_data_out[23]));
 sky130_fd_sc_hd__conb_1 _541__101 (.LO(la_data_out[24]));
 sky130_fd_sc_hd__conb_1 _542__102 (.LO(la_data_out[25]));
 sky130_fd_sc_hd__conb_1 _543__103 (.LO(la_data_out[26]));
 sky130_fd_sc_hd__conb_1 _544__104 (.LO(la_data_out[27]));
 sky130_fd_sc_hd__conb_1 _545__105 (.LO(la_data_out[28]));
 sky130_fd_sc_hd__conb_1 _546__106 (.LO(la_data_out[29]));
 sky130_fd_sc_hd__conb_1 _547__107 (.LO(la_data_out[30]));
 sky130_fd_sc_hd__conb_1 _548__108 (.LO(la_data_out[31]));
 sky130_fd_sc_hd__conb_1 _549__109 (.LO(la_data_out[32]));
 sky130_fd_sc_hd__conb_1 _550__110 (.LO(la_data_out[33]));
 sky130_fd_sc_hd__conb_1 _551__111 (.LO(la_data_out[34]));
 sky130_fd_sc_hd__conb_1 _552__112 (.LO(la_data_out[35]));
 sky130_fd_sc_hd__conb_1 _553__113 (.LO(la_data_out[36]));
 sky130_fd_sc_hd__conb_1 _554__114 (.LO(la_data_out[37]));
 sky130_fd_sc_hd__conb_1 _555__115 (.LO(la_data_out[38]));
 sky130_fd_sc_hd__conb_1 _556__116 (.LO(la_data_out[39]));
 sky130_fd_sc_hd__conb_1 _557__117 (.LO(la_data_out[40]));
 sky130_fd_sc_hd__conb_1 _558__118 (.LO(la_data_out[41]));
 sky130_fd_sc_hd__conb_1 _559__119 (.LO(la_data_out[42]));
 sky130_fd_sc_hd__conb_1 _560__120 (.LO(la_data_out[43]));
 sky130_fd_sc_hd__conb_1 _561__121 (.LO(la_data_out[44]));
 sky130_fd_sc_hd__conb_1 _562__122 (.LO(la_data_out[45]));
 sky130_fd_sc_hd__conb_1 _563__123 (.LO(la_data_out[46]));
 sky130_fd_sc_hd__conb_1 _564__124 (.LO(la_data_out[47]));
 sky130_fd_sc_hd__conb_1 _565__125 (.LO(la_data_out[48]));
 sky130_fd_sc_hd__conb_1 _566__126 (.LO(la_data_out[49]));
 sky130_fd_sc_hd__conb_1 _567__127 (.LO(la_data_out[50]));
 sky130_fd_sc_hd__conb_1 _568__128 (.LO(la_data_out[51]));
 sky130_fd_sc_hd__conb_1 _569__129 (.LO(la_data_out[52]));
 sky130_fd_sc_hd__conb_1 _570__130 (.LO(la_data_out[53]));
 sky130_fd_sc_hd__conb_1 _571__131 (.LO(la_data_out[54]));
 sky130_fd_sc_hd__conb_1 _572__132 (.LO(la_data_out[55]));
 sky130_fd_sc_hd__conb_1 _573__133 (.LO(la_data_out[56]));
 sky130_fd_sc_hd__conb_1 _574__134 (.LO(la_data_out[57]));
 sky130_fd_sc_hd__conb_1 _575__135 (.LO(la_data_out[58]));
 sky130_fd_sc_hd__conb_1 _576__136 (.LO(la_data_out[59]));
 sky130_fd_sc_hd__conb_1 _577__137 (.LO(la_data_out[60]));
 sky130_fd_sc_hd__conb_1 _578__138 (.LO(la_data_out[61]));
 sky130_fd_sc_hd__conb_1 _579__139 (.LO(la_data_out[62]));
 sky130_fd_sc_hd__conb_1 _580__140 (.LO(la_data_out[63]));
 sky130_fd_sc_hd__conb_1 _581__141 (.LO(la_data_out[64]));
 sky130_fd_sc_hd__conb_1 _582__142 (.LO(la_data_out[65]));
 sky130_fd_sc_hd__conb_1 _583__143 (.LO(la_data_out[66]));
 sky130_fd_sc_hd__conb_1 _584__144 (.LO(la_data_out[67]));
 sky130_fd_sc_hd__conb_1 _585__145 (.LO(la_data_out[68]));
 sky130_fd_sc_hd__conb_1 _586__146 (.LO(la_data_out[69]));
 sky130_fd_sc_hd__conb_1 _587__147 (.LO(la_data_out[70]));
 sky130_fd_sc_hd__conb_1 _588__148 (.LO(la_data_out[71]));
 sky130_fd_sc_hd__conb_1 _589__149 (.LO(la_data_out[72]));
 sky130_fd_sc_hd__conb_1 _590__150 (.LO(la_data_out[73]));
 sky130_fd_sc_hd__conb_1 _591__151 (.LO(la_data_out[74]));
 sky130_fd_sc_hd__conb_1 _592__152 (.LO(la_data_out[75]));
 sky130_fd_sc_hd__conb_1 _593__153 (.LO(la_data_out[76]));
 sky130_fd_sc_hd__conb_1 _594__154 (.LO(la_data_out[77]));
 sky130_fd_sc_hd__conb_1 _595__155 (.LO(la_data_out[78]));
 sky130_fd_sc_hd__conb_1 _596__156 (.LO(la_data_out[79]));
 sky130_fd_sc_hd__conb_1 _597__157 (.LO(la_data_out[80]));
 sky130_fd_sc_hd__conb_1 _598__158 (.LO(la_data_out[81]));
 sky130_fd_sc_hd__conb_1 _599__159 (.LO(la_data_out[82]));
 sky130_fd_sc_hd__conb_1 _600__160 (.LO(la_data_out[83]));
 sky130_fd_sc_hd__conb_1 _601__161 (.LO(la_data_out[84]));
 sky130_fd_sc_hd__conb_1 _602__162 (.LO(la_data_out[85]));
 sky130_fd_sc_hd__conb_1 _603__163 (.LO(la_data_out[86]));
 sky130_fd_sc_hd__conb_1 _604__164 (.LO(la_data_out[87]));
 sky130_fd_sc_hd__conb_1 _605__165 (.LO(la_data_out[88]));
 sky130_fd_sc_hd__conb_1 _606__166 (.LO(la_data_out[89]));
 sky130_fd_sc_hd__conb_1 _607__167 (.LO(la_data_out[90]));
 sky130_fd_sc_hd__conb_1 _608__168 (.LO(la_data_out[91]));
 sky130_fd_sc_hd__conb_1 _609__169 (.LO(la_data_out[92]));
 sky130_fd_sc_hd__conb_1 _610__170 (.LO(la_data_out[93]));
 sky130_fd_sc_hd__conb_1 _611__171 (.LO(la_data_out[94]));
 sky130_fd_sc_hd__conb_1 _612__172 (.LO(la_data_out[95]));
 sky130_fd_sc_hd__conb_1 _613__173 (.LO(la_data_out[96]));
 sky130_fd_sc_hd__conb_1 _614__174 (.LO(la_data_out[97]));
 sky130_fd_sc_hd__conb_1 _615__175 (.LO(la_data_out[98]));
 sky130_fd_sc_hd__conb_1 _616__176 (.LO(la_data_out[99]));
 sky130_fd_sc_hd__conb_1 _617__177 (.LO(la_data_out[100]));
 sky130_fd_sc_hd__conb_1 _618__178 (.LO(la_data_out[101]));
 sky130_fd_sc_hd__conb_1 _619__179 (.LO(la_data_out[102]));
 sky130_fd_sc_hd__conb_1 _620__180 (.LO(la_data_out[103]));
 sky130_fd_sc_hd__conb_1 _621__181 (.LO(la_data_out[104]));
 sky130_fd_sc_hd__conb_1 _622__182 (.LO(la_data_out[105]));
 sky130_fd_sc_hd__conb_1 _623__183 (.LO(la_data_out[106]));
 sky130_fd_sc_hd__conb_1 _624__184 (.LO(la_data_out[107]));
 sky130_fd_sc_hd__conb_1 _625__185 (.LO(la_data_out[108]));
 sky130_fd_sc_hd__conb_1 _626__186 (.LO(la_data_out[109]));
 sky130_fd_sc_hd__conb_1 _627__187 (.LO(la_data_out[110]));
 sky130_fd_sc_hd__conb_1 _628__188 (.LO(la_data_out[111]));
 sky130_fd_sc_hd__conb_1 _629__189 (.LO(la_data_out[112]));
 sky130_fd_sc_hd__conb_1 _630__190 (.LO(la_data_out[113]));
 sky130_fd_sc_hd__conb_1 _631__191 (.LO(la_data_out[114]));
 sky130_fd_sc_hd__conb_1 _632__192 (.LO(la_data_out[115]));
 sky130_fd_sc_hd__conb_1 _633__193 (.LO(la_data_out[116]));
 sky130_fd_sc_hd__conb_1 _634__194 (.LO(la_data_out[117]));
 sky130_fd_sc_hd__conb_1 _635__195 (.LO(la_data_out[118]));
 sky130_fd_sc_hd__conb_1 _636__196 (.LO(la_data_out[119]));
 sky130_fd_sc_hd__conb_1 _637__197 (.LO(la_data_out[120]));
 sky130_fd_sc_hd__conb_1 _638__198 (.LO(la_data_out[121]));
 sky130_fd_sc_hd__conb_1 _639__199 (.LO(la_data_out[122]));
 sky130_fd_sc_hd__conb_1 _640__200 (.LO(la_data_out[123]));
 sky130_fd_sc_hd__conb_1 _641__201 (.LO(la_data_out[124]));
 sky130_fd_sc_hd__conb_1 _642__202 (.LO(la_data_out[125]));
 sky130_fd_sc_hd__conb_1 _643__203 (.LO(la_data_out[126]));
 sky130_fd_sc_hd__conb_1 _644__204 (.LO(la_data_out[127]));
 sky130_fd_sc_hd__conb_1 _645__205 (.LO(user_irq[0]));
 sky130_fd_sc_hd__conb_1 _646__206 (.LO(user_irq[1]));
 sky130_fd_sc_hd__conb_1 _647__207 (.LO(user_irq[2]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_wb_clk_i (.A(wb_clk_i),
    .X(clknet_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_8 clkload0 (.A(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkinv_4 clkload1 (.A(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkinv_4 clkload2 (.A(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__bufinv_16 clkload3 (.A(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkinvlp_4 clkload4 (.A(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkinvlp_4 clkload5 (.A(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__clkinv_2 clkload6 (.A(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[0]$_DFFE_PP0P_  (.D(_035_),
    .Q(\debug.debug_reg_1[0] ),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[10]$_DFFE_PP0P_  (.D(_040_),
    .Q(\debug.debug_reg_1[10] ),
    .RESET_B(net336),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[11]$_DFFE_PP0P_  (.D(_039_),
    .Q(\debug.debug_reg_1[11] ),
    .RESET_B(net337),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[12]$_DFFE_PP0P_  (.D(_038_),
    .Q(\debug.debug_reg_1[12] ),
    .RESET_B(_000_),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[13]$_DFFE_PP0P_  (.D(_037_),
    .Q(\debug.debug_reg_1[13] ),
    .RESET_B(_000_),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[14]$_DFFE_PP0P_  (.D(_036_),
    .Q(\debug.debug_reg_1[14] ),
    .RESET_B(net337),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[15]$_DFFE_PP0P_  (.D(_091_),
    .Q(\debug.debug_reg_1[15] ),
    .RESET_B(net337),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[16]$_DFFE_PP0P_  (.D(_049_),
    .Q(\debug.debug_reg_1[16] ),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[17]$_DFFE_PP0P_  (.D(_048_),
    .Q(\debug.debug_reg_1[17] ),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[18]$_DFFE_PP0P_  (.D(_047_),
    .Q(\debug.debug_reg_1[18] ),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[19]$_DFFE_PP0P_  (.D(_046_),
    .Q(\debug.debug_reg_1[19] ),
    .RESET_B(_000_),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[1]$_DFFE_PP0P_  (.D(_034_),
    .Q(\debug.debug_reg_1[1] ),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[20]$_DFFE_PP0P_  (.D(_045_),
    .Q(\debug.debug_reg_1[20] ),
    .RESET_B(net336),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[21]$_DFFE_PP0P_  (.D(_044_),
    .Q(\debug.debug_reg_1[21] ),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[22]$_DFFE_PP0P_  (.D(_043_),
    .Q(\debug.debug_reg_1[22] ),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[23]$_DFFE_PP0P_  (.D(_090_),
    .Q(\debug.debug_reg_1[23] ),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[24]$_DFFE_PP0P_  (.D(_056_),
    .Q(\debug.debug_reg_1[24] ),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[25]$_DFFE_PP0P_  (.D(_055_),
    .Q(\debug.debug_reg_1[25] ),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[26]$_DFFE_PP0P_  (.D(_054_),
    .Q(\debug.debug_reg_1[26] ),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[27]$_DFFE_PP0P_  (.D(_053_),
    .Q(\debug.debug_reg_1[27] ),
    .RESET_B(net336),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[28]$_DFFE_PP0P_  (.D(_052_),
    .Q(\debug.debug_reg_1[28] ),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[29]$_DFFE_PP0P_  (.D(_051_),
    .Q(\debug.debug_reg_1[29] ),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[2]$_DFFE_PP0P_  (.D(_033_),
    .Q(\debug.debug_reg_1[2] ),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[30]$_DFFE_PP0P_  (.D(_050_),
    .Q(\debug.debug_reg_1[30] ),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[31]$_DFFE_PP0P_  (.D(_089_),
    .Q(\debug.debug_reg_1[31] ),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[3]$_DFFE_PP0P_  (.D(_032_),
    .Q(\debug.debug_reg_1[3] ),
    .RESET_B(net337),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[4]$_DFFE_PP0P_  (.D(_031_),
    .Q(\debug.debug_reg_1[4] ),
    .RESET_B(net337),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[5]$_DFFE_PP0P_  (.D(_030_),
    .Q(\debug.debug_reg_1[5] ),
    .RESET_B(net336),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[6]$_DFFE_PP0P_  (.D(_029_),
    .Q(\debug.debug_reg_1[6] ),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[7]$_DFFE_PP0P_  (.D(_092_),
    .Q(\debug.debug_reg_1[7] ),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[8]$_DFFE_PP0P_  (.D(_042_),
    .Q(\debug.debug_reg_1[8] ),
    .RESET_B(net337),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_1[9]$_DFFE_PP0P_  (.D(_041_),
    .Q(\debug.debug_reg_1[9] ),
    .RESET_B(_000_),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[0]$_DFFE_PP0P_  (.D(_007_),
    .Q(\debug.debug_reg_2[0] ),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[10]$_DFFE_PP0P_  (.D(_012_),
    .Q(\debug.debug_reg_2[10] ),
    .RESET_B(net336),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[11]$_DFFE_PP0P_  (.D(_011_),
    .Q(\debug.debug_reg_2[11] ),
    .RESET_B(net337),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[12]$_DFFE_PP0P_  (.D(_010_),
    .Q(\debug.debug_reg_2[12] ),
    .RESET_B(net337),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[13]$_DFFE_PP0P_  (.D(_009_),
    .Q(\debug.debug_reg_2[13] ),
    .RESET_B(_000_),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[14]$_DFFE_PP0P_  (.D(_008_),
    .Q(\debug.debug_reg_2[14] ),
    .RESET_B(net337),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[15]$_DFFE_PP0P_  (.D(_095_),
    .Q(\debug.debug_reg_2[15] ),
    .RESET_B(net337),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[16]$_DFFE_PP0P_  (.D(_021_),
    .Q(\debug.debug_reg_2[16] ),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[17]$_DFFE_PP0P_  (.D(_020_),
    .Q(\debug.debug_reg_2[17] ),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[18]$_DFFE_PP0P_  (.D(_019_),
    .Q(\debug.debug_reg_2[18] ),
    .RESET_B(net336),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[19]$_DFFE_PP0P_  (.D(_018_),
    .Q(\debug.debug_reg_2[19] ),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[1]$_DFFE_PP0P_  (.D(_006_),
    .Q(\debug.debug_reg_2[1] ),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[20]$_DFFE_PP0P_  (.D(_017_),
    .Q(\debug.debug_reg_2[20] ),
    .RESET_B(net336),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[21]$_DFFE_PP0P_  (.D(_016_),
    .Q(\debug.debug_reg_2[21] ),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[22]$_DFFE_PP0P_  (.D(_015_),
    .Q(\debug.debug_reg_2[22] ),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[23]$_DFFE_PP0P_  (.D(_094_),
    .Q(\debug.debug_reg_2[23] ),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[24]$_DFFE_PP0P_  (.D(_028_),
    .Q(\debug.debug_reg_2[24] ),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[25]$_DFFE_PP0P_  (.D(_027_),
    .Q(\debug.debug_reg_2[25] ),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[26]$_DFFE_PP0P_  (.D(_026_),
    .Q(\debug.debug_reg_2[26] ),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[27]$_DFFE_PP0P_  (.D(_025_),
    .Q(\debug.debug_reg_2[27] ),
    .RESET_B(net336),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[28]$_DFFE_PP0P_  (.D(_024_),
    .Q(\debug.debug_reg_2[28] ),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[29]$_DFFE_PP0P_  (.D(_023_),
    .Q(\debug.debug_reg_2[29] ),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[2]$_DFFE_PP0P_  (.D(_005_),
    .Q(\debug.debug_reg_2[2] ),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[30]$_DFFE_PP0P_  (.D(_022_),
    .Q(\debug.debug_reg_2[30] ),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[31]$_DFFE_PP0P_  (.D(_093_),
    .Q(\debug.debug_reg_2[31] ),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[3]$_DFFE_PP0P_  (.D(_004_),
    .Q(\debug.debug_reg_2[3] ),
    .RESET_B(net337),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[4]$_DFFE_PP0P_  (.D(_003_),
    .Q(\debug.debug_reg_2[4] ),
    .RESET_B(net337),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[5]$_DFFE_PP0P_  (.D(_002_),
    .Q(\debug.debug_reg_2[5] ),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[6]$_DFFE_PP0P_  (.D(_001_),
    .Q(\debug.debug_reg_2[6] ),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[7]$_DFFE_PP0P_  (.D(_096_),
    .Q(\debug.debug_reg_2[7] ),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[8]$_DFFE_PP0P_  (.D(_014_),
    .Q(\debug.debug_reg_2[8] ),
    .RESET_B(net337),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.debug_reg_2[9]$_DFFE_PP0P_  (.D(_013_),
    .Q(\debug.debug_reg_2[9] ),
    .RESET_B(_000_),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_ack_o$_DFF_PP0_  (.D(_097_),
    .Q(\debug.wbs_ack_o ),
    .RESET_B(net337),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[0]$_DFFE_PP0N_  (.D(_087_),
    .Q(net280),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[10]$_DFFE_PP0N_  (.D(_077_),
    .Q(net281),
    .RESET_B(net337),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[11]$_DFFE_PP0N_  (.D(_076_),
    .Q(net282),
    .RESET_B(net337),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[12]$_DFFE_PP0N_  (.D(_075_),
    .Q(net283),
    .RESET_B(net337),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[13]$_DFFE_PP0N_  (.D(_074_),
    .Q(net284),
    .RESET_B(net337),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[14]$_DFFE_PP0N_  (.D(_073_),
    .Q(net285),
    .RESET_B(net337),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[15]$_DFFE_PP0N_  (.D(_072_),
    .Q(net286),
    .RESET_B(net337),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[16]$_DFFE_PP0N_  (.D(_071_),
    .Q(net287),
    .RESET_B(_000_),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[17]$_DFFE_PP0N_  (.D(_070_),
    .Q(net288),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[18]$_DFFE_PP0N_  (.D(_069_),
    .Q(net289),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[19]$_DFFE_PP0N_  (.D(_068_),
    .Q(net290),
    .RESET_B(_000_),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[1]$_DFFE_PP0N_  (.D(_086_),
    .Q(net291),
    .RESET_B(net336),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[20]$_DFFE_PP0N_  (.D(_067_),
    .Q(net292),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[21]$_DFFE_PP0N_  (.D(_066_),
    .Q(net293),
    .RESET_B(_000_),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[22]$_DFFE_PP0N_  (.D(_065_),
    .Q(net294),
    .RESET_B(_000_),
    .CLK(clknet_3_7__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[23]$_DFFE_PP0N_  (.D(_064_),
    .Q(net295),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[24]$_DFFE_PP0N_  (.D(_063_),
    .Q(net296),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[25]$_DFFE_PP0N_  (.D(_062_),
    .Q(net297),
    .RESET_B(net336),
    .CLK(clknet_3_6__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[26]$_DFFE_PP0N_  (.D(_061_),
    .Q(net298),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[27]$_DFFE_PP0N_  (.D(_060_),
    .Q(net299),
    .RESET_B(net336),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[28]$_DFFE_PP0N_  (.D(_059_),
    .Q(net300),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[29]$_DFFE_PP0N_  (.D(_058_),
    .Q(net301),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[2]$_DFFE_PP0N_  (.D(_085_),
    .Q(net302),
    .RESET_B(net337),
    .CLK(clknet_3_0__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[30]$_DFFE_PP0N_  (.D(_057_),
    .Q(net303),
    .RESET_B(net336),
    .CLK(clknet_3_2__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[31]$_DFFE_PP0N_  (.D(_088_),
    .Q(net304),
    .RESET_B(net337),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[3]$_DFFE_PP0N_  (.D(_084_),
    .Q(net305),
    .RESET_B(net337),
    .CLK(clknet_3_1__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[4]$_DFFE_PP0N_  (.D(_083_),
    .Q(net306),
    .RESET_B(net337),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[5]$_DFFE_PP0N_  (.D(_082_),
    .Q(net307),
    .RESET_B(net336),
    .CLK(clknet_3_4__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[6]$_DFFE_PP0N_  (.D(_081_),
    .Q(net308),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[7]$_DFFE_PP0N_  (.D(_080_),
    .Q(net309),
    .RESET_B(net336),
    .CLK(clknet_3_3__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[8]$_DFFE_PP0N_  (.D(_079_),
    .Q(net310),
    .RESET_B(net337),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 \debug.wbs_dat_o[9]$_DFFE_PP0N_  (.D(_078_),
    .Q(net311),
    .RESET_B(_000_),
    .CLK(clknet_3_5__leaf_wb_clk_i));
 sky130_fd_sc_hd__buf_1 input208 (.A(wb_rst_i),
    .X(net207));
 sky130_fd_sc_hd__buf_1 input209 (.A(wbs_adr_i[0]),
    .X(net208));
 sky130_fd_sc_hd__buf_1 input210 (.A(wbs_adr_i[10]),
    .X(net209));
 sky130_fd_sc_hd__buf_1 input211 (.A(wbs_adr_i[11]),
    .X(net210));
 sky130_fd_sc_hd__buf_1 input212 (.A(wbs_adr_i[12]),
    .X(net211));
 sky130_fd_sc_hd__buf_1 input213 (.A(wbs_adr_i[13]),
    .X(net212));
 sky130_fd_sc_hd__buf_1 input214 (.A(wbs_adr_i[14]),
    .X(net213));
 sky130_fd_sc_hd__buf_1 input215 (.A(wbs_adr_i[15]),
    .X(net214));
 sky130_fd_sc_hd__buf_1 input216 (.A(wbs_adr_i[16]),
    .X(net215));
 sky130_fd_sc_hd__buf_1 input217 (.A(wbs_adr_i[17]),
    .X(net216));
 sky130_fd_sc_hd__buf_1 input218 (.A(wbs_adr_i[18]),
    .X(net217));
 sky130_fd_sc_hd__buf_1 input219 (.A(wbs_adr_i[19]),
    .X(net218));
 sky130_fd_sc_hd__buf_1 input220 (.A(wbs_adr_i[1]),
    .X(net219));
 sky130_fd_sc_hd__buf_1 input221 (.A(wbs_adr_i[20]),
    .X(net220));
 sky130_fd_sc_hd__buf_1 input222 (.A(wbs_adr_i[21]),
    .X(net221));
 sky130_fd_sc_hd__buf_1 input223 (.A(wbs_adr_i[22]),
    .X(net222));
 sky130_fd_sc_hd__buf_1 input224 (.A(wbs_adr_i[23]),
    .X(net223));
 sky130_fd_sc_hd__buf_1 input225 (.A(wbs_adr_i[24]),
    .X(net224));
 sky130_fd_sc_hd__buf_1 input226 (.A(wbs_adr_i[25]),
    .X(net225));
 sky130_fd_sc_hd__buf_1 input227 (.A(wbs_adr_i[26]),
    .X(net226));
 sky130_fd_sc_hd__buf_1 input228 (.A(wbs_adr_i[27]),
    .X(net227));
 sky130_fd_sc_hd__buf_1 input229 (.A(wbs_adr_i[28]),
    .X(net228));
 sky130_fd_sc_hd__buf_1 input230 (.A(wbs_adr_i[29]),
    .X(net229));
 sky130_fd_sc_hd__buf_1 input231 (.A(wbs_adr_i[2]),
    .X(net230));
 sky130_fd_sc_hd__buf_1 input232 (.A(wbs_adr_i[30]),
    .X(net231));
 sky130_fd_sc_hd__buf_1 input233 (.A(wbs_adr_i[31]),
    .X(net232));
 sky130_fd_sc_hd__buf_1 input234 (.A(wbs_adr_i[3]),
    .X(net233));
 sky130_fd_sc_hd__buf_1 input235 (.A(wbs_adr_i[4]),
    .X(net234));
 sky130_fd_sc_hd__buf_1 input236 (.A(wbs_adr_i[5]),
    .X(net235));
 sky130_fd_sc_hd__buf_1 input237 (.A(wbs_adr_i[6]),
    .X(net236));
 sky130_fd_sc_hd__buf_1 input238 (.A(wbs_adr_i[7]),
    .X(net237));
 sky130_fd_sc_hd__buf_1 input239 (.A(wbs_adr_i[8]),
    .X(net238));
 sky130_fd_sc_hd__buf_1 input240 (.A(wbs_adr_i[9]),
    .X(net239));
 sky130_fd_sc_hd__buf_1 input241 (.A(wbs_cyc_i),
    .X(net240));
 sky130_fd_sc_hd__buf_1 input242 (.A(wbs_dat_i[0]),
    .X(net241));
 sky130_fd_sc_hd__buf_1 input243 (.A(wbs_dat_i[10]),
    .X(net242));
 sky130_fd_sc_hd__buf_1 input244 (.A(wbs_dat_i[11]),
    .X(net243));
 sky130_fd_sc_hd__buf_1 input245 (.A(wbs_dat_i[12]),
    .X(net244));
 sky130_fd_sc_hd__buf_1 input246 (.A(wbs_dat_i[13]),
    .X(net245));
 sky130_fd_sc_hd__buf_1 input247 (.A(wbs_dat_i[14]),
    .X(net246));
 sky130_fd_sc_hd__buf_1 input248 (.A(wbs_dat_i[15]),
    .X(net247));
 sky130_fd_sc_hd__buf_1 input249 (.A(wbs_dat_i[16]),
    .X(net248));
 sky130_fd_sc_hd__buf_1 input252 (.A(wbs_dat_i[19]),
    .X(net251));
 sky130_fd_sc_hd__buf_1 input253 (.A(wbs_dat_i[1]),
    .X(net252));
 sky130_fd_sc_hd__buf_1 input254 (.A(wbs_dat_i[20]),
    .X(net253));
 sky130_fd_sc_hd__buf_1 input255 (.A(wbs_dat_i[21]),
    .X(net254));
 sky130_fd_sc_hd__buf_1 input257 (.A(wbs_dat_i[23]),
    .X(net256));
 sky130_fd_sc_hd__buf_1 input258 (.A(wbs_dat_i[24]),
    .X(net257));
 sky130_fd_sc_hd__buf_1 input259 (.A(wbs_dat_i[25]),
    .X(net258));
 sky130_fd_sc_hd__buf_1 input260 (.A(wbs_dat_i[26]),
    .X(net259));
 sky130_fd_sc_hd__buf_1 input261 (.A(wbs_dat_i[27]),
    .X(net260));
 sky130_fd_sc_hd__buf_1 input262 (.A(wbs_dat_i[28]),
    .X(net261));
 sky130_fd_sc_hd__buf_1 input263 (.A(wbs_dat_i[29]),
    .X(net262));
 sky130_fd_sc_hd__buf_1 input264 (.A(wbs_dat_i[2]),
    .X(net263));
 sky130_fd_sc_hd__buf_1 input265 (.A(wbs_dat_i[30]),
    .X(net264));
 sky130_fd_sc_hd__buf_1 input266 (.A(wbs_dat_i[31]),
    .X(net265));
 sky130_fd_sc_hd__buf_1 input267 (.A(wbs_dat_i[3]),
    .X(net266));
 sky130_fd_sc_hd__buf_1 input268 (.A(wbs_dat_i[4]),
    .X(net267));
 sky130_fd_sc_hd__buf_1 input269 (.A(wbs_dat_i[5]),
    .X(net268));
 sky130_fd_sc_hd__buf_1 input270 (.A(wbs_dat_i[6]),
    .X(net269));
 sky130_fd_sc_hd__buf_1 input271 (.A(wbs_dat_i[7]),
    .X(net270));
 sky130_fd_sc_hd__buf_1 input272 (.A(wbs_dat_i[8]),
    .X(net271));
 sky130_fd_sc_hd__buf_1 input273 (.A(wbs_dat_i[9]),
    .X(net272));
 sky130_fd_sc_hd__buf_1 input274 (.A(wbs_sel_i[0]),
    .X(net273));
 sky130_fd_sc_hd__buf_1 input275 (.A(wbs_sel_i[1]),
    .X(net274));
 sky130_fd_sc_hd__buf_1 input276 (.A(wbs_sel_i[2]),
    .X(net275));
 sky130_fd_sc_hd__buf_1 input277 (.A(wbs_sel_i[3]),
    .X(net276));
 sky130_fd_sc_hd__buf_1 input278 (.A(wbs_stb_i),
    .X(net277));
 sky130_fd_sc_hd__clkbuf_2 input279 (.A(wbs_we_i),
    .X(net278));
 sky130_fd_sc_hd__buf_1 output280 (.A(net279),
    .X(wbs_ack_o));
 sky130_fd_sc_hd__buf_1 output281 (.A(net280),
    .X(wbs_dat_o[0]));
 sky130_fd_sc_hd__buf_1 output282 (.A(net281),
    .X(wbs_dat_o[10]));
 sky130_fd_sc_hd__buf_1 output283 (.A(net282),
    .X(wbs_dat_o[11]));
 sky130_fd_sc_hd__buf_1 output284 (.A(net283),
    .X(wbs_dat_o[12]));
 sky130_fd_sc_hd__buf_1 output285 (.A(net284),
    .X(wbs_dat_o[13]));
 sky130_fd_sc_hd__buf_1 output286 (.A(net285),
    .X(wbs_dat_o[14]));
 sky130_fd_sc_hd__buf_1 output287 (.A(net286),
    .X(wbs_dat_o[15]));
 sky130_fd_sc_hd__buf_1 output288 (.A(net287),
    .X(wbs_dat_o[16]));
 sky130_fd_sc_hd__buf_1 output291 (.A(net290),
    .X(wbs_dat_o[19]));
 sky130_fd_sc_hd__buf_1 output292 (.A(net291),
    .X(wbs_dat_o[1]));
 sky130_fd_sc_hd__buf_1 output293 (.A(net292),
    .X(wbs_dat_o[20]));
 sky130_fd_sc_hd__buf_1 output294 (.A(net293),
    .X(wbs_dat_o[21]));
 sky130_fd_sc_hd__buf_1 output296 (.A(net295),
    .X(wbs_dat_o[23]));
 sky130_fd_sc_hd__buf_1 output297 (.A(net296),
    .X(wbs_dat_o[24]));
 sky130_fd_sc_hd__buf_1 output299 (.A(net298),
    .X(wbs_dat_o[26]));
 sky130_fd_sc_hd__buf_1 output300 (.A(net299),
    .X(wbs_dat_o[27]));
 sky130_fd_sc_hd__buf_1 output301 (.A(net300),
    .X(wbs_dat_o[28]));
 sky130_fd_sc_hd__buf_1 output302 (.A(net301),
    .X(wbs_dat_o[29]));
 sky130_fd_sc_hd__buf_1 output303 (.A(net302),
    .X(wbs_dat_o[2]));
 sky130_fd_sc_hd__buf_1 output304 (.A(net303),
    .X(wbs_dat_o[30]));
 sky130_fd_sc_hd__buf_1 output305 (.A(net304),
    .X(wbs_dat_o[31]));
 sky130_fd_sc_hd__buf_1 output306 (.A(net305),
    .X(wbs_dat_o[3]));
 sky130_fd_sc_hd__buf_1 output307 (.A(net306),
    .X(wbs_dat_o[4]));
 sky130_fd_sc_hd__buf_1 output308 (.A(net307),
    .X(wbs_dat_o[5]));
 sky130_fd_sc_hd__buf_1 output309 (.A(net308),
    .X(wbs_dat_o[6]));
 sky130_fd_sc_hd__buf_1 output310 (.A(net309),
    .X(wbs_dat_o[7]));
 sky130_fd_sc_hd__buf_1 output311 (.A(net310),
    .X(wbs_dat_o[8]));
 sky130_fd_sc_hd__buf_1 output312 (.A(net311),
    .X(wbs_dat_o[9]));
 sky130_fd_sc_hd__buf_4 place331 (.A(_112_),
    .X(net330));
 sky130_fd_sc_hd__buf_4 place332 (.A(_107_),
    .X(net331));
 sky130_fd_sc_hd__buf_4 place333 (.A(net297),
    .X(net332));
 sky130_fd_sc_hd__buf_4 place334 (.A(net294),
    .X(net333));
 sky130_fd_sc_hd__buf_4 place335 (.A(net289),
    .X(net334));
 sky130_fd_sc_hd__buf_4 place336 (.A(net288),
    .X(net335));
 sky130_fd_sc_hd__buf_4 place337 (.A(net337),
    .X(net336));
 sky130_fd_sc_hd__buf_4 place338 (.A(_000_),
    .X(net337));
 sky130_fd_sc_hd__buf_4 place339 (.A(net278),
    .X(net338));
 sky130_fd_sc_hd__buf_16 wire313 (.A(net332),
    .X(wbs_dat_o[25]));
 sky130_fd_sc_hd__buf_16 wire314 (.A(net333),
    .X(wbs_dat_o[22]));
 sky130_fd_sc_hd__buf_16 wire315 (.A(net334),
    .X(wbs_dat_o[18]));
 sky130_fd_sc_hd__buf_16 wire316 (.A(net335),
    .X(wbs_dat_o[17]));
 sky130_fd_sc_hd__buf_16 wire320 (.A(wbs_dat_i[22]),
    .X(net319));
 sky130_fd_sc_hd__buf_16 wire321 (.A(wbs_dat_i[18]),
    .X(net320));
 sky130_fd_sc_hd__buf_16 wire322 (.A(wbs_dat_i[17]),
    .X(net321));
endmodule
