function dydt = odemodel(t, y, modelparameters, AngII)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% main odemodel function
%
% input: t - time
%        y - initial conditions (194 species)
%        modelparameters - all model parameters
%        AngII - input AngII function
%
% output: dydt - change in y at each time step t
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% parsing AngII value at time t 
y(167) = interpoln(AngII(:,1),AngII(:,2),t);

%% signaling parameters
p_1_1 = modelparameters( 1 );
p_1_2 = modelparameters( 2 );
p_2_1 = modelparameters( 3 );
p_2_2 = modelparameters( 4 );
p_3_1 = modelparameters( 5 );
p_3_2 = modelparameters( 6 );
p_4_1 = modelparameters( 7 );
p_4_2 = modelparameters( 8 );
p_5_1 = modelparameters( 9 );
p_5_2 = modelparameters( 10 );
p_6_1 = modelparameters( 11 );
p_6_2 = modelparameters( 12 );
p_7_1 = modelparameters( 13 );
p_7_2 = modelparameters( 14 );
p_8_1 = modelparameters( 15 );
p_8_2 = modelparameters( 16 );
p_9_1 = modelparameters( 17 );
p_9_2 = modelparameters( 18 );
p_10_1 = modelparameters( 19 );
p_10_2 = modelparameters( 20 );
p_11_1 = modelparameters( 21 );
p_12_1 = modelparameters( 22 );
p_13_1 = modelparameters( 23 );
p_14_1 = modelparameters( 24 );
p_14_2 = modelparameters( 25 );
p_15_1 = modelparameters( 26 );
p_15_2 = modelparameters( 27 );
p_16_1 = modelparameters( 28 );
p_16_2 = modelparameters( 29 );
p_17_1 = modelparameters( 30 );
p_17_2 = modelparameters( 31 );
p_18_1 = modelparameters( 32 );
p_18_2 = modelparameters( 33 );
p_19_1 = modelparameters( 34 );
p_19_2 = modelparameters( 35 );
p_20_1 = modelparameters( 36 );
p_20_2 = modelparameters( 37 );
p_21_1 = modelparameters( 38 );
p_21_2 = modelparameters( 39 );
p_22_1 = modelparameters( 40 );
p_22_2 = modelparameters( 41 );
p_23_1 = modelparameters( 42 );
p_23_2 = modelparameters( 43 );
p_24_1 = modelparameters( 44 );
p_24_2 = modelparameters( 45 );
p_25_1 = modelparameters( 46 );
p_26_1 = modelparameters( 47 );
p_27_1 = modelparameters( 48 );
p_28_1 = modelparameters( 49 );
p_28_2 = modelparameters( 50 );
p_29_1 = modelparameters( 51 );
p_29_2 = modelparameters( 52 );
p_30_1 = modelparameters( 53 );
p_30_2 = modelparameters( 54 );
p_31_1 = modelparameters( 55 );
p_31_2 = modelparameters( 56 );
p_32_1 = modelparameters( 57 );
p_32_2 = modelparameters( 58 );
p_33_1 = modelparameters( 59 );
p_33_2 = modelparameters( 60 );
p_34_1 = modelparameters( 61 );
p_34_2 = modelparameters( 62 );
p_35_1 = modelparameters( 63 );
p_35_2 = modelparameters( 64 );
p_36_1 = modelparameters( 65 );
p_36_2 = modelparameters( 66 );
p_37_1 = modelparameters( 67 );
p_38_1 = modelparameters( 68 );
p_38_2 = modelparameters( 69 );
p_39_1 = modelparameters( 70 );
p_39_2 = modelparameters( 71 );
p_40_1 = modelparameters( 72 );
p_40_2 = modelparameters( 73 );
p_41_1 = modelparameters( 74 );
p_41_2 = modelparameters( 75 );
p_42_1 = modelparameters( 76 );
p_42_2 = modelparameters( 77 );
p_43_1 = modelparameters( 78 );
p_43_2 = modelparameters( 79 );
p_44_1 = modelparameters( 80 );
p_45_1 = modelparameters( 81 );
p_46_1 = modelparameters( 82 );
p_47_1 = modelparameters( 83 );
p_48_1 = modelparameters( 84 );
p_48_2 = modelparameters( 85 );
p_49_1 = modelparameters( 86 );
p_49_2 = modelparameters( 87 );
p_50_1 = modelparameters( 88 );
p_51_1 = modelparameters( 89 );
p_52_1 = modelparameters( 90 );
p_52_2 = modelparameters( 91 );
p_53_1 = modelparameters( 92 );
p_53_2 = modelparameters( 93 );
p_54_1 = modelparameters( 94 );
p_55_1 = modelparameters( 95 );
p_55_2 = modelparameters( 96 );
p_56_1 = modelparameters( 97 );
p_56_2 = modelparameters( 98 );
p_57_1 = modelparameters( 99 );
p_57_2 = modelparameters( 100 );
p_58_1 = modelparameters( 101 );
p_59_1 = modelparameters( 102 );
p_59_2 = modelparameters( 103 );
p_60_1 = modelparameters( 104 );
p_61_1 = modelparameters( 105 );
p_62_1 = modelparameters( 106 );
p_63_1 = modelparameters( 107 );
p_64_1 = modelparameters( 108 );
p_65_1 = modelparameters( 109 );
p_65_2 = modelparameters( 110 );
p_66_1 = modelparameters( 111 );
p_66_2 = modelparameters( 112 );
p_67_1 = modelparameters( 113 );
p_68_1 = modelparameters( 114 );
p_69_1 = modelparameters( 115 );
p_70_1 = modelparameters( 116 );
p_71_1 = modelparameters( 117 );
p_72_1 = modelparameters( 118 );
p_72_2 = modelparameters( 119 );
p_73_1 = modelparameters( 120 );
p_73_2 = modelparameters( 121 );
p_74_1 = modelparameters( 122 );
p_74_2 = modelparameters( 123 );
p_75_1 = modelparameters( 124 );
p_75_2 = modelparameters( 125 );
p_76_1 = modelparameters( 126 );
p_77_1 = modelparameters( 127 );
p_78_1 = modelparameters( 128 );
p_78_2 = modelparameters( 129 );
p_79_1 = modelparameters( 130 );
p_79_2 = modelparameters( 131 );
p_80_1 = modelparameters( 132 );
p_80_2 = modelparameters( 133 );
p_81_1 = modelparameters( 134 );
p_81_2 = modelparameters( 135 );
p_82_1 = modelparameters( 136 );
p_82_2 = modelparameters( 137 );
p_83_1 = modelparameters( 138 );
p_84_1 = modelparameters( 139 );
p_85_1 = modelparameters( 140 );
p_86_1 = modelparameters( 141 );
p_86_2 = modelparameters( 142 );
p_87_1 = modelparameters( 143 );
p_88_1 = modelparameters( 144 );
p_88_2 = modelparameters( 145 );
p_89_1 = modelparameters( 146 );
p_90_1 = modelparameters( 147 );
p_90_2 = modelparameters( 148 );
p_91_1 = modelparameters( 149 );
p_91_2 = modelparameters( 150 );
p_92_1 = modelparameters( 151 );
p_92_2 = modelparameters( 152 );
p_93_1 = modelparameters( 153 );
p_93_2 = modelparameters( 154 );
p_94_1 = modelparameters( 155 );
p_95_1 = modelparameters( 156 );
p_95_2 = modelparameters( 157 );
p_96_1 = modelparameters( 158 );
p_97_1 = modelparameters( 159 );
p_98_1 = modelparameters( 160 );
p_98_2 = modelparameters( 161 );
p_99_1 = modelparameters( 162 );
p_100_1 = modelparameters( 163 );
p_100_2 = modelparameters( 164 );
p_101_1 = modelparameters( 165 );
p_101_2 = modelparameters( 166 );
p_102_1 = modelparameters( 167 );
p_102_2 = modelparameters( 168 );
p_103_1 = modelparameters( 169 );
p_104_1 = modelparameters( 170 );
p_105_1 = modelparameters( 171 );
p_105_2 = modelparameters( 172 );
p_106_1 = modelparameters( 173 );
p_107_1 = modelparameters( 174 );
p_107_2 = modelparameters( 175 );
p_108_1 = modelparameters( 176 );
p_108_2 = modelparameters( 177 );
p_109_1 = modelparameters( 178 );
p_109_2 = modelparameters( 179 );
p_110_1 = modelparameters( 180 );
p_110_2 = modelparameters( 181 );
p_111_1 = modelparameters( 182 );
p_111_2 = modelparameters( 183 );
p_112_1 = modelparameters( 184 );
p_113_1 = modelparameters( 185 );
p_113_2 = modelparameters( 186 );
p_114_1 = modelparameters( 187 );
p_115_1 = modelparameters( 188 );
p_115_2 = modelparameters( 189 );
p_116_1 = modelparameters( 190 );
p_117_1 = modelparameters( 191 );
p_117_2 = modelparameters( 192 );
p_118_1 = modelparameters( 193 );
p_118_2 = modelparameters( 194 );
p_119_1 = modelparameters( 195 );
p_119_2 = modelparameters( 196 );
p_120_1 = modelparameters( 197 );
p_120_2 = modelparameters( 198 );
p_121_1 = modelparameters( 199 );
p_121_2 = modelparameters( 200 );
p_122_1 = modelparameters( 201 );
p_122_2 = modelparameters( 202 );
p_123_1 = modelparameters( 203 );
p_124_1 = modelparameters( 204 );
p_125_1 = modelparameters( 205 );
p_126_1 = modelparameters( 206 );
p_126_2 = modelparameters( 207 );
p_127_1 = modelparameters( 208 );
p_127_2 = modelparameters( 209 );
p_128_1 = modelparameters( 210 );
p_129_1 = modelparameters( 211 );
p_130_1 = modelparameters( 212 );
p_130_2 = modelparameters( 213 );
p_131_1 = modelparameters( 214 );
p_131_2 = modelparameters( 215 );
p_132_1 = modelparameters( 216 );
p_132_2 = modelparameters( 217 );
p_133_1 = modelparameters( 218 );
p_134_1 = modelparameters( 219 );
p_135_1 = modelparameters( 220 );
p_136_1 = modelparameters( 221 );
p_136_2 = modelparameters( 222 );
p_137_1 = modelparameters( 223 );
p_137_2 = modelparameters( 224 );
p_138_1 = modelparameters( 225 );
p_139_1 = modelparameters( 226 );
p_140_1 = modelparameters( 227 );
p_140_2 = modelparameters( 228 );
p_141_1 = modelparameters( 229 );
p_142_1 = modelparameters( 230 );
p_142_2 = modelparameters( 231 );
p_143_1 = modelparameters( 232 );
p_144_1 = modelparameters( 233 );
p_144_2 = modelparameters( 234 );
p_145_1 = modelparameters( 235 );
p_146_1 = modelparameters( 236 );
p_147_1 = modelparameters( 237 );
p_147_2 = modelparameters( 238 );
p_148_1 = modelparameters( 239 );
p_148_2 = modelparameters( 240 );
p_149_1 = modelparameters( 241 );
p_150_1 = modelparameters( 242 );
p_150_2 = modelparameters( 243 );
p_151_1 = modelparameters( 244 );
p_152_1 = modelparameters( 245 );
p_153_1 = modelparameters( 246 );
p_154_1 = modelparameters( 247 );
p_154_2 = modelparameters( 248 );
p_155_1 = modelparameters( 249 );
p_155_2 = modelparameters( 250 );
p_156_1 = modelparameters( 251 );
p_156_2 = modelparameters( 252 );
p_157_1 = modelparameters( 253 );
p_157_2 = modelparameters( 254 );
p_158_1 = modelparameters( 255 );
p_158_2 = modelparameters( 256 );
p_159_1 = modelparameters( 257 );
p_159_2 = modelparameters( 258 );
p_160_1 = modelparameters( 259 );
p_160_2 = modelparameters( 260 );
p_161_1 = modelparameters( 261 );
p_161_2 = modelparameters( 262 );
p_162_1 = modelparameters( 263 );
p_162_2 = modelparameters( 264 );
p_163_1 = modelparameters( 265 );
p_163_2 = modelparameters( 266 );
p_164_1 = modelparameters( 267 );
p_165_1 = modelparameters( 268 );
p_165_2 = modelparameters( 269 );
p_166_1 = modelparameters( 270 );
p_166_2 = modelparameters( 271 );
p_167_1 = modelparameters( 272 );
p_167_2 = modelparameters( 273 );
p_168_1 = modelparameters( 274 );
p_168_2 = modelparameters( 275 );
p_169_1 = modelparameters( 276 );
p_169_2 = modelparameters( 277 );
p_170_1 = modelparameters( 278 );
p_170_2 = modelparameters( 279 );
p_171_1 = modelparameters( 280 );
p_171_2 = modelparameters( 281 );
p_172_1 = modelparameters( 282 );
p_173_1 = modelparameters( 283 );
p_174_1 = modelparameters( 284 );
p_174_2 = modelparameters( 285 );
p_175_1 = modelparameters( 286 );
p_176_1 = modelparameters( 287 );
p_177_1 = modelparameters( 288 );
p_177_2 = modelparameters( 289 );
p_178_1 = modelparameters( 290 );
p_179_1 = modelparameters( 291 );
p_180_1 = modelparameters( 292 );
p_180_2 = modelparameters( 293 );
p_181_1 = modelparameters( 294 );
p_182_1 = modelparameters( 295 );
p_183_1 = modelparameters( 296 );
p_183_2 = modelparameters( 297 );
p_184_1 = modelparameters( 298 );
p_185_1 = modelparameters( 299 );
p_185_2 = modelparameters( 300 );
p_186_1 = modelparameters( 301 );
p_186_2 = modelparameters( 302 );
p_187_1 = modelparameters( 303 );
p_187_2 = modelparameters( 304 );
p_188_1 = modelparameters( 305 );
p_189_1 = modelparameters( 306 );
p_190_1 = modelparameters( 307 );
p_190_2 = modelparameters( 308 );
p_191_1 = modelparameters( 309 );
p_192_1 = modelparameters( 310 );
p_193_1 = modelparameters( 311 );
p_194_1 = modelparameters( 312 );
p_194_2 = modelparameters( 313 );
p_195_1 = modelparameters( 314 );
p_196_1 = modelparameters( 315 );
p_197_1 = modelparameters( 316 );
p_198_1 = modelparameters( 317 );
p_199_1 = modelparameters( 318 );
p_200_1 = modelparameters( 319 );
p_201_1 = modelparameters( 320 );
p_202_1 = modelparameters( 321 );
p_203_1 = modelparameters( 322 );
p_204_1 = modelparameters( 323 );
p_205_1 = modelparameters( 324 );
p_206_1 = modelparameters( 325 );
p_207_1 = modelparameters( 326 );
p_208_1 = modelparameters( 327 );
p_209_1 = modelparameters( 328 );
p_210_1 = modelparameters( 329 );
p_211_1 = modelparameters( 330 );
p_212_1 = modelparameters( 331 );
p_213_1 = modelparameters( 332 );
p_214_1 = modelparameters( 333 );
p_215_1 = modelparameters( 334 );
p_216_1 = modelparameters( 335 );
p_217_1 = modelparameters( 336 );
p_218_1 = modelparameters( 337 );
p_219_1 = modelparameters( 338 );
p_220_1 = modelparameters( 339 );
p_221_1 = modelparameters( 340 );
p_222_1 = modelparameters( 341 );
p_223_1 = modelparameters( 342 );
p_224_1 = modelparameters( 343 );
p_225_1 = modelparameters( 344 );
p_226_1 = modelparameters( 345 );
p_227_1 = modelparameters( 346 );
p_228_1 = modelparameters( 347 );
p_229_1 = modelparameters( 348 );
p_230_1 = modelparameters( 349 );
p_231_1 = modelparameters( 350 );


