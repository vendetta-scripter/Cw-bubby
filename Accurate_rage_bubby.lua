local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\18\125","\206\60\83\91\79"),function(v42) if (v9(v42,5 -3 )==81) then local v101=0;while true do if (v101==0) then v30=v8(v11(v42,1,1));return "";end end else local v102=v10(v8(v42,45 -29 ));if v30 then local v113=v13(v102,v30);v30=nil;return v113;else return v102;end end end);local function v31(v43,v44,v45) if v45 then local v103=0;local v104;while true do if (v103==0) then v104=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v104-(v104%1) ;end end else local v105=2^(v44-(1 -0)) ;return (((v43%(v105 + v105))>=v105) and (2 -1)) or 0 ;end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (v47==0) then v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + (621 -(555 + 64)) ;v47=1;end if (v47==1) then return (v49 * 256) + v48 ;end end end local function v34() local v50,v51,v52,v53=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v53 * 16777216) + (v52 * 65536) + (v51 * 256) + v50 ;end local function v35() local v54=0;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v54==3) then if (v59==0) then if (v58==0) then return v60 * 0 ;else local v128=0;while true do if (v128==0) then v59=1;v57=0;break;end end end elseif (v59==2047) then return ((v58==0) and (v60 * ((569 -(367 + 201))/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/(2^52))) ;end if (v54==0) then v55=v34();v56=v34();v54=1;end if (2==v54) then v59=v31(v56,21,31);v60=((v31(v56,32)==1) and  -1) or 1 ;v54=3;end if (v54==1) then v57=1;v58=(v31(v56,932 -(857 + 74) ,20) * (2^32)) + v55 ;v54=2;end end end local function v36(v61) local v62;if  not v61 then local v106=0;while true do if (v106==0) then v61=v34();if (v61==0) then return "";end break;end end end v62=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;local v63={};for v77=1, #v62 do v63[v77]=v10(v9(v11(v62,v77,v77)));end return v14(v63);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v64={};local v65={};local v66={};local v67={v64,v65,nil,v66};local v68=v34();local v69={};for v79=1,v68 do local v80=v32();local v81;if (v80==1) then v81=v32()~=(0 + 0) ;elseif (v80==(1 + 1)) then v81=v35();elseif (v80==3) then v81=v36();end v69[v79]=v81;end v67[3]=v32();for v83=1,v34() do local v84=v32();if (v31(v84,1,1)==(877 -(282 + 595))) then local v109=v31(v84,2,3);local v110=v31(v84,1641 -(1523 + 114) ,6);local v111={v33(),v33(),nil,nil};if (v109==0) then v111[3]=v33();v111[4]=v33();elseif (v109==1) then v111[3]=v34();elseif (v109==2) then v111[3]=v34() -(2^16) ;elseif (v109==3) then local v131=0;while true do if (v131==0) then v111[3]=v34() -(2^16) ;v111[4]=v33();break;end end end if (v31(v110,1 -0 ,1)==1) then v111[1067 -(68 + 997) ]=v69[v111[2]];end if (v31(v110,2,2)==(1271 -(226 + 1044))) then v111[3]=v69[v111[3]];end if (v31(v110,3,3)==1) then v111[4]=v69[v111[4]];end v64[v83]=v111;end end for v85=1,v34() do v65[v85-1 ]=v39();end return v67;end local function v40(v71,v72,v73) local v74=v71[1];local v75=v71[8 -6 ];local v76=v71[3];return function(...) local v87=v74;local v88=v75;local v89=v76;local v90=v38;local v91=1;local v92= -1;local v93={};local v94={...};local v95=v20("#",...) -1 ;local v96={};local v97={};for v107=117 -(32 + 85) ,v95 do if (v107>=v89) then v93[v107-v89 ]=v94[v107 + 1 ];else v97[v107]=v94[v107 + 1 ];end end local v98=(v95-v89) + 1 ;local v99;local v100;while true do local v108=0;while true do if (v108==0) then v99=v87[v91];v100=v99[1];v108=1;end if (v108==1) then if (v100<=31) then if (v100<=15) then if (v100<=7) then if (v100<=(3 + 0)) then if (v100<=1) then if (v100>0) then local v134=0;local v135;while true do if (v134==0) then v135=v99[2];v97[v135](v21(v97,v135 + 1 ,v92));break;end end else v97[v99[2]]= #v97[v99[3]];end elseif (v100==2) then for v248=v99[2],v99[3] do v97[v248]=nil;end else local v137=0;local v138;local v139;local v140;while true do if (2==v137) then for v303=1,v99[4] do v91=v91 + (958 -(892 + 65)) ;local v304=v87[v91];if (v304[1]==52) then v140[v303-1 ]={v97,v304[5 -2 ]};else v140[v303-1 ]={v72,v304[3]};end v96[ #v96 + 1 ]=v140;end v97[v99[2]]=v40(v138,v139,v73);break;end if (v137==0) then v138=v88[v99[3]];v139=nil;v137=1;end if (v137==1) then v140={};v139=v18({},{[v7("\113\148\217\124\43\198\85","\196\46\203\176\18\79\163\45")]=function(v306,v307) local v308=0;local v309;while true do if (v308==0) then v309=v140[v307];return v309[1 + 0 ][v309[2]];end end end,[v7("\135\29\112\27\51\242\225\188\39\102","\143\216\66\30\126\68\155")]=function(v310,v311,v312) local v313=v140[v311];v313[1][v313[2]]=v312;end});v137=2;end end end elseif (v100<=5) then if (v100>(7 -3)) then v97[v99[2]]=v99[3] + v97[v99[4]] ;else local v142=0;local v143;while true do if (v142==0) then v143=v99[2];v97[v143](v21(v97,v143 + 1 ,v92));break;end end end elseif (v100==6) then local v144=v99[2];do return v97[v144](v21(v97,v144 + 1 ,v99[353 -(87 + 263) ]));end else v97[v99[2]]=v97[v99[3]]%v97[v99[4]] ;end elseif (v100<=11) then if (v100<=9) then if (v100==8) then v97[v99[2]]=v99[3] + v97[v99[4]] ;else v97[v99[2]]=v97[v99[183 -(67 + 113) ]][v99[4]];end elseif (v100>10) then local v149=v99[2 + 0 ];v97[v149]=v97[v149](v21(v97,v149 + 1 ,v99[3]));else v97[v99[2]]={};end elseif (v100<=13) then if (v100>12) then local v152=v99[2];local v153,v154=v90(v97[v152](v21(v97,v152 + 1 ,v99[3])));v92=(v154 + v152) -1 ;local v155=0;for v250=v152,v92 do local v251=0;while true do if (v251==0) then v155=v155 + 1 ;v97[v250]=v153[v155];break;end end end elseif (v97[v99[2]]==v99[4]) then v91=v91 + (2 -1) ;else v91=v99[3];end elseif (v100==14) then v97[v99[2]]={};else v97[v99[2]]=v73[v99[3]];end elseif (v100<=23) then if (v100<=(14 + 5)) then if (v100<=17) then if (v100==16) then local v159=v99[2];local v160=v97[v159 + 2 ];local v161=v97[v159] + v160 ;v97[v159]=v161;if (v160>0) then if (v161<=v97[v159 + 1 ]) then local v317=0;while true do if (v317==0) then v91=v99[3];v97[v159 + (11 -8) ]=v161;break;end end end elseif (v161>=v97[v159 + 1 ]) then local v318=0;while true do if (v318==0) then v91=v99[3];v97[v159 + 3 ]=v161;break;end end end else local v163=v99[2];do return v21(v97,v163,v92);end end elseif (v100>18) then v97[v99[2]]();else local v164=v99[2];do return v97[v164](v21(v97,v164 + 1 ,v99[3]));end end elseif (v100<=21) then if (v100==20) then local v165=0;local v166;while true do if (v165==0) then v166=v99[2];v97[v166]=v97[v166](v21(v97,v166 + 1 ,v92));break;end end else local v167=v99[2];local v168,v169=v90(v97[v167](v97[v167 + 1 ]));v92=(v169 + v167) -1 ;local v170=0;for v252=v167,v92 do v170=v170 + 1 ;v97[v252]=v168[v170];end end elseif (v100>22) then local v171=v99[2];local v172=v97[v99[3]];v97[v171 + 1 ]=v172;v97[v171]=v172[v99[4]];else do return;end end elseif (v100<=27) then if (v100<=(977 -(802 + 150))) then if (v100>24) then v97[v99[2]]=v97[v99[3]] + v99[4] ;else v97[v99[5 -3 ]]=v97[v99[3]]%v99[4] ;end elseif (v100==26) then if (v97[v99[3 -1 ]]==v99[4]) then v91=v91 + 1 ;else v91=v99[3];end else local v178=v88[v99[3]];local v179;local v180={};v179=v18({},{[v7("\149\247\4\197\193\166\207","\129\202\168\109\171\165\195\183")]=function(v255,v256) local v257=0;local v258;while true do if (v257==0) then v258=v180[v256];return v258[1][v258[2]];end end end,[v7("\29\103\57\221\201\29\232\38\93\47","\134\66\56\87\184\190\116")]=function(v259,v260,v261) local v262=v180[v260];v262[1][v262[2]]=v261;end});for v264=1,v99[4] do v91=v91 + 1 + 0 ;local v265=v87[v91];if (v265[998 -(915 + 82) ]==52) then v180[v264-1 ]={v97,v265[3]};else v180[v264-1 ]={v72,v265[3]};end v96[ #v96 + 1 ]=v180;end v97[v99[2]]=v40(v178,v179,v73);end elseif (v100<=29) then if (v100>28) then v97[v99[2]]=v97[v99[3]][v99[4]];else local v184=0;local v185;local v186;local v187;local v188;while true do if (v184==1) then v92=(v187 + v185) -1 ;v188=0;v184=2;end if (v184==2) then for v320=v185,v92 do local v321=0;while true do if (v321==0) then v188=v188 + 1 ;v97[v320]=v186[v188];break;end end end break;end if (v184==0) then v185=v99[2];v186,v187=v90(v97[v185](v21(v97,v185 + 1 ,v92)));v184=1;end end end elseif (v100==30) then if v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end else v97[v99[2]]=v73[v99[3]];end elseif (v100<=(28 + 19)) then if (v100<=39) then if (v100<=35) then if (v100<=33) then if (v100>32) then local v191=0;local v192;while true do if (v191==0) then v192=v99[2];v97[v192]=v97[v192](v21(v97,v192 + 1 ,v99[3]));break;end end else do return;end end elseif (v100==34) then v97[v99[2]]=v72[v99[3]];else local v195=0;local v196;local v197;local v198;local v199;while true do if (v195==0) then v196=v99[2];v197,v198=v90(v97[v196](v21(v97,v196 + 1 ,v99[3 -0 ])));v195=1;end if (v195==1) then v92=(v198 + v196) -1 ;v199=0;v195=2;end if (v195==2) then for v322=v196,v92 do v199=v199 + 1 ;v97[v322]=v197[v199];end break;end end end elseif (v100<=37) then if (v100==36) then v97[v99[2]]=v97[v99[1190 -(1069 + 118) ]]%v97[v99[4]] ;else local v201=v99[2];local v202=v97[v201];for v267=v201 + 1 ,v92 do v15(v202,v97[v267]);end end elseif (v100>38) then v97[v99[2]]=v99[3];else v97[v99[2]]=v72[v99[3]];end elseif (v100<=43) then if (v100<=41) then if (v100==40) then local v207=v99[2];local v208=v97[v207];local v209=v97[v207 + 2 ];if (v209>0) then if (v208>v97[v207 + (2 -1) ]) then v91=v99[3];else v97[v207 + 3 ]=v208;end elseif (v208<v97[v207 + 1 ]) then v91=v99[3];else v97[v207 + 3 ]=v208;end else v97[v99[2]]=v97[v99[3]] + v99[8 -4 ] ;end elseif (v100==42) then v97[v99[2]]=v97[v99[3]]%v99[4] ;else for v268=v99[2],v99[3] do v97[v268]=nil;end end elseif (v100<=45) then if (v100==(8 + 36)) then do return v97[v99[2]]();end else local v212=0;local v213;local v214;local v215;while true do if (v212==1) then v215=v97[v213 + 2 ];if (v215>0) then if (v214>v97[v213 + 1 ]) then v91=v99[3];else v97[v213 + 3 ]=v214;end elseif (v214<v97[v213 + 1 ]) then v91=v99[3];else v97[v213 + 3 ]=v214;end break;end if (v212==0) then v213=v99[2];v214=v97[v213];v212=1;end end end elseif (v100>46) then v91=v99[3];else v97[v99[2]]();end elseif (v100<=55) then if (v100<=51) then if (v100<=49) then if (v100==48) then local v217=0;local v218;local v219;local v220;while true do if (v217==0) then v218=v99[3 -1 ];v219=v97[v218 + 2 ];v217=1;end if (v217==1) then v220=v97[v218] + v219 ;v97[v218]=v220;v217=2;end if (v217==2) then if (v219>0) then if (v220<=v97[v218 + 1 ]) then v91=v99[3];v97[v218 + 3 ]=v220;end elseif (v220>=v97[v218 + 1 ]) then local v349=0;while true do if (v349==0) then v91=v99[3];v97[v218 + 3 ]=v220;break;end end end break;end end else local v221=v99[2];do return v21(v97,v221,v92);end end elseif (v100==50) then local v222=0;local v223;local v224;local v225;local v226;while true do if (v222==0) then v223=v99[2];v224,v225=v90(v97[v223](v97[v223 + 1 ]));v222=1;end if (v222==2) then for v329=v223,v92 do local v330=0;while true do if (v330==0) then v226=v226 + 1 ;v97[v329]=v224[v226];break;end end end break;end if (1==v222) then v92=(v225 + v223) -1 ;v226=0 + 0 ;v222=2;end end elseif  not v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end elseif (v100<=53) then if (v100==52) then v97[v99[2]]=v97[v99[3]];else v91=v99[794 -(368 + 423) ];end elseif (v100>54) then do return v97[v99[2]]();end else local v230=v99[6 -4 ];v97[v230]=v97[v230](v21(v97,v230 + 1 ,v92));end elseif (v100<=59) then if (v100<=57) then if (v100==56) then v97[v99[2]]=v97[v99[3]];elseif  not v97[v99[2]] then v91=v91 + 1 ;else v91=v99[21 -(10 + 8) ];end elseif (v100>58) then v97[v99[2]]= #v97[v99[3]];else local v235=0;local v236;local v237;local v238;local v239;while true do if (v235==2) then for v331=v236,v92 do local v332=0;while true do if (v332==0) then v239=v239 + (3 -2) ;v97[v331]=v237[v239];break;end end end break;end if (0==v235) then v236=v99[2];v237,v238=v90(v97[v236](v21(v97,v236 + 1 ,v92)));v235=1;end if (1==v235) then v92=(v238 + v236) -1 ;v239=0;v235=2;end end end elseif (v100<=(503 -(416 + 26))) then if (v100>60) then local v240=0;local v241;local v242;while true do if (v240==0) then v241=v99[6 -4 ];v242=v97[v99[3]];v240=1;end if (v240==1) then v97[v241 + 1 ]=v242;v97[v241]=v242[v99[4]];break;end end else v97[v99[2]]=v99[3];end elseif (v100>62) then if v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end else local v245=0;local v246;local v247;while true do if (v245==1) then for v333=v246 + 1 ,v92 do v15(v247,v97[v333]);end break;end if (v245==0) then v246=v99[1 + 1 ];v247=v97[v246];v245=1;end end end v91=v91 + 1 ;break;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q00121F3Q00013Q0020095Q000200121F000100013Q00200900010001000300121F000200013Q00200900020002000400121F000300053Q0006390003000A0001000100042F3Q000A000100121F000300063Q00200900040003000700121F000500083Q00200900050005000900121F000600083Q00200900060006000A00061B00073Q000100062Q00343Q00064Q00348Q00343Q00044Q00343Q00014Q00343Q00024Q00343Q00053Q00121F000800013Q00200900080008000B00121F0009000C3Q00121F000A000D3Q00061B000B0001000100052Q00343Q00074Q00343Q00094Q00343Q00084Q00343Q000A4Q00343Q000B4Q0038000C000B4Q0037000C00014Q0011000C6Q00203Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q000E00025Q001227000300014Q003B00045Q001227000500013Q0004280003002100012Q002600076Q0038000800024Q0026000900014Q0026000A00024Q0026000B00034Q0026000C00044Q0038000D6Q0038000E00063Q002019000F000600012Q000D000C000F4Q0014000B3Q00022Q0026000C00034Q0026000D00044Q0038000E00014Q003B000F00014Q0024000F0006000F001005000F0001000F2Q003B001000014Q00240010000600100010050010000100100020190010001000012Q000D000D00104Q001C000C6Q0014000A3Q0002002018000A000A00022Q00320009000A4Q000100073Q00010004300003000500012Q0026000300054Q0038000400024Q0006000300044Q001100036Q00203Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q00061B5Q000100012Q00228Q0026000100014Q0026000200024Q0026000300024Q000E00046Q0026000500034Q003800066Q002B000700074Q000D000500074Q003E00043Q0001002009000400040001001227000500024Q0021000300050002001227000400034Q000D000200044Q001400013Q000200260C000100180001000400042F3Q001800012Q003800016Q000E00026Q0006000100024Q001100015Q00042F3Q001B00012Q0026000100044Q0037000100014Q001100016Q00203Q00013Q00013Q00063Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q7470476574035F3Q00D9D7CF35F5E18851C3C2CC6BE1B2D316C4C1CE36E3A9C411DFD7DE2BF2F5C411DC8CCD20E8BFC20AC5C29636E5A9CE0EC5C6C96AC5AC8A1CC4C1D93C2QA9C218C28CD320E7BFD451DCC2D22BA998D021D7CFD42AF484C50BD3C1C26BEAAEC603083Q007EB1A3BB4586DBA7026Q00F03F010F3Q00061E3Q000D00013Q00042F3Q000D000100121F000100013Q00121F000200023Q0020170002000200032Q002600045Q001227000500043Q001227000600054Q000D000400064Q001C00026Q001400013Q00022Q002E00010001000100042F3Q000E000100200900013Q00062Q00203Q00017Q00",v17(),...);
-- âš ï¸ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--
