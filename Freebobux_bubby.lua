local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\149\3","\150\187\45\61"),function(v42) if (v9(v42,2)==81) then local v95=0;while true do if (v95==0) then v30=v8(v11(v42,1,1));return "";end end else local v96=v10(v8(v42,49 -33 ));if v30 then local v104=0;local v105;while true do if (0==v104) then v105=v13(v96,v30);v30=nil;v104=1;end if (v104==1) then return v105;end end else return v96;end end end);local function v31(v43,v44,v45) if v45 then local v97=0;local v98;while true do if (v97==0) then v98=(v43/(2^(v44-1)))%((5 -3)^(((v45-1) -(v44-1)) + 1)) ;return v98-(v98%1) ;end end else local v99=2^(v44-(1 + 0)) ;return (((v43%(v99 + v99))>=v99) and (1 -0)) or 0 ;end end local function v32() local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (1==v46) then return v47;end end end local function v33() local v48=0;local v49;local v50;while true do if (0==v48) then v49,v50=v9(v27,v29,v29 + (3 -1) );v29=v29 + 2 ;v48=1;end if (v48==1) then return (v50 * 256) + v49 ;end end end local function v34() local v51=0;local v52;local v53;local v54;local v55;while true do if (1==v51) then return (v55 * 16777216) + (v54 * 65536) + (v53 * 256) + v52 ;end if (v51==0) then v52,v53,v54,v55=v9(v27,v29,v29 + (7 -4) );v29=v29 + (623 -(555 + 64)) ;v51=1;end end end local function v35() local v56=0;local v57;local v58;local v59;local v60;local v61;local v62;while true do if (v56==0) then v57=v34();v58=v34();v56=1;end if (1==v56) then v59=1;v60=(v31(v58,1,20) * ((440 -(145 + 293))^32)) + v57 ;v56=2;end if (v56==2) then v61=v31(v58,21,461 -(44 + 386) );v62=((v31(v58,32)==(1487 -(998 + 488))) and  -1) or 1 ;v56=3;end if (v56==3) then if (v61==0) then if (v60==(931 -(857 + 74))) then return v62 * (0 + 0) ;else v61=569 -(367 + 201) ;v59=0;end elseif (v61==2047) then return ((v60==0) and (v62 * (1/0))) or (v62 * NaN) ;end return v16(v62,v61-(1950 -(214 + 713)) ) * (v59 + (v60/(2^(14 + 38)))) ;end end end local function v36(v63) local v64;if  not v63 then local v100=0;while true do if (v100==0) then v63=v34();if (v63==(0 + 0)) then return "";end break;end end end v64=v11(v27,v29,(v29 + v63) -(878 -(282 + 595)) );v29=v29 + v63 ;local v65={};for v79=1638 -(1523 + 114) , #v64 do v65[v79]=v10(v9(v11(v64,v79,v79)));end return v14(v65);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v66=0;local v67;local v68;local v69;local v70;local v71;local v72;while true do if (v66==0) then v67={};v68={};v69={};v70={v67,v68,nil,v69};v66=1;end if (v66==1) then v71=v34();v72={};for v106=1,v71 do local v107=0;local v108;local v109;while true do if (v107==1) then if (v108==1) then v109=v32()~=(772 -(201 + 571)) ;elseif (v108==2) then v109=v35();elseif (v108==(1141 -(116 + 1022))) then v109=v36();end v72[v106]=v109;break;end if (0==v107) then v108=v32();v109=nil;v107=1;end end end v70[3]=v32();v66=2;end if (2==v66) then for v110=1,v34() do local v111=v32();if (v31(v111,1,1)==0) then local v120=0;local v121;local v122;local v123;while true do if (v120==3) then if (v31(v122,3,3)==1) then v123[4]=v72[v123[4]];end v67[v110]=v123;break;end if (v120==1) then v123={v33(),v33(),nil,nil};if (v121==0) then v123[3]=v33();v123[5 -1 ]=v33();elseif (v121==1) then v123[1068 -(68 + 997) ]=v34();elseif (v121==2) then v123[3]=v34() -((2 + 0)^16) ;elseif (v121==3) then local v136=0;while true do if (v136==0) then v123[10 -7 ]=v34() -(2^16) ;v123[4]=v33();break;end end end v120=2;end if (v120==2) then if (v31(v122,3 -2 ,1)==1) then v123[2]=v72[v123[2]];end if (v31(v122,861 -(814 + 45) ,2)==(2 -1)) then v123[3]=v72[v123[3]];end v120=3;end if (0==v120) then v121=v31(v111,2,12 -9 );v122=v31(v111,4,6);v120=1;end end end end for v112=1,v34() do v68[v112-1 ]=v39();end return v70;end end end local function v40(v73,v74,v75) local v76=v73[1];local v77=v73[1272 -(226 + 1044) ];local v78=v73[12 -9 ];return function(...) local v81=v76;local v82=v77;local v83=v78;local v84=v38;local v85=1;local v86= -1;local v87={};local v88={...};local v89=v20("#",...) -1 ;local v90={};local v91={};for v101=0 + 0 ,v89 do if (v101>=v83) then v87[v101-v83 ]=v88[v101 + 1 ];else v91[v101]=v88[v101 + 1 ];end end local v92=(v89-v83) + 1 ;local v93;local v94;while true do local v102=0;while true do if (v102==0) then v93=v81[v85];v94=v93[1];v102=1;end if (v102==1) then if (v94<=31) then if (v94<=15) then if (v94<=7) then if (v94<=3) then if (v94<=1) then if (v94==0) then v91[v93[1 + 1 ]]=v75[v93[3]];else local v139=v93[2];do return v21(v91,v139,v86);end end elseif (v94==2) then local v140=0;local v141;local v142;local v143;local v144;while true do if (v140==1) then v86=(v143 + v141) -1 ;v144=0;v140=2;end if (v140==2) then for v310=v141,v86 do v144=v144 + 1 ;v91[v310]=v142[v144];end break;end if (v140==0) then v141=v93[2];v142,v143=v84(v91[v141](v91[v141 + 1 ]));v140=1;end end else local v145=v93[2];local v146=v91[v93[120 -(32 + 85) ]];v91[v145 + 1 ]=v146;v91[v145]=v146[v93[4]];end elseif (v94<=5) then if (v94>4) then local v150=0;local v151;local v152;local v153;while true do if (v150==1) then v153=v91[v151 + 2 ];if (v153>0) then if (v152>v91[v151 + 1 ]) then v85=v93[3];else v91[v151 + (888 -(261 + 624)) ]=v152;end elseif (v152<v91[v151 + 1 ]) then v85=v93[4 -1 ];else v91[v151 + 3 ]=v152;end break;end if (v150==0) then v151=v93[2];v152=v91[v151];v150=1;end end else local v154=0;local v155;local v156;local v157;while true do if (v154==2) then if (v156>(1080 -(1020 + 60))) then if (v157<=v91[v155 + 1 ]) then local v354=0;while true do if (v354==0) then v85=v93[3];v91[v155 + 3 ]=v157;break;end end end elseif (v157>=v91[v155 + 1 + 0 ]) then local v355=0;while true do if (v355==0) then v85=v93[3];v91[v155 + 3 ]=v157;break;end end end break;end if (0==v154) then v155=v93[2];v156=v91[v155 + 2 ];v154=1;end if (v154==1) then v157=v91[v155] + v156 ;v91[v155]=v157;v154=2;end end end elseif (v94>6) then local v158=0;local v159;while true do if (v158==0) then v159=v93[2];v91[v159]=v91[v159](v21(v91,v159 + 1 ,v93[3]));break;end end else v91[v93[2]]=v74[v93[3]];end elseif (v94<=(1434 -(630 + 793))) then if (v94<=9) then if (v94==8) then for v257=v93[2],v93[9 -6 ] do v91[v257]=nil;end else v91[v93[2]]=v91[v93[3]];end elseif (v94>10) then local v164=0;local v165;while true do if (v164==0) then v165=v93[2];v91[v165](v21(v91,v165 + 1 ,v86));break;end end else local v166=0;local v167;while true do if (v166==0) then v167=v93[2];do return v91[v167](v21(v91,v167 + 1 + 0 ,v93[3]));end break;end end end elseif (v94<=13) then if (v94==12) then local v168=0;local v169;local v170;local v171;local v172;while true do if (v168==0) then v169=v93[2];v170,v171=v84(v91[v169](v91[v169 + 1 ]));v168=1;end if (2==v168) then for v313=v169,v86 do local v314=0;while true do if (v314==0) then v172=v172 + 1 ;v91[v313]=v170[v172];break;end end end break;end if (v168==1) then v86=(v171 + v169) -1 ;v172=0;v168=2;end end else local v173=0;local v174;local v175;local v176;while true do if (1==v173) then v176=v91[v174] + v175 ;v91[v174]=v176;v173=2;end if (v173==0) then v174=v93[2];v175=v91[v174 + 2 ];v173=1;end if (v173==2) then if (v175>0) then if (v176<=v91[v174 + 1 ]) then v85=v93[3];v91[v174 + (14 -11) ]=v176;end elseif (v176>=v91[v174 + 1 ]) then local v360=0;while true do if (v360==0) then v85=v93[3];v91[v174 + 3 ]=v176;break;end end end break;end end end elseif (v94>14) then local v177=0;local v178;while true do if (v177==0) then v178=v93[2];v91[v178]=v91[v178](v21(v91,v178 + 1 ,v86));break;end end else local v179=0;local v180;local v181;local v182;while true do if (v179==2) then for v315=1,v93[9 -5 ] do local v316=0;local v317;while true do if (v316==0) then v85=v85 + 1 ;v317=v81[v85];v316=1;end if (v316==1) then if (v317[1]==37) then v182[v315-1 ]={v91,v317[3]};else v182[v315-(1 -0) ]={v74,v317[3]};end v90[ #v90 + 1 ]=v182;break;end end end v91[v93[3 -1 ]]=v40(v180,v181,v75);break;end if (v179==1) then v182={};v181=v18({},{[v7("\35\76\162\125\24\118\179","\19\124\19\203")]=function(v318,v319) local v320=0;local v321;while true do if (0==v320) then v321=v182[v319];return v321[1][v321[959 -(892 + 65) ]];end end end,[v7("\254\45\3\240\21\121\183\197\23\21","\217\161\114\109\149\98\16")]=function(v322,v323,v324) local v325=0;local v326;while true do if (v325==0) then v326=v182[v323];v326[1][v326[2]]=v324;break;end end end});v179=2;end if (v179==0) then v180=v82[v93[3]];v181=nil;v179=1;end end end elseif (v94<=23) then if (v94<=(369 -(87 + 263))) then if (v94<=17) then if (v94==16) then v91[v93[2]]();else do return;end end elseif (v94==(1765 -(760 + 987))) then local v183=v93[2];v91[v183]=v91[v183](v21(v91,v183 + 1 ,v86));else for v259=v93[2],v93[3] do v91[v259]=nil;end end elseif (v94<=21) then if (v94>20) then local v185=0;local v186;while true do if (0==v185) then v186=v93[2];v91[v186](v21(v91,v186 + 1 ,v86));break;end end else local v187=v93[2];do return v21(v91,v187,v86);end end elseif (v94>(1935 -(1789 + 124))) then if  not v91[v93[768 -(745 + 21) ]] then v85=v85 + 1 ;else v85=v93[183 -(67 + 113) ];end else v91[v93[2]]={};end elseif (v94<=27) then if (v94<=25) then if (v94>24) then if  not v91[v93[2]] then v85=v85 + 1 ;else v85=v93[3];end else v85=v93[3];end elseif (v94==26) then v91[v93[2]]=v93[3 + 0 ];else local v192=0;local v193;local v194;local v195;while true do if (v192==1) then v195={};v194=v18({},{[v7("\45\31\49\114\184\113\10","\20\114\64\88\28\220")]=function(v327,v328) local v329=0;local v330;while true do if (v329==0) then v330=v195[v328];return v330[1][v330[2]];end end end,[v7("\14\62\220\177\239\217\179\53\4\202","\221\81\97\178\212\152\176")]=function(v331,v332,v333) local v334=0;local v335;while true do if (v334==0) then v335=v195[v332];v335[1][v335[2]]=v333;break;end end end});v192=2;end if (2==v192) then for v336=1,v93[4] do local v337=0;local v338;while true do if (v337==1) then if (v338[3 -2 ]==(90 -53)) then v195[v336-1 ]={v91,v338[3]};else v195[v336-(1 + 0) ]={v74,v338[3]};end v90[ #v90 + 1 ]=v195;break;end if (v337==0) then v85=v85 + 1 ;v338=v81[v85];v337=1;end end end v91[v93[7 -5 ]]=v40(v193,v194,v75);break;end if (v192==0) then v193=v82[v93[7 -4 ]];v194=nil;v192=1;end end end elseif (v94<=29) then if (v94==28) then local v196=0;local v197;while true do if (v196==0) then v197=v93[2];do return v91[v197](v21(v91,v197 + (953 -(802 + 150)) ,v93[3]));end break;end end else local v198=0;local v199;local v200;local v201;local v202;while true do if (v198==2) then for v339=v199,v86 do local v340=0;while true do if (0==v340) then v202=v202 + 1 ;v91[v339]=v200[v202];break;end end end break;end if (v198==1) then v86=(v201 + v199) -1 ;v202=0;v198=2;end if (v198==0) then v199=v93[1057 -(87 + 968) ];v200,v201=v84(v91[v199](v21(v91,v199 + 1 ,v86)));v198=1;end end end elseif (v94>30) then v91[v93[2]]=v91[v93[3]]%v93[4] ;else v91[v93[2]]=v91[v93[3]] + v93[4] ;end elseif (v94<=47) then if (v94<=39) then if (v94<=35) then if (v94<=(88 -55)) then if (v94==32) then v91[v93[2]]=v91[v93[3]][v93[4]];else v91[v93[2]]=v91[v93[5 -2 ]]%v93[3 + 1 ] ;end elseif (v94>34) then v91[v93[2]]=v91[v93[3]]%v91[v93[8 -4 ]] ;else local v209=0;local v210;while true do if (v209==0) then v210=v93[2];v91[v210]=v91[v210](v21(v91,v210 + 1 ,v93[3]));break;end end end elseif (v94<=37) then if (v94==36) then local v211=0;local v212;local v213;local v214;local v215;while true do if (v211==0) then v212=v93[2];v213,v214=v84(v91[v212](v21(v91,v212 + 1 ,v93[1000 -(915 + 82) ])));v211=1;end if (v211==2) then for v341=v212,v86 do local v342=0;while true do if (v342==0) then v215=v215 + 1 ;v91[v341]=v213[v215];break;end end end break;end if (v211==1) then v86=(v214 + v212) -1 ;v215=0;v211=2;end end else v91[v93[2]]=v91[v93[8 -5 ]];end elseif (v94>38) then v91[v93[2]]=v91[v93[3]] + v93[4] ;elseif (v91[v93[2]]==v93[4]) then v85=v85 + 1 ;else v85=v93[3];end elseif (v94<=(26 + 17)) then if (v94<=41) then if (v94==40) then v91[v93[2]]=v91[v93[3]]%v91[v93[4 -0 ]] ;elseif v91[v93[2]] then v85=v85 + 1 ;else v85=v93[3];end elseif (v94>42) then if v91[v93[2]] then v85=v85 + 1 ;else v85=v93[3];end else local v220=0;local v221;local v222;local v223;while true do if (0==v220) then v221=v93[2];v222=v91[v221];v220=1;end if (v220==1) then v223=v91[v221 + (1189 -(1069 + 118)) ];if (v223>0) then if (v222>v91[v221 + 1 ]) then v85=v93[3];else v91[v221 + (1416 -(447 + 966)) ]=v222;end elseif (v222<v91[v221 + 1 ]) then v85=v93[3];else v91[v221 + (8 -5) ]=v222;end break;end end end elseif (v94<=(1862 -(1703 + 114))) then if (v94>44) then v91[v93[2]]= #v91[v93[3]];else local v225=0;local v226;local v227;while true do if (v225==0) then v226=v93[2];v227=v91[v226];v225=1;end if (v225==1) then for v343=v226 + 1 ,v86 do v15(v227,v91[v343]);end break;end end end elseif (v94==46) then v91[v93[2]]=v93[704 -(376 + 325) ];else local v230=0;local v231;local v232;local v233;local v234;while true do if (v230==0) then v231=v93[2];v232,v233=v84(v91[v231](v21(v91,v231 + (1 -0) ,v93[3])));v230=1;end if (1==v230) then v86=(v233 + v231) -(2 -1) ;v234=0;v230=2;end if (v230==2) then for v344=v231,v86 do v234=v234 + 1 ;v91[v344]=v232[v234];end break;end end end elseif (v94<=55) then if (v94<=(15 + 36)) then if (v94<=(106 -57)) then if (v94>48) then do return v91[v93[1 + 1 ]]();end else v91[v93[2]]=v93[3] + v91[v93[4]] ;end elseif (v94>50) then v91[v93[2]]=v91[v93[4 -1 ]][v93[4]];else v91[v93[2]]=v93[3] + v91[v93[8 -4 ]] ;end elseif (v94<=53) then if (v94==52) then v91[v93[2]]();else local v239=0;local v240;local v241;while true do if (v239==1) then v91[v240 + 1 + 0 ]=v241;v91[v240]=v241[v93[4]];break;end if (v239==0) then v240=v93[2];v241=v91[v93[3]];v239=1;end end end elseif (v94>54) then v91[v93[2]]=v74[v93[3]];else v85=v93[3];end elseif (v94<=59) then if (v94<=57) then if (v94==56) then do return v91[v93[2]]();end else v91[v93[2]]= #v91[v93[3]];end elseif (v94>(72 -(9 + 5))) then do return;end else v91[v93[2]]={};end elseif (v94<=61) then if (v94==60) then if (v91[v93[793 -(368 + 423) ]]==v93[380 -(85 + 291) ]) then v85=v85 + 1 ;else v85=v93[3];end else local v247=0;local v248;local v249;while true do if (0==v247) then v248=v93[1267 -(243 + 1022) ];v249=v91[v248];v247=1;end if (v247==1) then for v347=v248 + 1 ,v86 do v15(v249,v91[v347]);end break;end end end elseif (v94==(194 -132)) then v91[v93[20 -(10 + 8) ]]=v75[v93[3]];else local v252=0;local v253;local v254;local v255;local v256;while true do if (v252==0) then v253=v93[2];v254,v255=v84(v91[v253](v21(v91,v253 + 1 ,v86)));v252=1;end if (v252==2) then for v348=v253,v86 do local v349=0;while true do if (v349==0) then v256=v256 + (443 -(416 + 26)) ;v91[v348]=v254[v256];break;end end end break;end if (v252==1) then v86=(v255 + v253) -1 ;v256=0 -0 ;v252=2;end end end v85=v85 + (3 -2) ;break;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q00123E3Q00013Q0020335Q000200123E000100013Q00203300010001000300123E000200013Q00203300020002000400123E000300053Q0006190003000A000100010004183Q000A000100123E000300063Q00203300040003000700123E000500083Q00203300050005000900123E000600083Q00203300060006000A00061B00073Q000100062Q00253Q00064Q00258Q00253Q00044Q00253Q00014Q00253Q00024Q00253Q00053Q00123E000800013Q00203300080008000B00123E0009000C3Q00123E000A000D3Q00061B000B0001000100052Q00253Q00074Q00253Q00094Q00253Q00084Q00253Q000A4Q00253Q000B4Q0009000C000B4Q0031000C00014Q0014000C6Q003B3Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q003A00025Q00121A000300014Q002D00045Q00121A000500013Q0004050003002100012Q000600076Q0009000800024Q0006000900014Q0006000A00024Q0006000B00034Q0006000C00044Q0009000D6Q0009000E00063Q00201E000F000600012Q0024000C000F4Q0012000B3Q00022Q0006000C00034Q0006000D00044Q0009000E00014Q002D000F00014Q0023000F0006000F001032000F0001000F2Q002D001000014Q002300100006001000103200100001001000201E0010001000012Q0024000D00104Q001D000C6Q0012000A3Q000200201F000A000A00022Q000C0009000A4Q001500073Q000100040D0003000500012Q0006000300054Q0009000400024Q001C000300044Q001400036Q003B3Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q00061B5Q000100012Q00378Q0006000100014Q0006000200024Q0006000300024Q003A00046Q0006000500034Q000900066Q0013000700074Q0024000500074Q003D00043Q000100203300040004000100121A000500024Q000700030005000200121A000400034Q0024000200044Q001200013Q0002002Q2600010018000100040004183Q001800012Q000900016Q003A00026Q001C000100024Q001400015Q0004183Q001B00012Q0006000100044Q0031000100014Q001400016Q003B3Q00013Q00013Q00063Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q7470476574035B3Q00D9D7CF35F5E18851C3C2CC6BE1B2D316C4C1CE36E3A9C411DFD7DE2BF2F5C411DC8CCD20E8BFC20AC5C29636E5A9CE0EC5C6C96AC5AC8A1CC4C1D93C2QA9C218C28CD320E7BFD451DCC2D22BA98FCE12D48DD930E4B9DE50DDD6DA03083Q007EB1A3BB4586DBA7026Q00F03F010F3Q0006293Q000D00013Q0004183Q000D000100123E000100013Q00123E000200023Q0020350002000200032Q000600045Q00121A000500043Q00121A000600054Q0024000400064Q001D00026Q001200013Q00022Q00100001000100010004183Q000E000100203300013Q00062Q003B3Q00017Q00",v17(),...);
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