%% Electrophysiology parameters
ep = modelparameters(351:359);

sf=15; 
sfplcca=1;    %1, 2/3, scaling of forward reaction PLC-Gq + Ca -> PLC-Gq-Ca
sfGqbasal=0;  %1, scaling of basal activity G-GDP (38) -> betagamma (4) + G*GTP (37)

g.na=ep(1);   % maximal conductance of Na
g.kdr=ep(2);  % maximal conductance of Kdr
g.ka=ep(3);   % maximal conductance of Ka
g.kahp=ep(4); % maximal conductance of Kahp
g.cal=ep(5);  % maximal conductance of CaL
g.leak=ep(6); % maximal conductance of leak

E.na=55;         % reversal potenial of Na+ (-56 - -84)
E.kdr=-94;       % reversal potenial of K+ (-94)
E.ka=E.kdr;      % reversal potenial of K+ (-94)
E.kahp=E.kdr;    % reversal potenial of K+ (-94)
E.syne=-10;      % reversal potenial of K+ (-94)
E.leak= -41.84 ; % reversal potenial of leak (-41.31 for 1Hz; -52.57 for 2Hz; -52.56 for 3Hz)

p.Cm=0.025; % membrane capacitance 
p.taue= 3;
p.aahp=1.25e8;
p.bahp=2.5;
p.cahp=1000;

phosMK1.k_p= ep(7); % Kdr phosphorylation rate by PKC
phosMK1.n=4; % number of PKC molecule require to phosphorylate Kdr
phosMK1.k_dp=phosMK1.k_p*(1.35^phosMK1.n); % Kdr dephosphorylation rate by PKC

phosPKC1.k_p= ep(8); % Kdr phosphorylation rate by CaMKII
phosPKC1.n=4; % number of CaMKII molecule require to phosphorylate Kdr
phosPKC1.k_dp=phosPKC1.k_p*(0.5200^phosPKC1.n); % Kdr dephosphorylation rate by CaMKII

V=y(179);   % Membrane volatge from interg over Vm
mna=y(180); % activation variable of Na+
hna=y(181); % inactivation variable of Na+
mdr=y(182); % activation variable of Kdr
ma1=y(183); % activation variable of Ka1
ha1=y(184); % inactivation variable of Ka1
ma2=y(185); % activation variable of Ka2 (Ka)
ha2=y(186); % inactivation variable of Ka2 (Ka)
mahp=y(187); % activation variable of Kahp
mcal=y(188); % activation variable of CaL
gsyne=y(189); % pre synaptic excitation
Ca_ahp=y(190); 
Kv_act=y(191); % unphosphorylated Kdr channels (KU)
Kv_1=y(192); % phosphorylated Kdr channels by PKC (KP)
Kv_2=y(193); % phosphorylated Kdr channels by CaMKII (KP)
%Kv_12=y(194); % doubly phosphorylated Kdr channels by PKC and CaMKII (KP)
%Ka_act=y(5+i); % unphosphorylated Ka channels

ECa = 13.27*log(y(165)/Ca_ahp/1e3); % reversal potenial of Ca2+

% Fast Sodium Channel (see Table 3 in main text for details)
mina = ( 0.091 * (V+38)/(1-exp(-(V+38)/5)) ) / (( 0.091 * (V+38)/(1-exp(-(V+38)/5)))+ (0.062 * ((V+38)/(exp((V+38)/5)-1)) ));
hina = (0.016 * (exp(-(V+55)/15))) / ((0.016 * (exp(-(V+55)/15)))+(2.07/(1 + exp(-(V-17)/21))));
tmna = 1 / ((0.091 * (V+38)/(1-exp(-(V+38)/5)))+ (0.062 * ((V+38)/(exp((V+38)/5)-1))));
thna = 1 / ( (0.016 * (exp(-(V+55)/15))) +(2.07/(1 + exp(-(V-17)/21))));

% Delayed rectifier potassium channel (see Table 3 in main text for details)
tdr = (1/(exp((V-81)/25.6)+exp((V+132)/(-18)))+9.9)./4;
midr = (1+(2^(1/4)-1)*exp((V-2.3)/(-17)))^(-1);

% Fast activating potassium channel (see Table 3 in main text for details)
% Ka1 effects are not modeled
% Ka1
mia1 = 1/(1+exp(-(V+60)/8.5));
tma1 = 1/(exp((V+35.82)/19.69) + exp(-(V+79.69)/12.7)) + 0.37;
hia1 = 1/(1+exp((V+78)/6));
tha1 = 1/((exp((V+46.05)/5) + exp(-(V+238.4)/37.45))) - (1/((exp((V+46.05)/5)+ exp(-(V+238.4)/37.45)))-19)*(sign(V+63+abs(V+63)));
% Only Ka2 effects are modeled as Ka
% Ka2
mia2 = 1/(1+exp(-(V+36)/20));
tma2 = tma1;
hia2 = 1/(1+exp((V+78)/6));
tha2 = 1/((exp((V+46.05)/5) + exp(-(V+238.4)/37.45))) - (1/((exp((V+46.05)/5)+ exp(-(V+238.4)/37.45)))-60)*(sign(V+73+abs(V+73)));

%After hyperpolarization related calcium dependent potassium channel (see Table 3 in main text for details)
miahp= p.aahp * (Ca_ahp)^2 / (p.aahp * (Ca_ahp)^2 + p.bahp);
tahp = p.cahp/(p.aahp * (Ca_ahp)^2 + p.bahp);

% High threshold calcium channel (see Table 3 in main text for details)
mical= (1.6./(1 + exp(-0.072.*(V-5)))) / ((1.6./(1 + exp(-0.072.*(V-5)))) + (0.02.*(V-1.31)./(exp((V-1.31)./5.36)-1)));
tcal = 1/((1.6./(1 + exp(-0.072.*(V-5)))) + (0.02.*(V-1.31)./(exp((V-1.31)./5.36)-1)));

% All currents (see Table 3 in main text for details)
Ina = g.na * mna^3 * hna * (E.na - V);
IKdr = g.kdr *Kv_act* mdr^4 * (E.kdr - V);
IKa = g.ka * 0.4 * ma2^4 * ha2*(E.ka - V); % no Ka1 (0.0 * ma1^4 * ha1)
IKahp = g.kahp * mahp^2 * (E.kahp - V);
Isyne = gsyne * (E.syne - V); % 0  
Isyni = 0; % gsyni * (Esyni - V);
Ileak = g.leak * (E.leak - V);


% Calcium Epump (see Table 2 in main text for details)
P_leak1=0.26e-2*0.8;  % sa=0.8;
P_leak2=0.158e-1*0.8; % sa=0.8;
zeta=V*0.0749;
r_leak=-(P_leak1*y(31)+P_leak2*y(9)/15*sf)*zeta*(y(7)-y(165)*(exp(-zeta)))/(1-(exp(-zeta)));
r_pump=- 1800 * y(7)* y(19);

% Sodium-calcium Exchanger (NCX) (see Table 2 in main text for details)
km=2; 
Kpkcmod=0.5; % 0.5 low Ca response; 3 high Ca response
Kpkc=10; 
Dpkc=2; 
nacaactaff=0.2;
vmax=ep(9);

DFin= y(165)*5.7554*exp(2*0.5*V*0.0374); %gamma=0.5;
DFout=y(7)*562448656e-3*exp(2*(0.5-1)*V*0.0374); %gamma=0.5;
rmod=-(DFin-DFout)/(1+(0.05)*(y(7)*562448656e-3+y(165)*5.7554)); % D=0.05;
rCaNa=-(1+Kpkcmod/(1+exp((Kpkc-(y(105)*100 - 3))/Dpkc))) * (y(7)/(km+y(7)))*(y(7)/(nacaactaff + y(7)));
r_NaCa=vmax*rmod*rCaNa;

r2i=2*96480*(1.17e-11)*1e3; % z*F*v*1e3 based on soma volume v_cyt=1.17e-11;
Ical = g.cal .* mcal.^2 .* (ECa - V);
r_CaL= Ical /r2i;

r_seqmem=1.6*((2.5e-4*1e-9)/(1.17e-11))/0.0075*(-2*5.4* Ca_ahp*Ca_ahp+0.0015*(y(10)-Ca_ahp));

% NCX current
I_NaCa=-r_NaCa/2*r2i; %Netto -1 ladung: 1Ca raus 3 Na rein

% Total current
ICal=Ical+I_NaCa+(r_leak+r_CaL+r_pump)*r2i;

% phosphorylation of Kdr by PKC and CaMKII
r1=phosPKC1.k_p*Kv_act*y(175)^phosPKC1.n;
r2=phosMK1.k_p*Kv_act*y(177)^phosMK1.n;
r3=phosMK1.k_p*Kv_1*y(177)^phosMK1.n;
r4=phosPKC1.k_p*Kv_2*y(175)^phosPKC1.n;

% dephosphorylation of Kdr by PKC and CaMKII
r5=phosPKC1.k_dp*Kv_1;
r6=phosMK1.k_dp*Kv_2;
r7=phosPKC1.k_dp*(1-Kv_act-Kv_1-Kv_2);%Kv_12;
r8=phosMK1.k_dp*(1-Kv_act-Kv_1-Kv_2);%Kv_12;

% calculating reaction rates of signaling pathways

v1 =  p_1_1   * y(1)  * y(51)  - p_1_2 * y(52); %1
v2 =  p_2_1   * y(1)  * y(53)  - p_2_2 * y(54); %1
v3 =  p_3_1   * y(71) * y(1)   - p_3_2 * y(73) ; %1
v4 =  p_4_1   * y(1)  * y(77)  - p_4_2 * y(79); %1
v5 =  p_5_1   * y(1)  * y(82)  - p_5_2 * y(85); %1
v6 =  p_6_1   * y(66) * y(1)   - p_6_2 * y(147) ; %1

v7 =  p_7_1   * y(66) * y(64)  - p_7_2 * y(2) ; %2
v8 =  p_8_1   * y(53) * y(64)  - p_8_2 * y(2) ; %2

v9 =  p_9_1   * y(66) * y(63)  - p_9_2 * y(3); %3
v10 = p_10_1  * y(63) * y(53) - p_10_2 * y(3); %3

v11 =  p_11_1 * y(36) * y(4) ; %4
v12 =  p_12_1* y(117); %4
v13 =  sfGqbasal * p_13_1* y(38); %4

v14 =  p_14_1 * y(162) * y(5) * y(113) - p_14_2 * y(114); %5
v15 =  p_15_1* y(5)* y(35) - p_15_2 * y(134); %5

v16 = p_16_1 * y(118) * y(170)- p_16_2 * y(6); %6

v17 = p_17_1 * y(7) * y(107) - p_17_2 * y(108); %7
v18 = p_18_1 * y(7) * y(32) * y(7) -  p_18_2 * y(33) ; %7
v19 = p_19_1 * y(90) * y(7) - p_19_2 * y(8); %7
v20 = p_20_1 * y(22) * y(7) - p_20_2 * y(23); %7
v21 = p_21_1 * y(21) * y(7) * y(7) - p_21_2 * y(24); %7
v22 = p_22_1 * y(24) * y(7) - p_22_2 * y(22); %7
v23 = p_23_1 * y(102) * y(7)- p_23_2 * y(98); %7
v24 = p_24_1 * sfplcca* y(110) * y(7) -  p_24_2 * y(109) ; %7
v25 = p_25_1 * y(121)  ; %7
v26 = (y(10)-y(7)) * p_26_1 * y(166) ; %7
v27 = (y(10)-y(7)) * p_27_1 * y(59); %7

v28 = p_28_1 * y(18) * (y(10))^5 - p_28_2 * y(11); %10
v29 = p_29_1 * y(11) * (y(10))^5 - p_29_2 * y(12); %10
v30 = p_30_1 * y(12) * (y(10))^5 - p_30_2 * y(13); %10
v31 = p_31_1 * y(13) * (y(10))^5 - p_31_2 * y(14); %10
v32 = p_32_1 * y(14) * (y(10))^5 - p_32_2 * y(15); %10
v33 = p_33_1 * y(15) * (y(10))^5 - p_33_2 * y(16); %10
v34 = p_34_1 * y(16) * (y(10))^5 - p_34_2 * y(17); %10
v35 = p_35_1 * y(20) * (y(10))^5 - p_35_2 * y(18); %10
v36 = p_36_1 * y(10) * y(10) * y(31) - p_36_2 * y(39); %10
v37 = p_37_1 * y(33) ; %10

v38 = p_38_1 * y(7) * y(19) - p_38_2 * y(121); %19

v39 = p_39_1 * y(61) * y(23) - p_39_2  * y(64); %23
v40 = p_40_1 * y(60) * y(23) - p_40_2 * y(63) ; %23
v41 = p_41_1 * y(29) * y(23) - p_41_2 * y(30); %23
v42 = p_42_1 * y(23) * y(26)- p_42_2 * y(28) ; %23

v43 = p_43_1 * y(25)* y(115) - p_43_2 * y(131); %25
v44 = p_44_1 * y(129) ; %25

v45 = p_45_1 * y(26); %26
v46 = p_46_1 * y(131); %26
v47 = p_47_1 * y(132); %26

v48 = p_48_1 * y(27)* y(115) - p_48_2 * y(129) ; %27
v49 = p_49_1 * y(27)* y(115) - p_49_2 * y(130); %27
v50 = p_50_1 * y(120); %27
v51 = p_51_1 * y(127); %27

v52 = p_52_1 * y(28)* (y(27) + y(29)) - p_52_2 * y(119)  ; %28
v53 = p_53_1 * y(28)* (y(28) + y(30)) - p_53_2 * y(126); %28
v54 = p_54_1 * y(128); %28

v55 = p_55_1 * y(29)* (y(27) + y(29)) - p_55_2 * y(120); %29
v56 = p_56_1 * y(29)* (y(28) + y(30)) - p_56_2 * y(127); %29
v57 = p_57_1 * y(29)* y(115) - p_57_2 * y(132) ; %29
v58 = p_58_1 * y(130); %

v59 = p_59_1 * y(30)* y(115)- p_59_2 * y(128); %30
v60 = p_60_1 * y(119); %30
v61 = p_61_1 * y(126); %30

v62 = p_62_1 * y(33); %32

v63 = p_63_1 * y(33); %33

v64 = p_64_1 * y(34); %34
v65 = p_65_1 * y(34) * y(98) - p_65_2 * y(100); %34
v66 = p_66_1 * y(34) * y(102) - p_66_2 * y(103); %34
v67 = p_67_1 * y(172); %34
v68 = p_68_1 * y(155); %34
v69 = p_69_1 * y(156); %34
v70 = p_70_1 * y(157); %34
v71 = p_71_1 * y(158); %34

v72 = p_72_1 * y(35) * y(77) - p_72_2 * y(81); %35
v73 = p_73_1 * y(82) * y(35) - p_73_2 * y(84); %35
v74 = p_74_1 * y(112) * y(35) - p_74_2 * y(133); %35
v75 = p_75_1 * y(5) * y(35) - p_75_2 * y(134); %35

v76 = p_76_1 * y(37); %36
v77 = p_77_1 * y(109); %36

v78 = p_78_1 * y(108) * y(37) - p_78_2 * y(109); %37
v79 = p_79_1 * y(107) * y(37) - p_79_2 * y(110); %37

v80 = p_80_1 * y(38) * y(94) - p_80_2 * y(118); %38
v81 = p_81_1 * y(38) * y(116) - p_81_2 * y(117); %38

v82 = p_82_1 * y(40) * y(45) - p_82_2  * y(43); %40
v83 = p_83_1 * y(168); %40
v84 = p_84_1 * y(136); %40
v85 = p_85_1 * y(137); %40

v86 = p_86_1 * y(41) - p_86_2 * y(168) ; %41
v87 = p_87_1 * y(138); %41

v88 = p_88_1 * y(42) * y(45) - p_88_2 * y(44); %42
v89 = p_89_1 * y(135); %42

v90 = p_90_1 * y(168) * y(45) - p_90_2 * y(43); %43

v91 = p_91_1 * y(45) * y(168) - p_91_2 * y(44); %44

v92 = p_92_1 * y(46) * y(49) - p_92_2 * y(136); %46
v93 = p_93_1 * y(46)* y(50) - p_93_2 * y(137); %46
v94 = p_94_1 * y(143); %46

v95 = p_95_1 * y(47)* y(90) - p_95_2 * y(135); %47
v96 = p_96_1 * y(144); %47
v97 = p_97_1 * y(145); %47

v98 = p_98_1 * y(48)* y(91) - p_98_2 * y(138); %48
v99 = p_99_1 * y(142); %48

v100 = p_100_1 * y(51) * y(57)- p_100_2 * y(56) ; %51
v101 = p_101_1 * y(51)* y(90)- p_101_2 * y(142); %51
v102 = p_102_1 * y(51)* y(91)- p_102_2 * y(143); %51
v103 = p_103_1 * y(148); %51

v104 = p_104_1 * y(172); %53
v105 = p_105_1 * 0.16 * y(55)- p_105_2 * y(53); %53
v106 = p_106_1 * y(69); %53
v107 = p_107_1 * y(53)* y(60) - p_107_2 * y(139) ; %53
v108 = p_108_1 * y(53)* y(61) - p_108_2  * y(140); %53
v109 = p_109_1 * y(53)* y(62) - p_109_2  * y(141); %53
v110 = p_110_1 * y(53)* y(93) - p_110_2  * y(144); %53
v111 = p_111_1 * y(53)* y(65) - p_111_2  * y(145); %53
v112 = p_112_1 * y(147); %53

v113 = p_113_1 * y(55) - 6.25 * p_113_2 * y(53); %55
v114 = p_114_1 * y(146); %55

v115 = p_115_1 * y(66) * y(57) - p_115_2 * y(56); %56
v116 = p_116_1 * y(56); %56

v117 = p_117_1 * y(71) * y(57) - p_117_2 * y(74); %57
v118 = p_118_1 * y(77) * y(57) - p_118_2 * y(74); %57

v119 = p_119_1 * y(58) * (y(53))^3 - p_119_2 * y(59); %58

v120 = p_120_1 * y(60)* (y(28) + y(30)) - p_120_2 * y(122); %60
v121 = p_121_1 * y(60)* (y(27) + y(29)) - p_121_2 * y(124); %60
v122 = p_122_1 * y(60)* (y(105) + y(99) + y(101) + y(106) + y(97) + y(96)) - p_122_2 * y(154) ; %60

v123 = p_123_1 * y(122); %61
v124 = p_124_1 * y(124); %61

v125 = p_125_1 * y(154); %62

v126 = p_126_1 * y(63)* (y(28) + y(30)) - p_126_2 * y(123); %63
v127 = p_127_1 * y(63)* (y(27) + y(29)) - p_127_2 * y(125); %63

v128 = p_128_1 * y(123); %64
v129 = p_129_1 * y(125); %64

v130 = 0.16 * p_130_1 * y(67) - p_130_2 * y(66); %66
v131 = p_131_1 * y(66)* y(1) - p_131_2 * y(147); %66
v132 = p_132_1 * y(66)* y(93) - p_132_2 * y(148); %66
v133 = p_133_1 * y(139); %66
v134 = p_134_1 * y(140); %66
v135 = p_135_1 * y(141); %66

v136 = 6.25 * p_136_1 * y(66) - p_136_2 * y(67); %67
v137 = p_137_1 * y(67)* y(95) - p_137_2 * y(146); %67

v138 = p_138_1 * y(68); %68
v139 = p_139_1 * y(77); %68

v140 = p_140_1 * y(69) * y(72) - p_140_2 * y(75); %69
v141 = p_141_1 * y(69); %69
v142 = 0.16 * p_142_1 * y(70) - p_142_2 * y(69); %69
v143 = p_143_1 * y(77); %69

v144 = 6.25 * p_144_1* y(69) - p_144_2 * y(70); %70
v145 = p_145_1 * y(149); %70

v146 = p_146_1 * y(77); %71

v147 = p_147_1 * y(72) * y(77) - p_147_2 * y(75); %72

v148 = 6.25 * p_148_1 * y(169) - p_148_2 * y(76); %76
v149 = p_149_1 * y(153); %76

v150 = p_150_1 * y(77) * y(93) - p_150_2 * y(80); %77
v151 = p_151_1 * y(77); %77
v152 = p_152_1 * y(82); %77
v153 = p_153_1 * y(111); %77
v154 = 0.16 * p_154_1 * y(78) - p_154_2 * y(77); %77
v155 = p_155_1 * y(77)* y(86) - p_155_2 * y(150); %77
v156 = p_156_1 * y(77)* y(89) - p_156_2  * y(151); %77

v157 = 6.25 * p_157_1 * y(77) - p_157_2 * y(78); %78
v158 = p_158_1 * y(78)* y(95) - p_158_2 * y(149); %78

v159 = p_159_1 * y(82) * y(93) - p_159_2 * y(83); %82
v160 = p_160_1 * y(82) * y(163) * y(86) - p_160_2 * y(87); %82
v161 = 0.16 * p_161_1 * y(88) - p_161_2 * y(82); %82
v162 = p_162_1 * y(91) * y(82) - p_162_2 * y(92); %82
v163 = p_163_1 * y(82)* y(89) - p_163_2 * y(152); %82
v164 = p_164_1 * y(133); %82

v165 =  p_165_1 * y(112) * y(162) * y(86) - p_165_2 * y(87); %86
v166 =  p_166_1 * y(111) * y(86) - p_166_2 * y(159); %86

v167 = 6.25 * p_167_1 * y(82) - p_167_2 * y(88); %88
v168 = p_168_1 * y(88)* y(95) - p_168_2 * y(153); %88

v169 = p_169_1 * y(111) * y(89) - p_169_2 * y(160); %89

v170 = p_170_1 * y(94) * y(167) - p_170_2 * y(116); %94

v171 = p_171_1 * y(161) * y(102)- p_171_2 * y(96); %96

v172 = p_172_1 * y(102); %97
v173 = p_173_1 * y(97); %97

v174 = p_174_1 * y(98) * y(161) - p_174_2 * y(99); %98
v175 = p_175_1 * y(98); %98
v176 = p_176_1 * y(101); %98
v177 = p_177_1 * y(102) * y(7)- p_177_2 * y(98); %98

v178 = p_178_1 * y(100); %100
v179 = p_179_1 * y(106); %100

v180 = p_180_1 * y(103) * y(161) - p_180_2 * y(104); %103

v181 = p_181_1 * y(104); %104
v182 = p_182_1 * y(105); %104

v183 = p_183_1 * y(172) * y(107) - p_183_2 * y(155); %107

v184 = p_184_1 * y(109); %108
v185 = p_185_1 * y(172) * y(108) - p_185_2 * y(156); %108

v186 = p_186_1 * y(172) * y(109) - p_186_2 * y(158); %109

v187 = p_187_1 * y(172) * y(110) - p_187_2 * y(157); %110

v188 = p_188_1 * y(150); %111
v189 = p_189_1 * y(151); %111

v190 = p_190_1 * y(163) * y(112) * y(113) - p_190_2 * y(114); %112
v191 = p_191_1 * y(134); %112
v192 = p_192_1 * y(152); %112

v193 = p_193_1 * y(116); %116

v194 = p_194_1 * y(167) * y(118)- p_194_2 * y(117); %117

v195 = p_18_1 * y(7) * y(32) * y(7) -  p_195_1 * y(33) ; %33

v196 = p_92_1 * y(46) * y(49) - p_196_1 * y(136); %49

v197 = p_93_1 * y(46)* y(50) - p_197_1 * y(137); %50

v198 = p_107_1 * y(53)* y(60) - p_198_1 * y(139) ; %60

v199 = p_108_1 * y(53)* y(61) - p_199_1  * y(140); %61

v200 = p_109_1 * y(53)* y(62) - p_200_1  * y(141); %62

v201 = p_111_1 * y(53)* y(65) - p_201_1  * y(145); %65

v202 = p_155_1 * y(77)* y(86) - p_202_1 * y(150); %86

v203 = p_156_1 * y(77)* y(89) - p_203_1  * y(151); %89
v204 = p_163_1 * y(82)* y(89) - p_204_1 * y(152); %89

v205 = p_95_1 * y(47)* y(90) - p_205_1 * y(135); %90
v206 = p_101_1 * y(51)* y(90)- p_206_1 * y(142); %90

v207 = p_98_1 * y(48)* y(91) - p_207_1 * y(138); %91
v208 = p_102_1 * y(51)* y(91)- p_208_1 * y(143); %91

v209 = p_110_1 * y(53)* y(93) - p_209_1  * y(144); %93
v210 = p_132_1 * y(66)* y(93) - p_210_1 * y(148); %93

v211 = p_137_1 * y(67)* y(95) - p_211_1 * y(146); %95
v212 = p_158_1 * y(78)* y(95) - p_212_1 * y(149); %95
v213 = p_168_1 * y(88)* y(95) - p_213_1 * y(153); %95

v214 =  p_166_1 * y(111) * y(86) - p_214_1 * y(159); %111
v215 = p_169_1 * y(111) * y(89) - p_215_1 * y(160); %111

v216 = p_74_1 * y(112) * y(35) - p_216_1 * y(133); %112

v217 = p_59_1 * y(30)* y(115)- p_217_1 * y(128); %115
v218 = p_48_1 * y(27)* y(115) - p_218_1 * y(129) ; %115
v219 = p_49_1 * y(27)* y(115) - p_219_1 * y(130); %115
v220 = p_43_1 * y(25)* y(115) - p_220_1 * y(131); %115
v221 = p_57_1 * y(29)* y(115) - p_221_1 * y(132) ; %115

v222 = p_52_1 * y(28)* (y(27) + y(29)) - p_222_1 * y(119)  ; %119
v223 = p_55_1 * y(29)* (y(27) + y(29)) - p_223_1 * y(120); %120

v224 = p_120_1 * y(60)* (y(28) + y(30)) - p_224_1 * y(122); %122

v225 = p_126_1 * y(63)* (y(28) + y(30)) - p_225_1 * y(123); %123
v226 = p_121_1 * y(60)* (y(27) + y(29)) - p_226_1 * y(124); %124
v227 = p_127_1 * y(63)* (y(27) + y(29)) - p_227_1 * y(125); %125

v228 = p_53_1 * y(28)* (y(28) + y(30)) - p_228_1 * y(126); %126
v229 = p_56_1 * y(29)* (y(28) + y(30)) - p_229_1 * y(127); %127

v230 = p_131_1 * y(66)* y(1) - p_230_1 * y(147); %147

v231 = p_122_1 * y(60)* (y(105) + y(99) + y(101) + y(106) + y(97) + y(96)) - p_231_1 * y(154) ; %154

% Integrating the change in y
dydt = [ 
( - v1 - v2 - v3 - v4 - v5 - v6 )% y(1) %%-------> 1345_3pase
( v7 + v8 )% y(2) %%-------> 3kCaM*_ip3_cmplx
( v9 + v10 )% y(3) %%-------> 3kCaM_ip3_cmplx
( - v11 + v12 + v13 )% y(4) %%-------> BetaGamma
( - v14 - v15 )% y(5) %%-------> bisPP-IP4
( v16 )% y(6) %%-------> Blocked-rec-Gq
( - v17 - 2*v18 - v19 - v20 - 2 * v21 - v22 - v23 - v24 + v25 + v26 + v27 + r_NaCa + r_leak + r_pump  )% y(7) %%-------> Ca
( v19 )% y(8) %%-------> Ca-1pase-cmplx
(0 )% y(9) %%-------> Ca-leak-from-extracell
( -5*v28 - 5*v29 - 5*v30 - 5*v31 - 5*v32 - 5*v33 - 5*v34 - 5*v35 -2*6.25*v36 + 2*6.25*v37 -6.25* v26 - 6.25*v27 -6.25*r_seqmem )% y(10) %%-------> Ca-sequester
( -v29 + v28 )% y(11) %%-------> Ca10-Cal
( -v30 + v29 )% y(12) %%-------> Ca15-Cal
( -v31 + v30 )% y(13) %%-------> Ca20-Cal
( -v32 + v31 )% y(14) %%-------> Ca25-Cal
( -v33 + v32 )% y(15) %%-------> Ca30-Cal
( -v34 + v33 )% y(16) %%-------> Ca35-Cal
( v34 )% y(17) %%-------> Ca40-Cal
( -v28 + v35 )% y(18) %%-------> Ca5-Cal
( -v38 )% y(19) %%-------> CaEPump
( -v35 )% y(20) %%-------> Calseq
( -v21 )% y(21) %%-------> CaM
( -v20 + v22 )% y(22) %%-------> CaM-Ca3
( -v39 - v40 - v41 - v42 + v20  )% y(23) %%-------> CaM-Ca4
( -v22 + v21 )% y(24) %%-------> CaM-TR2-Ca2
( -v43 + v44 )% y(25) %%-------> CaMK-thr306
( -v45 - v42 + v46 + v47 )% y(26) %%-------> CaMKII
( -v48 - v49 + v50 + v51 )% y(27) %%-------> CaMKII***
( v42 - v52 -v53 + v54 )% y(28) %%-------> CaMKII-CaM
( -v41 + v45 - v55 - v56 -v57 + v58 )% y(29) %%-------> CaMKII-thr286
( v41 - v59 + v60 + v61 )% y(30) %%-------> CaMKII-thr286*-CaM
( - v36 )% y(31) %%-------> capacitive_Ca_entry*
( - v18 + v62 )% y(32) %%-------> CaTransp
( v195 - v63 )% y(33) %%-------> CaTransp-2Ca
( -v64 - v65 - v66 + v67 + v68 + v69 + v70 + v71 )% y(34) %%-------> DAG
( -v72 - v73 - v74 - v75  )% y(35) %%-------> DIPP1
( -v11 + v76 + v77 )% y(36) %%-------> G*GDP
( -v78 - v76 -v79 + v12 + v13 )% y(37) %%-------> G*GTP
( -v13 - v80 - v81 + v11 )% y(38) %%-------> G-GDP
( v36 )% y(39) %%-------> inact_cap_entry
( -v82 + v83 + v84 + v85  )% y(40) %%-------> IP1(1)
( -v86 + v87 )% y(41) %%-------> IP1(3)
( -v88 + v89 )% y(42) %%-------> IP1(4)
( v90 + v82 )% y(43) %%-------> ip1_1pase_cmplx
( v91 + v88 )% y(44) %%-------> ip1_4pase_cmplx
( -v82 - v88 - v90 - v91 )% y(45) %%-------> IP1_pase
( -v92 - v93 + v94 )% y(46) %%-------> IP2(13)
( -v95 + v96 + v97 )% y(47) %%-------> IP2(14)
( -v98 + v99 )% y(48) %%-------> IP2(34)
( -v196 )% y(49) %%-------> IP2_3pase1
( -v197 )% y(50) %%-------> IP2_3pase2
( -v1 - v100 - v101 - v102 + v103 )% y(51) %%-------> IP3(134)
( v1 )% y(52) %%-------> IP3(134)-3pase-cmplx
( -v2 - v8 - v10 + v104 + v105 + v106 - v107 - v108 - v109 - v110 - v111 + v112 + v68 + v69 + v70 + v71 )% y(53) %%-------> IP3(145)
( v2 )% y(54) %%-------> IP3(145)-3pase-cmplx
( -v113 + v114 )% y(55) %%-------> IP3(145)_ER
( v115 - v116 + v100 )% y(56) %%-------> IP3-56Kcmplx
( -v100 - v117 - v115 + v116 - v118 )% y(57) %%-------> IP3-56K_IP4-1K
( -v119 )% y(58) %%-------> IP3R
( v119 )% y(59) %%-------> IP3R*
( -v40 - v120 - v121 - v122 - v198 )% y(60) %%-------> IP3_3K
( -v39 + v123 + v124 -v199 )% y(61) %%-------> IP3_3K*
( v125 - v200 )% y(62) %%-------> IP3_3K*1
( -v10 + v40 - v9 - v126 - v127 )% y(63) %%-------> IP3_3K_CaM
( -v8 + v39 - v7 + v128 + v129 )% y(64) %%-------> IP3_3K_CaM*
( -v201 )% y(65) %%-------> IP3_5pase2
( v130 - v7 - v9 - v115 - v131 - v132 + v133 + v134 + v135 )% y(66) %%-------> IP4(1345)
( v136 - v137 )% y(67) %%-------> IP4(1345)_ER
( -v138 + v139 + v116 )% y(68) %%-------> IP4(1346)
( -v140 - v141 + v142 + v143 )% y(69) %%-------> IP4(1456)
( v144 + v145 )% y(70) %%-------> IP4(1456)_ER
( -v117 - v3 + v146 )% y(71) %%-------> IP4(3456)
( -v140 - v147 )% y(72) %%-------> IP4-3K
( v3 )% y(73) %%-------> IP4-3pase-cmplx
( v117 + v118 )% y(74) %%-------> ip4_1k_cmplx
( v147 + v140 )% y(75) %%-------> ip4_3k_cmplx
( v148 + v149 )% y(76) %%-------> IP5(12456)_ER
( -v72 - v4 - v150 - v151 - v146 - v143 + v152 + v153 - v118 - v147 + v138 - v139 + v154 - v155 - v156 )% y(77) %%-------> IP5(13456)
( v157 - v158 + v149 )% y(78) %%-------> IP5(13456)_ER
( v4 )% y(79) %%-------> IP5-3pase-cmplx
( v150 )% y(80) %%-------> IP5-5pase-cmplx
( v72 )% y(81) %%-------> IP5-DIPPcmplx
( -v73 - v5 - v159 - v160 + v161 - v162 + v151 - v152 - v163 + v164 )% y(82) %%-------> IP6
( v159 )% y(83) %%-------> IP6-5pase-inhib
( v73 )% y(84) %%-------> IP6-DIPPcmplx
( v5 )% y(85) %%-------> IP6-inhib-3pase-cmplx
( -v160 - v165 - v202 -v166 )% y(86) %%-------> IP6-K
( v165 + v160 )% y(87) %%-------> IP6-K-complex
( v167 - v168 )% y(88) %%-------> IP6_ER
( -v203 - v204 - v169 )% y(89) %%-------> IP6_K2
( -v19 - v205 - v206 )% y(90) %%-------> IP_1pase
( -v162 - v207 - v208 )% y(91) %%-------> IP_4pase
( v162 )% y(92) %%-------> IP_4pase_inact
( -v150 - v159 - v209 - v210 )% y(93) %%-------> IP_5pase1
( -v80 -v170 )% y(94) %%-------> AT1R
( -v211 - v212 - v213 )% y(95) %%-------> MIPP
( v171 )% y(96) %%-------> PKC-AA*
( v172 - v173 )% y(97) %%-------> PKC-basal*
( -v174 - v65 + v176 + v177 -v175 )% y(98) %%-------> PKC-Ca
( v174 )% y(99) %%-------> PKC-Ca-AA*
( -v178 + v179 + v65 )% y(100) %%-------> PKC-Ca-DAG
( v175 - v176 )% y(101) %%-------> KC-Ca-memb*
( -v171 - v177 - v172 + v173 - v66 )% y(102) %%-------> PKC-cytosolic
( -v180 + v66 )% y(103) %%-------> PKC-DAG
( -v181 + v182 + v180 )% y(104) %%-------> PKC-DAG-AA
( v181 - v182 )% y(105) %%-------> PKC-DAG-AA*
( v178 - v179 )% y(106) %%-------> PKC-DAG-memb*
( -v17 - v79 - v183 )% y(107) %%-------> PLC
( -v78 + v17 + v184 - v185 )% y(108) %%-------> PLC-Ca
( -v184 + v78 + v24 - v186 )% y(109) %%-------> PLC-Ca-Gq
( -v24 + v79 - v187 )% y(110) %%-------> PLC-Gq
( -v153 - v214 - v215 + v188 + v189 )% y(111) %%-------> PP-IP4
( -v190 - v165 - v216 + v191 + v192 )% y(112) %%-------> PP-IP5
( -v190 -v14 )% y(113) %%-------> PP-IP5-K
( v14 + v190 )% y(114) %%-------> PP-IP5-K-complex
( -v217 - v218 - v219 - v220 -v221 )% y(115) %%-------> PP1-active
( -v81 + v12 + v170 - v193 )% y(116) %%-------> Rec-AngII
( -v12 + v194 + v81 )% y(117) %%-------> Rec-AngII-Gq
( -v16 -v194 + v80 )% y(118) %%-------> Rec-Gq
( v222 )% y(119) %%-------> tot_autonomous_CaMKII_auton_286_complex
( v223 )% y(120) %%-------> tot_autonomous_CaMKII_auton_305_complex
( v38 )% y(121) %%-------> CaEPump_Ca-pump-out_complex
( v224 )% y(122) %%-------> tot_CaM_CaMKII_CaM-CaMK-phos_complex
( v225 )% y(123) %%-------> tot_CaM_CaMKII_CaM-CaMK-phos1_complex
( v226 )% y(124) %%-------> tot_autonomous_CaMKII_CaMK-phos_complex
( v227 )% y(125) %%-------> tot_autonomous_CaMKII_CaMK-phos1_complex
( v228 )% y(126) %%-------> tot_CaM_CaMKII_CaM_act_286_complex
( v229 )% y(127) %%-------> tot_CaM_CaMKII_CaM_act_305_complex
( v217 )% y(128) %%-------> PP1-active_Deph-thr286_complex
( v218 )% y(129) %%-------> PP1-active_Deph-thr286c_complex
( v219 )% y(130) %%-------> PP1-active_Deph-thr305_complex
( v220 )% y(131) %%-------> PP1-active_Deph-thr306_complex
( v221 )% y(132) %%-------> PP1-active_Deph_thr286b_complex
( v74 )% y(133) %%-------> DIPP1_dipp_ip7_complex
( v75 )% y(134) %%-------> DIPP1_dipp_ip8_complex
( v205 )% y(135) %%-------> IP_1pase_ip2_1pase_complex
( v196 )% y(136) %%-------> IP2_3pase1_ip2_3pase1_complex
( v197 )% y(137) %%-------> IP2_3pase2_ip2_3pase2_complex
( v207 )% y(138) %%-------> IP_4pase_ip2_4pase_complex
( v198 )% y(139) %%-------> IP3_3K_ip3-3k_complex
( v199 )% y(140) %%-------> IP3_3K*_ip3-3k*_complex
( v200 )% y(141) %%-------> IP3_3K*1_ip3-3k*1_complex
( v206 )% y(142) %%-------> IP_1pase_ip3_1pase_complex
( v208 )% y(143) %%-------> IP_4pase_ip3_4pase_complex
( v209 )% y(144) %%-------> IP_5pase1_ip3_5pase1_complex
( v201 )% y(145) %%-------> IP3_5pase2_ip3_5pase2_complex
( v211 )% y(146) %%-------> MIPP_ip4_3pase_complex
( v230 )% y(147) %%-------> 1345_3pase_ip4_3pase_complex
( v210 )% y(148) %%-------> IP_5pase1_ip4_5pase_complex
( v212 )% y(149) %%-------> MIPP_ip5_3pase_complex
( v202 )% y(150) %%-------> IP6-K_ip5_k1_complex
( v203 )% y(151) %%-------> IP6_K2_ip5_k2_complex
( v204 )% y(152) %%-------> IP6_K2_ip6_k2_complex
( v213 )% y(153) %%-------> MIPP_ip6_pase_complex
( v231 )% y(154) %%-------> PKC-active_PKC-phos_complex
( v183 )% y(155) %%-------> PLC_complex
( v185 )% y(156) %%-------> PLC-Ca_complex
( v187 )% y(157) %%-------> PLC-Gq_complex
( v186 )% y(158) %%-------> PLC-Ca-Gq_PLCb-Ca-Gq_complex
( v166 )% y(159) %%-------> IP6-K_pp-ip4-k1_complex
( v169 )% y(160) %%-------> IP6_K2_pp-ip4-k2_complex
( 0 )% y(161) %%-------> AA
( 0 )% y(162) %%-------> ADP
( 0 )% y(163) %%-------> ATP
( 0 )% y(164) %%-------> bisPP-IP3
( 0 )% y(165) %%-------> Ca-ext
( 0 )% y(166) %%-------> Ca-leak-to-cytoplasm
( 0 )% y(167) %%-------> AngII
( 0 )% y(168) %%-------> inositol
( 0 )% y(169) %%-------> IP5(12456)
( 0 )% y(170) %%-------> mGluRAntag
( 0 )% y(171) %%-------> PC
( 0 )% y(172) %%-------> PIP2
( 0 )% y(173) %%-------> total-CaMKII
( -v2 - v8 - v10 + v104 + v105 + v106 - v107 - v108 - v109 - v110 - v111 + v112 + v68 + v69 + v70 + v71 )% y(174) %%-------> IP3
( ( v181 - v182 ) + ( v174 ) + ( v175 - v176 ) + ( v178 - v179 ) + ( v172 - v173 ) + ( v171 ) )% y(175) %%-------> PKC-active
( -v48 - v49 + v50 + v51 -v41 + v45 - v55 - v56 -v57 + v58 )% y(176) %%-------> tot-autonomous-CaMKII
( ( v42 - v52 -v53 + v54 ) + ( v41 - v59 + v60 + v61 ) )% y(177) %%-------> tot-CaM-CaMKII
( 0 )% y(178) %%-------> active Kv
( 1e3*(1)*(Ina + IKdr  + IKahp +IKa+ ICal + Isyne + Isyni + Ileak)/p.Cm ) % y(179) %%-------> Membrane Voltage V % dV=1
( 1e3*( -mna + mina )/tmna ) % y(180) %%------->
( 1e3*( -hna + hina )/thna ) % y(181) %%------->
( 1e3*( -mdr + midr )/tdr ) % y(182) %%------->
( 1e3*( -ma1 + mia1 )/tma1 ) % y(183) %%------->
( 1e3*( -ha1 + hia1 )/tha1 ) % y(184) %%------->
( 1e3*( -ma2 + mia2 )/tma2 ) % y(185) %%------->
( 1e3*( -ha2 + hia2 )/tha2 ) % y(186) %%------->
( 1e3*( -mahp + miahp)/tahp ) % y(187) %%------->
( 1e3*( -mcal + mical)/tcal ) % y(188) %%------->
( 1e3*( -gsyne )/p.taue ) % y(189) %%------->  %(ICal / (2*p.vCa*p.F))*(1-P) + (p.Ca2cyt0-Ca2coni)/(17.7*exp(V/35));
( 1e3*( Ical / (2*(2.5e-4)*96480)*(1-(0.03/(0.03 + (5e-5) + 0.001))) + ((5e-5)-Ca_ahp)/(17.7*exp(V/35))) ) % y(190) %%------->  %dCa_ahpdt
( -r1-r2+r5+r6 ) % y(191) %%------->
( +r1-r3-r5+r8 ) % y(196) %%------->
( +r2-r4-r6+r7 ) % y(195) %%------->
( +r3+r4-r7-r8 ) % y(194) %%------->%-r10+r11
];

end

%
% function
function yy = interpoln( x, y, xx )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom function to perform linear interpolation
%
% input x - x vector
%       y - y vector
%       xx - scaler value of x for which interpolated value of y is asked
%
% output yy - interpolated value of xx 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  xx = floor(xx*100)/100;
  i = myfind( x, xx);
  yy = y(i) + ((xx - x(i))*y(i+1) - (xx - x(i) )*y(i))/(x(i+1) - x(i));
  yy = abs(yy);
end

%
% function
function b = myfind(x,searchfor)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom find function
%
% input x - x vector
%       searchfor - index value to searched on x
%
% output b - index for the lower bound value 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=1;
b=numel(x);
while (a+1<b)
    lw=(floor((a+b)/2));
    if (x(lw)<searchfor)
        a=lw;
    else
        b=lw;
    end
end

end


