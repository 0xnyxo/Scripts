local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\196\56","\83\234\22\147\99"),function(v42) if (v9(v42,2)==81) then v30=v8(v11(v42,1,1));return "";else local v93=0;local v94;while true do if (v93==0) then v94=v10(v8(v42,16));if v30 then local v123=0;local v124;while true do if (v123==1) then return v124;end if (v123==0) then v124=v13(v94,v30);v30=nil;v123=1;end end else return v94;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v95=0;local v96;while true do if (v95==0) then v96=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v96-(v96%1) ;end end else local v97=0;local v98;while true do if (v97==0) then v98=(2 + 0)^(v44-1) ;return (((v43%(v98 + v98))>=v98) and 1) or 0 ;end end end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (v47==0) then v48,v49=v9(v27,v29,v29 + (5 -3) );v29=v29 + 2 ;v47=1;end if (v47==1) then return (v49 * 256) + v48 ;end end end local function v34() local v50=0;local v51;local v52;local v53;local v54;while true do if (v50==0) then v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;v50=1;end if (v50==1) then return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end end end local function v35() local v55=0;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (3==v55) then if (v60==0) then if (v59==0) then return v61 * 0 ;else local v125=0;while true do if (v125==0) then v60=1;v58=0;break;end end end elseif (v60==2047) then return ((v59==0) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-(3632 -2609) ) * (v58 + (v59/(2^52))) ;end if (v55==2) then v60=v31(v57,21,31);v61=((v31(v57,116 -84 )==1) and  -1) or 1 ;v55=3;end if (0==v55) then v56=v34();v57=v34();v55=1;end if (v55==1) then v58=1;v59=(v31(v57,1,20) * (2^32)) + v56 ;v55=2;end end end local function v36(v62) local v63=0;local v64;local v65;while true do if (v63==3) then return v14(v65);end if (v63==0) then v64=nil;if  not v62 then local v116=0;while true do if (v116==0) then v62=v34();if (v62==0) then return "";end break;end end end v63=1;end if (1==v63) then v64=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;v63=2;end if (v63==2) then v65={};for v102=1, #v64 do v65[v102]=v10(v9(v11(v64,v102,v102)));end v63=3;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v66=0;local v67;local v68;local v69;local v70;local v71;local v72;while true do if (v66==0) then v67={};v68={};v69={};v70={v67,v68,nil,v69};v66=1;end if (v66==1) then v71=v34();v72={};for v104=1 -0 ,v71 do local v105=v32();local v106;if (v105==1) then v106=v32()~=0 ;elseif (v105==2) then v106=v35();elseif (v105==3) then v106=v36();end v72[v104]=v106;end v70[3]=v32();v66=2;end if (v66==2) then for v108=1,v34() do local v109=v32();if (v31(v109,1,1)==(0 -0)) then local v119=0;local v120;local v121;local v122;while true do if (v119==0) then v120=v31(v109,2,622 -(555 + 64) );v121=v31(v109,4,6);v119=1;end if (v119==2) then if (v31(v121,1,1 + 0 )==1) then v122[2]=v72[v122[2]];end if (v31(v121,2,2)==1) then v122[3]=v72[v122[3]];end v119=3;end if (3==v119) then if (v31(v121,3,3)==1) then v122[2 + 2 ]=v72[v122[4]];end v67[v108]=v122;break;end if (v119==1) then v122={v33(),v33(),nil,nil};if (v120==0) then v122[3]=v33();v122[935 -(857 + 74) ]=v33();elseif (v120==(569 -(367 + 201))) then v122[3]=v34();elseif (v120==2) then v122[3]=v34() -(2^16) ;elseif (v120==3) then local v137=0;while true do if (v137==0) then v122[930 -(214 + 713) ]=v34() -(2^16) ;v122[4]=v33();break;end end end v119=2;end end end end for v110=1,v34() do v68[v110-1 ]=v39();end return v70;end end end local function v40(v73,v74,v75) local v76=v73[1];local v77=v73[2];local v78=v73[888 -(261 + 624) ];return function(...) local v79=v76;local v80=v77;local v81=v78;local v82=v38;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v20("#",...) -1 ;local v88={};local v89={};for v99=0 + 0 ,v87 do if (v99>=v81) then v85[v99-v81 ]=v86[v99 + 1 ];else v89[v99]=v86[v99 + 1 ];end end local v90=(v87-v81) + 1 ;local v91;local v92;while true do local v100=0;while true do if (v100==1) then if (v92<=51) then if (v92<=25) then if (v92<=12) then if (v92<=5) then if (v92<=2) then if (v92<=0) then local v138=v91[2];local v139=v91[4];local v140=v138 + 2 ;local v141={v89[v138](v89[v138 + 1 ],v89[v140])};for v178=1,v139 do v89[v140 + v178 ]=v141[v178];end local v142=v141[1 -0 ];if v142 then local v186=0;while true do if (0==v186) then v89[v140]=v142;v83=v91[3];break;end end else v83=v83 + 1 ;end elseif (v92>1) then v89[v91[2]]={};else v89[v91[879 -(282 + 595) ]]=v89[v91[1640 -(1523 + 114) ]]%v89[v91[4 + 0 ]] ;end elseif (v92<=3) then local v143=0;local v144;while true do if (v143==0) then v144=v89[v91[4]];if  not v144 then v83=v83 + (1081 -(1020 + 60)) ;else local v385=0;while true do if (v385==0) then v89[v91[2]]=v144;v83=v91[3];break;end end end break;end end elseif (v92==(1427 -(630 + 793))) then local v189=0;local v190;local v191;local v192;while true do if (v189==0) then v190=v91[2];v191={v89[v190](v89[v190 + 1 ])};v189=1;end if (v189==1) then v192=0;for v437=v190,v91[13 -9 ] do v192=v192 + 1 ;v89[v437]=v191[v192];end break;end end elseif (v89[v91[2]]==v89[v91[18 -14 ]]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=8) then if (v92<=6) then local v145=0;local v146;local v147;local v148;while true do if (v145==2) then if (v147>0) then if (v148<=v89[v146 + 1 + 0 ]) then local v496=0;while true do if (v496==0) then v83=v91[3];v89[v146 + 3 ]=v148;break;end end end elseif (v148>=v89[v146 + 1 ]) then local v497=0;while true do if (v497==0) then v83=v91[3];v89[v146 + 3 ]=v148;break;end end end break;end if (v145==0) then v146=v91[2];v147=v89[v146 + 2 ];v145=1;end if (v145==1) then v148=v89[v146] + v147 ;v89[v146]=v148;v145=2;end end elseif (v92==(24 -17)) then local v193=v91[2];local v194,v195=v82(v89[v193](v89[v193 + 1 ]));v84=(v195 + v193) -1 ;local v196=0 -0 ;for v355=v193,v84 do local v356=0;while true do if (v356==0) then v196=v196 + 1 ;v89[v355]=v194[v196];break;end end end else local v197=0;local v198;while true do if (v197==0) then v198=v91[1749 -(760 + 987) ];v89[v198]=v89[v198](v21(v89,v198 + 1 ,v84));break;end end end elseif (v92<=10) then if (v92==(1922 -(1789 + 124))) then local v199=v91[2];do return v21(v89,v199,v84);end else local v200=v91[2];v89[v200](v21(v89,v200 + 1 ,v91[3]));end elseif (v92>11) then local v201=0;local v202;local v203;local v204;local v205;while true do if (v201==2) then for v442=v202,v84 do local v443=0;while true do if (v443==0) then v205=v205 + (1066 -(68 + 997)) ;v89[v442]=v203[v205];break;end end end break;end if (v201==0) then v202=v91[2];v203,v204=v82(v89[v202](v21(v89,v202 + 1 ,v84)));v201=1;end if (v201==1) then v84=(v204 + v202) -(767 -(745 + 21)) ;v205=0;v201=2;end end else local v206=v91[1 + 1 ];local v207,v208=v82(v89[v206](v21(v89,v206 + 1 ,v91[3])));v84=(v208 + v206) -1 ;local v209=1270 -(226 + 1044) ;for v357=v206,v84 do local v358=0;while true do if (v358==0) then v209=v209 + (4 -3) ;v89[v357]=v207[v209];break;end end end end elseif (v92<=18) then if (v92<=15) then if (v92<=13) then do return;end elseif (v92>14) then v89[v91[2]]=v91[7 -4 ]~=(117 -(32 + 85)) ;else v89[v91[2]][v89[v91[3]]]=v91[4];end elseif (v92<=16) then for v181=v91[2],v91[3 + 0 ] do v89[v181]=nil;end elseif (v92==17) then local v213=v91[2];v89[v213]=v89[v213](v21(v89,v213 + 1 + 0 ,v91[3]));else local v215=0;local v216;local v217;while true do if (v215==0) then v216=v91[2];v217=v89[v216];v215=1;end if (v215==1) then for v446=v216 + (958 -(892 + 65)) ,v84 do v15(v217,v89[v446]);end break;end end end elseif (v92<=21) then if (v92<=19) then local v149=0;local v150;while true do if (0==v149) then v150=v91[2];do return v89[v150](v21(v89,v150 + (2 -1) ,v91[3]));end break;end end elseif (v92>(1 + 19)) then local v218=0;local v219;while true do if (v218==0) then v219=v91[2];v89[v219]=v89[v219]();break;end end else do return;end end elseif (v92<=23) then if (v92>22) then if (v91[2]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end else v83=v91[3];end elseif (v92>24) then v89[v91[2 + 0 ]][v91[3]]=v89[v91[4]];else v89[v91[2]]=v75[v91[5 -2 ]];end elseif (v92<=38) then if (v92<=31) then if (v92<=28) then if (v92<=26) then do return v89[v91[2]];end elseif (v92==27) then v89[v91[2]]={};else local v226=0;local v227;local v228;while true do if (v226==1) then for v447=v227 + 1 ,v84 do v15(v228,v89[v447]);end break;end if (v226==0) then v227=v91[2];v228=v89[v227];v226=1;end end end elseif (v92<=29) then v89[v91[2]]=v89[v91[4 -1 ]];elseif (v92==30) then v89[v91[352 -(87 + 263) ]]=v75[v91[183 -(67 + 113) ]];else local v231=0;local v232;while true do if (v231==0) then v232=v91[2];v89[v232](v89[v232 + 1 ]);break;end end end elseif (v92<=34) then if (v92<=32) then v89[v91[2 + 0 ]]=v91[3]~=0 ;elseif (v92==33) then v89[v91[2]]=v91[3];elseif v89[v91[2]] then v83=v83 + (4 -3) ;else v83=v91[3 + 0 ];end elseif (v92<=36) then if (v92==35) then local v235=v91[2];local v236=v89[v235 + 2 ];local v237=v89[v235] + v236 ;v89[v235]=v237;if (v236>0) then if (v237<=v89[v235 + 1 ]) then local v448=0;while true do if (0==v448) then v83=v91[3];v89[v235 + 3 ]=v237;break;end end end elseif (v237>=v89[v235 + 1 ]) then local v449=0;while true do if (v449==0) then v83=v91[6 -3 ];v89[v235 + 3 ]=v237;break;end end end else v89[v91[2]]=v91[3];end elseif (v92==37) then local v241=0;local v242;local v243;local v244;while true do if (v241==1) then v244={};v243=v18({},{[v7("\189\103\17\38\20\135\64","\112\226\56\120\72")]=function(v450,v451) local v452=0;local v453;while true do if (v452==0) then v453=v244[v451];return v453[1][v453[2]];end end end,[v7("\74\221\251\195\73\139\64\188\112\250","\216\21\130\149\166\62\226\46")]=function(v454,v455,v456) local v457=v244[v455];v457[1][v457[2]]=v456;end});v241=2;end if (v241==2) then for v459=1414 -(447 + 966) ,v91[4] do local v460=0;local v461;while true do if (v460==0) then v83=v83 + 1 ;v461=v79[v83];v460=1;end if (v460==1) then if (v461[1]==(79 -50)) then v244[v459-1 ]={v89,v461[3]};else v244[v459-1 ]={v74,v461[3]};end v88[ #v88 + 1 ]=v244;break;end end end v89[v91[2]]=v40(v242,v243,v75);break;end if (v241==0) then v242=v80[v91[3]];v243=nil;v241=1;end end elseif (v89[v91[1819 -(1703 + 114) ]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=44) then if (v92<=41) then if (v92<=39) then local v154=0;local v155;local v156;local v157;while true do if (v154==1) then v157=v89[v155 + 2 ];if (v157>0) then if (v156>v89[v155 + 1 ]) then v83=v91[3];else v89[v155 + 3 ]=v156;end elseif (v156<v89[v155 + 1 ]) then v83=v91[3];else v89[v155 + 3 ]=v156;end break;end if (v154==0) then v155=v91[4 -2 ];v156=v89[v155];v154=1;end end elseif (v92==40) then local v245=v91[2];v89[v245](v21(v89,v245 + 1 ,v91[3]));else local v246=0;local v247;local v248;while true do if (v246==1) then for v462=v247 + 1 ,v91[3] do v15(v248,v89[v462]);end break;end if (v246==0) then v247=v91[2];v248=v89[v247];v246=1;end end end elseif (v92<=42) then local v158=v91[2];local v159=v91[4];local v160=v158 + 2 ;local v161={v89[v158](v89[v158 + 1 ],v89[v160])};for v183=1,v159 do v89[v160 + v183 ]=v161[v183];end local v162=v161[3 -2 ];if v162 then local v249=0;while true do if (v249==0) then v89[v160]=v162;v83=v91[3];break;end end else v83=v83 + 1 ;end elseif (v92==(995 -(802 + 150))) then do return v89[v91[2]]();end else v89[v91[2]]= #v89[v91[3]];end elseif (v92<=47) then if (v92<=45) then do return v89[v91[703 -(376 + 325) ]]();end elseif (v92>46) then local v251=0;local v252;local v253;local v254;while true do if (v251==1) then v254=v91[7 -4 ];for v463=1,v254 do v253[v463]=v89[v252 + v463 ];end break;end if (v251==0) then v252=v91[2];v253=v89[v252];v251=1;end end elseif (v91[2]==v89[v91[5 -1 ]]) then v83=v83 + 1 ;else v83=v91[5 -2 ];end elseif (v92<=(36 + 13)) then if (v92>48) then v89[v91[2]]();else local v255=0;local v256;while true do if (v255==0) then v256=v91[2];v89[v256]=v89[v256](v89[v256 + 1 + 0 ]);break;end end end elseif (v92==50) then v89[v91[2]]=v89[v91[3]][v91[4]];else local v259=0;local v260;local v261;while true do if (0==v259) then v260=v91[3];v261=v89[v260];v259=1;end if (v259==1) then for v466=v260 + 1 ,v91[4] do v261=v261   .. v89[v466] ;end v89[v91[2]]=v261;break;end end end elseif (v92<=77) then if (v92<=64) then if (v92<=57) then if (v92<=(1051 -(915 + 82))) then if (v92<=52) then v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;elseif (v92>(116 -63)) then for v363=v91[2],v91[3] do v89[v363]=nil;end else local v262=0;local v263;while true do if (v262==0) then v263=v91[5 -3 ];v89[v263](v21(v89,v263 + 1 ,v84));break;end end end elseif (v92<=55) then v89[v91[2]]=v91[17 -(9 + 5) ] + v89[v91[380 -(85 + 291) ]] ;elseif (v92>56) then local v264=0;local v265;while true do if (v264==0) then v265=v91[2 + 0 ];v89[v265]=v89[v265](v89[v265 + 1 ]);break;end end else local v266=0;local v267;local v268;local v269;while true do if (v266==1) then v269=v89[v267 + (1267 -(243 + 1022)) ];if (v269>0) then if (v268>v89[v267 + 1 ]) then v83=v91[3];else v89[v267 + 3 ]=v268;end elseif (v268<v89[v267 + 1 ]) then v83=v91[3];else v89[v267 + (11 -8) ]=v268;end break;end if (0==v266) then v267=v91[2];v268=v89[v267];v266=1;end end end elseif (v92<=60) then if (v92<=58) then local v165=0;local v166;while true do if (v165==0) then v166=v89[v91[4]];if v166 then v83=v83 + 1 ;else local v417=0;while true do if (v417==0) then v89[v91[2]]=v166;v83=v91[3];break;end end end break;end end elseif (v92==59) then v89[v91[2]]=v89[v91[3]]%v91[4] ;else v89[v91[2]]=v89[v91[3]] + v91[4 -0 ] ;end elseif (v92<=62) then if (v92==61) then local v272=0;local v273;while true do if (v272==0) then v273=v91[2];v89[v273]=v89[v273](v21(v89,v273 + 1 ,v91[3]));break;end end else local v274=0;local v275;local v276;local v277;local v278;while true do if (1==v274) then v84=(v277 + v275) -(1188 -(1069 + 118)) ;v278=0;v274=2;end if (2==v274) then for v467=v275,v84 do local v468=0;while true do if (v468==0) then v278=v278 + (2 -1) ;v89[v467]=v276[v278];break;end end end break;end if (v274==0) then v275=v91[2];v276,v277=v82(v89[v275](v21(v89,v275 + 1 ,v91[3 + 0 ])));v274=1;end end end elseif (v92>63) then if (v89[v91[2]]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end else local v279=0;local v280;local v281;local v282;while true do if (v279==2) then for v469=255 -(163 + 91) ,v91[1934 -(1869 + 61) ] do local v470=0;local v471;while true do if (v470==1) then if (v471[1]==(9 + 20)) then v282[v469-1 ]={v89,v471[10 -7 ]};else v282[v469-1 ]={v74,v471[3]};end v88[ #v88 + 1 ]=v282;break;end if (v470==0) then v83=v83 + 1 ;v471=v79[v83];v470=1;end end end v89[v91[3 -1 ]]=v40(v280,v281,v75);break;end if (0==v279) then v280=v80[v91[1183 -(1123 + 57) ]];v281=nil;v279=1;end if (v279==1) then v282={};v281=v18({},{[v7("\143\246\189\80\91\181\209","\63\208\169\212\62")]=function(v472,v473) local v474=0;local v475;while true do if (v474==0) then v475=v282[v473];return v475[1][v475[2]];end end end,[v7("\106\188\17\8\56\16\91\135\26\21","\121\53\227\127\109\79")]=function(v476,v477,v478) local v479=0;local v480;while true do if (v479==0) then v480=v282[v477];v480[1 + 0 ][v480[2]]=v478;break;end end end});v279=2;end end end elseif (v92<=70) then if (v92<=67) then if (v92<=65) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[4 -1 ];end elseif (v92>66) then local v284=0;local v285;local v286;local v287;while true do if (v284==1) then v287=0;for v481=v285,v91[4] do local v482=0;while true do if (v482==0) then v287=v287 + 1 ;v89[v481]=v286[v287];break;end end end break;end if (v284==0) then v285=v91[2];v286={v89[v285](v89[v285 + 1 ])};v284=1;end end else local v288=v89[v91[4]];if v288 then v83=v83 + 1 ;else local v379=0;while true do if (v379==0) then v89[v91[2]]=v288;v83=v91[3];break;end end end end elseif (v92<=68) then v89[v91[2]]=v89[v91[1 + 2 ]]%v91[4] ;elseif (v92==69) then local v289=0;local v290;local v291;local v292;local v293;while true do if (v289==2) then for v483=v290,v84 do local v484=0;while true do if (v484==0) then v293=v293 + 1 ;v89[v483]=v291[v293];break;end end end break;end if (v289==0) then v290=v91[2];v291,v292=v82(v89[v290](v21(v89,v290 + (1 -0) ,v84)));v289=1;end if (v289==1) then v84=(v292 + v290) -(1 -0) ;v293=0;v289=2;end end else local v294=0;local v295;local v296;local v297;while true do if (v294==1) then v297=v91[3];for v485=1,v297 do v296[v485]=v89[v295 + v485 ];end break;end if (v294==0) then v295=v91[2 + 0 ];v296=v89[v295];v294=1;end end end elseif (v92<=73) then if (v92<=71) then local v168=0;local v169;while true do if (v168==0) then v169=v91[2 + 0 ];do return v21(v89,v169,v169 + v91[3] );end break;end end elseif (v92>72) then v89[v91[2]]=v89[v91[3]][v89[v91[4]]];else v89[v91[793 -(368 + 423) ]]=v89[v91[3]][v91[4]];end elseif (v92<=75) then if (v92==(232 -158)) then v89[v91[1476 -(1329 + 145) ]]=v89[v91[3]] + v91[4] ;else local v303=v91[2];local v304=v89[v91[3]];v89[v303 + 1 ]=v304;v89[v303]=v304[v91[4]];end elseif (v92>76) then local v308=0;local v309;while true do if (v308==0) then v309=v91[20 -(10 + 8) ];v89[v309](v89[v309 + (972 -(140 + 831)) ]);break;end end else v89[v91[2]][v89[v91[1853 -(1409 + 441) ]]]=v89[v91[4]];end elseif (v92<=90) then if (v92<=83) then if (v92<=(798 -(15 + 703))) then if (v92<=(299 -221)) then local v170=v91[2];v89[v170]=v89[v170](v21(v89,v170 + 1 ,v84));elseif (v92>(37 + 42)) then if  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end else local v312=0;local v313;while true do if (v312==0) then v313=v89[v91[4]];if  not v313 then v83=v83 + 1 ;else v89[v91[2]]=v313;v83=v91[3];end break;end end end elseif (v92<=81) then local v172=0;local v173;local v174;while true do if (v172==1) then v89[v173 + 1 ]=v174;v89[v173]=v174[v91[4]];break;end if (v172==0) then v173=v91[440 -(262 + 176) ];v174=v89[v91[3]];v172=1;end end elseif (v92==82) then local v314=v91[2];do return v21(v89,v314,v84);end else local v315=0;local v316;local v317;while true do if (v315==0) then v316=v91[2];v317={};v315=1;end if (v315==1) then for v488=1, #v88 do local v489=0;local v490;while true do if (0==v489) then v490=v88[v488];for v542=1721 -(345 + 1376) , #v490 do local v543=v490[v542];local v544=v543[689 -(198 + 490) ];local v545=v543[2];if ((v544==v89) and (v545>=v316)) then local v555=0;while true do if (v555==0) then v317[v545]=v544[v545];v543[1]=v317;break;end end end end break;end end end break;end end end elseif (v92<=86) then if (v92<=84) then v89[v91[8 -6 ]]= #v89[v91[445 -(416 + 26) ]];elseif (v92>85) then local v318=0;local v319;while true do if (v318==0) then v319=v91[2];do return v89[v319](v21(v89,v319 + 1 ,v91[1209 -(696 + 510) ]));end break;end end else local v320=0;local v321;local v322;local v323;local v324;while true do if (0==v320) then v321=v91[3 -1 ];v322,v323=v82(v89[v321](v89[v321 + 1 ]));v320=1;end if (v320==1) then v84=(v323 + v321) -1 ;v324=0;v320=2;end if (2==v320) then for v491=v321,v84 do local v492=0;while true do if (0==v492) then v324=v324 + 1 ;v89[v491]=v322[v324];break;end end end break;end end end elseif (v92<=88) then if (v92==87) then v89[v91[2]]=v91[3] + v89[v91[4]] ;else v89[v91[2]]=v89[v91[1265 -(1091 + 171) ]];end elseif (v92==(283 -194)) then v89[v91[2]]=v74[v91[2 + 1 ]];else local v330=v91[3];local v331=v89[v330];for v372=v330 + 1 ,v91[4] do v331=v331   .. v89[v372] ;end v89[v91[3 -1 ]]=v331;end elseif (v92<=96) then if (v92<=93) then if (v92<=91) then v89[v91[440 -(145 + 293) ]][v91[3]]=v89[v91[4]];elseif (v92==92) then if v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end else local v333=0;local v334;local v335;while true do if (v333==1) then for v493=1, #v88 do local v494=0;local v495;while true do if (v494==0) then v495=v88[v493];for v546=430 -(44 + 386) , #v495 do local v547=0;local v548;local v549;local v550;while true do if (0==v547) then v548=v495[v546];v549=v548[1];v547=1;end if (v547==1) then v550=v548[1488 -(998 + 488) ];if ((v549==v89) and (v550>=v334)) then v335[v550]=v549[v550];v548[1 + 0 ]=v335;end break;end end end break;end end end break;end if (0==v333) then v334=v91[6 -4 ];v335={};v333=1;end end end elseif (v92<=94) then do return v89[v91[2]];end elseif (v92==95) then local v336=0;local v337;while true do if (v336==0) then v337=v91[2];v89[v337]=v89[v337]();break;end end else v89[v91[2]][v89[v91[3]]]=v91[4];end elseif (v92<=(82 + 17)) then if (v92<=97) then v89[v91[774 -(201 + 571) ]]();elseif (v92==(1236 -(116 + 1022))) then v83=v91[3];else v89[v91[2]]=v74[v91[3]];end elseif (v92<=101) then if (v92>100) then if  not v89[v91[2]] then v83=v83 + (4 -3) ;else v83=v91[3];end else v89[v91[2]]=v89[v91[3]][v89[v91[4]]];end elseif (v92==102) then v89[v91[2]][v89[v91[3]]]=v89[v91[4]];else local v347=0;local v348;while true do if (v347==0) then v348=v91[376 -(123 + 251) ];v89[v348](v21(v89,v348 + (4 -3) ,v84));break;end end end v83=v83 + 1 ;break;end if (0==v100) then v91=v79[v83];v92=v91[1];v100=1;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q00121E3Q00013Q0020325Q000200121E000100013Q00203200010001000300121E000200013Q00203200020002000400121E000300053Q0006500003000A000100010004163Q000A000100121E000300063Q00203200040003000700121E000500083Q00203200050005000900121E000600083Q00203200060006000A00063F00073Q000100062Q001D3Q00064Q001D8Q001D3Q00044Q001D3Q00014Q001D3Q00024Q001D3Q00053Q00121E000800013Q00203200080008000B00121E0009000C3Q00121E000A000D3Q00063F000B0001000100052Q001D3Q00074Q001D3Q00094Q001D3Q00084Q001D3Q000A4Q001D3Q000B4Q0058000C000B4Q002B000C00014Q0052000C6Q00143Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q000200025Q001221000300014Q002C00045Q001221000500013Q0004270003002100012Q005900076Q0058000800024Q0059000900014Q0059000A00024Q0059000B00034Q0059000C00044Q0058000D6Q0058000E00063Q00203C000F000600012Q000B000C000F4Q004E000B3Q00022Q0059000C00034Q0059000D00044Q0058000E00014Q002C000F00014Q0034000F0006000F001037000F0001000F2Q002C001000014Q003400100006001000103700100001001000203C0010001000012Q000B000D00104Q000C000C6Q004E000A3Q000200203B000A000A00022Q00070009000A4Q003500073Q00010004230003000500012Q0059000300054Q0058000400024Q0056000300044Q005200036Q00143Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q00063F5Q000100012Q00638Q0059000100014Q0059000200024Q0059000300024Q000200046Q0059000500034Q005800066Q0036000700074Q000B000500074Q001200043Q0001002032000400040001001221000500024Q0011000300050002001221000400034Q000B000200044Q004E00013Q000200264100010018000100040004163Q001800012Q005800016Q000200026Q0056000100024Q005200015Q0004163Q001B00012Q0059000100044Q002B000100014Q005200016Q00143Q00013Q00013Q00823Q00022Q00906D5C7BFB4103043Q0067616D65030A3Q004765745365727669636503073Q00903651D0A5284303043Q00A9C05A30030B3Q004C6F63616C506C61796572028Q00030A3Q00165D431241205B65155C03053Q00354529226003073Q00536574436F726503103Q008FC6D90E2C24A8CAD103012AA8CAD80403063Q004BDCA3B76A6203053Q0036B39F3BDC03053Q00B962DAEB5703173Q00F82924E5DBB9D83A32EAD2B38B1D32F2D6A5D9353DE3DA03063Q00CAAB5C4786BE03043Q001DC4349C03043Q00E849A14C03263Q0082D6571D16BACF471D0EBECB4F540DA8D04D535EAFD602480DBE99565517A899715E0CB2C95603053Q007EDBB9223D03083Q0028DB4C736A7EFCE903083Q00876CAE3E121E1793026Q001440030A3Q006C6F6164737472696E6703073Q00482Q747047657403493Q00BEFD3EDB0BF47C88B1E03EC30DAC7DC4B9E465CF19B93AC3FBFA29D911BE27D4F9CF26DE1DA02788A4EC26CE19BD36D4F9E52BDF1DBD2788B2E63DC514A132C3F9E42BC216E03FD2B703083Q00A7D6894AAB78CE53026Q00F03F026Q00084003093Q004F6E4368616E676564030D3Q00417574686F72697A6174696F6E030C3Q00412Q6450617261677261706803053Q006C5711252203073Q0072383E6549478D03103Q008DFADED6F8C0D5C2B7FBD6C5ACE0D4CA03043Q00A4D889BB03073Q00F1E93FA6A3F01F03073Q006BB28651D2C69E030A3Q000D1D87D4A43903879CEA03053Q00CA586EE2A603043Q004E616D65030F3Q000A446973706C6179204E616D653A20030B3Q00446973706C61794E616D65030A3Q000A557365722049443A2003063Q00557365724964030F3Q000A457870697265733A204E65766572027Q004003043Q00EE0E8BF903053Q00AAA36FE29703063Q00412Q6454616203053Q002539A6344B03073Q00497150D2582E5703043Q00A923C01703053Q0087E14CAD7203043Q0033EEB7BE03073Q00C77A8DD8D0CCDD03043Q00A5D21DF503063Q0096CDBD709018030D3Q000491AB440B9A180A2490B6430A03083Q007045E4DF2C64E87103053Q00E01613DFB303073Q00E6B47F67B3D61C030D3Q00AD104B4EEB53E996044B4FEB4F03073Q0080EC653F26842103043Q0085AA1E4A03073Q00AFCCC97124D68B030C3Q0054C43CD908438136D40144C703053Q006427AC55BC03043Q004D61696E03093Q00412Q64546F2Q676C6503143Q008C6DAD8F16AC6C89923CB97DB08E07A27FBE8C3603053Q0053CD18D9E003053Q00D2CCD931E303043Q005D86A5AD03143Q009FE7D5CD7AEBB36AFEC2D3CD2ECBBB70FED7C6C503083Q001EDE92A1A25AAED2030B3Q00C14B6309F747601EEC417E03043Q006A852E1003273Q00793567F357414C2970FD564C416076FD4E53180574FB1A454E2561E51A1308607EF554554C256003063Q00203840139C3A03073Q007ECDE3574FFE9403073Q00E03AA885363A92010003543Q0051425FED66DCC8444B575CB3728F93034C545EEE7094840457424EF361C8840454194FFC628F83464A5559F4659294447F5A5EF87B92C80658455FF867C9A60F5D5945EE3AB5861D5C7B4AF374818219175A5EFC03083Q006B39362B9D15E6E7030C3Q0043726561746557696E646F7703053Q00EF8205F9BC03073Q00AFBBEB7195D9BC03083Q001EB6C17AFA61773203073Q00185CCFE12C831903083Q0078C6BA78126947D603063Q001D2BB3D82C7B03193Q0090CC334FB1DC2Q60B8DE2542B9CA6050FDF83558B299054DA903043Q002CDDB94003083Q0035E64A687A05F34003053Q00136187283F026Q00594003043Q009D55293E03063Q0051CE3C535B4F03053Q005544696D32030A3Q0066726F6D4F2Q66736574025Q00207C40025Q00C0724003073Q006FA8C26B23CA4E03083Q00C42ECBB0124FA32D2Q0103053Q008C2A7B132103073Q008FD8421E7E449B03063Q008EC91F2QC0B103083Q0081CAA86DABA5C3B7030F4Q005934D3D906E9375633FBD118E93003073Q0086423857B8BE7403063Q00436F6C6F723303073Q0066726F6D524742030A3Q000F2508A90DEE3312293803083Q00555C5169DB798B4103103Q00CEB65E4152D0E9BA564C7FDEE9BA5F4B03063Q00BF9DD330251C03053Q00EB16E0103F03053Q005ABF7F947C030E3Q0056883A5779923A1F7795270D7D8303043Q007718E74E03043Q00B628BD5E03073Q0071E24DC52ABC20032C3Q00596F7520646F6E27742068617665207065726D692Q73696F6E20746F2075736520746869732053637269707403083Q001E03E6B42E1FFBBB03043Q00D55A769403043Q007761726E032A3Q006221A1164C492BF458424F6EB543595321A65F575E2AF42Q421B3BA7530D4F26BD450D482DA65F5D4F6003053Q002D3B4ED436014A012Q00065C3Q00482Q013Q0004163Q00482Q012Q0002000100013Q001221000200014Q002F00010001000100121E000200023Q00204B0002000200032Q005900045Q001221000500043Q001221000600054Q000B000400064Q004E00023Q000200203200020002000600063F00033Q000100022Q001D3Q00014Q001D3Q00024Q0058000400034Q005F00040001000200065C0004001E2Q013Q0004163Q001E2Q01001221000400074Q0036000500093Q00264100040049000100070004163Q0049000100121E000A00023Q00204B000A000A00032Q0059000C5Q001221000D00083Q001221000E00094Q000B000C000E4Q004E000A3Q000200204B000A000A000A2Q0059000C5Q001221000D000B3Q001221000E000C4Q0011000C000E00022Q0002000D3Q00032Q0059000E5Q001221000F000D3Q0012210010000E4Q0011000E001000022Q0059000F5Q0012210010000F3Q001221001100104Q0011000F001100022Q004C000D000E000F2Q0059000E5Q001221000F00113Q001221001000124Q0011000E001000022Q0059000F5Q001221001000133Q001221001100144Q0011000F001100022Q004C000D000E000F2Q0059000E5Q001221000F00153Q001221001000164Q0011000E0010000200200E000D000E00172Q000A000A000D000100121E000A00183Q00121E000B00023Q00204B000B000B00192Q0059000D5Q001221000E001A3Q001221000F001B4Q000B000D000F4Q000C000B6Q004E000A3Q00022Q005F000A000100022Q00580005000A3Q0012210004001C3Q0026410004006E0001001D0004163Q006E000100204B000A0009001E00063F000C0001000100022Q001D3Q00094Q00638Q000A000A000C0001002032000A0008001F00204B000A000A00202Q0002000C3Q00022Q0059000D5Q001221000E00213Q001221000F00224Q0011000D000F00022Q0059000E5Q001221000F00233Q001221001000244Q0011000E001000022Q004C000C000D000E2Q0059000D5Q001221000E00253Q001221000F00264Q0011000D000F00022Q0059000E5Q001221000F00273Q001221001000284Q0011000E00100002002032000F000200290012210010002A3Q00203200110002002B0012210012002C3Q00203200130002002D0012210014002E4Q0033000E000E00142Q004C000C000D000E2Q000A000A000C00010004163Q001C2Q01002641000400C70001002F0004163Q00C700012Q0002000A3Q00022Q0059000B5Q001221000C00303Q001221000D00314Q0011000B000D000200204B000C000700322Q0002000E3Q00022Q0059000F5Q001221001000333Q001221001100344Q0011000F001100022Q005900105Q001221001100353Q001221001200364Q00110010001200022Q004C000E000F00102Q0059000F5Q001221001000373Q001221001100384Q0011000F001100022Q005900105Q001221001100393Q0012210012003A4Q00110010001200022Q004C000E000F00102Q0011000C000E00022Q004C000A000B000C2Q0059000B5Q001221000C003B3Q001221000D003C4Q0011000B000D000200204B000C000700322Q0002000E3Q00022Q0059000F5Q0012210010003D3Q0012210011003E4Q0011000F001100022Q005900105Q0012210011003F3Q001221001200404Q00110010001200022Q004C000E000F00102Q0059000F5Q001221001000413Q001221001100424Q0011000F001100022Q005900105Q001221001100433Q001221001200444Q00110010001200022Q004C000E000F00102Q0011000C000E00022Q004C000A000B000C2Q00580008000A3Q002032000A0008004500204B000A000A00462Q0059000C5Q001221000D00473Q001221000E00484Q0011000C000E00022Q0002000D3Q00032Q0059000E5Q001221000F00493Q0012210010004A4Q0011000E001000022Q0059000F5Q0012210010004B3Q0012210011004C4Q0011000F001100022Q004C000D000E000F2Q0059000E5Q001221000F004D3Q0012210010004E4Q0011000E001000022Q0059000F5Q0012210010004F3Q001221001100504Q0011000F001100022Q004C000D000E000F2Q0059000E5Q001221000F00513Q001221001000524Q0011000E0010000200200E000D000E00532Q0011000A000D00022Q00580009000A3Q0012210004001D3Q002641000400160001001C0004163Q00160001001221000A00073Q002641000A00162Q0100070004163Q00162Q0100121E000B00183Q00121E000C00023Q00204B000C000C00192Q0059000E5Q001221000F00543Q001221001000554Q000B000E00104Q000C000C6Q004E000B3Q00022Q005F000B000100022Q00580006000B3Q00204B000B000500562Q0002000D3Q00072Q0059000E5Q001221000F00573Q001221001000584Q0011000E001000022Q0059000F5Q001221001000593Q0012210011005A4Q0011000F001100022Q004C000D000E000F2Q0059000E5Q001221000F005B3Q0012210010005C4Q0011000E001000022Q0059000F5Q0012210010005D3Q0012210011005E4Q0011000F001100022Q004C000D000E000F2Q0059000E5Q001221000F005F3Q001221001000604Q0011000E0010000200200E000D000E00612Q0059000E5Q001221000F00623Q001221001000634Q0011000E0010000200121E000F00643Q002032000F000F0065001221001000663Q001221001100674Q0011000F001100022Q004C000D000E000F2Q0059000E5Q001221000F00683Q001221001000694Q0011000E0010000200200E000D000E006A2Q0059000E5Q001221000F006B3Q0012210010006C4Q0011000E001000022Q0059000F5Q0012210010006D3Q0012210011006E4Q0011000F001100022Q004C000D000E000F2Q0059000E5Q001221000F006F3Q001221001000704Q0011000E0010000200121E000F00713Q002032000F000F0072001221001000073Q001221001100073Q001221001200074Q0011000F001200022Q004C000D000E000F2Q0011000B000D00022Q00580007000B3Q001221000A001C3Q002641000A00CA0001001C0004163Q00CA00010012210004002F3Q0004163Q001600010004163Q00CA00010004163Q001600012Q005300045Q0004163Q00462Q0100121E000400023Q00204B0004000400032Q005900065Q001221000700733Q001221000800744Q000B000600084Q004E00043Q000200204B00040004000A2Q005900065Q001221000700753Q001221000800764Q00110006000800022Q000200073Q00032Q005900085Q001221000900773Q001221000A00784Q00110008000A00022Q005900095Q001221000A00793Q001221000B007A4Q00110009000B00022Q004C0007000800092Q005900085Q0012210009007B3Q001221000A007C4Q00110008000A000200200E00070008007D2Q005900085Q0012210009007E3Q001221000A007F4Q00110008000A000200200E0007000800172Q000A00040007000100121E000400804Q005900055Q001221000600813Q001221000700824Q000B000500074Q003500043Q00012Q00143Q00014Q005300015Q0004163Q00492Q0100203200013Q001C2Q00143Q00013Q00023Q00033Q00028Q0003063Q0069706169727303063Q0055736572496400173Q0012213Q00013Q0026413Q0001000100010004163Q00010001001221000100013Q00264100010004000100010004163Q0004000100121E000200024Q005900036Q00430002000200040004163Q001000012Q0059000700013Q00203200070007000300060500070010000100060004163Q001000012Q0020000700014Q005E000700023Q00062Q0002000A000100020004163Q000A00012Q002000026Q005E000200023Q0004163Q000400010004163Q000100012Q00143Q00017Q00113Q0003053Q0056616C7565028Q0003043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203093Q00436861726163746572030E3Q00436861726163746572412Q64656403043Q0057616974026Q00F03F026Q000840026Q001040027Q004003043Q007461736B03053Q00737061776E030F3Q004261636B67726F756E64436F6C6F7203083Q00526564436F6C6F72030A3Q00426C61636B436F6C6F7200534Q00597Q0020325Q000100065C3Q004F00013Q0004163Q004F00010012213Q00024Q0036000100053Q0026413Q0013000100020004163Q0013000100121E000600033Q00203200060006000400203200010006000500203200060001000600064F00020012000100060004163Q0012000100203200060001000700204B0006000600082Q00390006000200022Q0058000200063Q0012213Q00093Q0026413Q00230001000A0004163Q00230001001221000600023Q0026410006001A000100090004163Q001A00010012210006000B3Q0004163Q0023000100264100060016000100020004163Q001600012Q0036000500053Q00063F00053Q000100032Q00638Q001D3Q00034Q001D3Q00043Q001221000600093Q0004163Q001600010026413Q0033000100090004163Q00330001001221000600023Q0026410006002E000100020004163Q002E00012Q0036000300033Q00063F00030001000100032Q001D3Q00014Q00633Q00014Q001D3Q00023Q001221000600093Q00264100060026000100090004163Q002600010012213Q000C3Q0004163Q003300010004163Q002600010026413Q003D0001000B0004163Q003D000100121E0006000D3Q00203200060006000E2Q0058000700054Q001F0006000200012Q005900065Q00121E000700103Q0010190006000F00070004163Q004D00010026413Q00060001000C0004163Q00060001001221000600023Q00264100060044000100090004163Q004400010012213Q000A3Q0004163Q0006000100264100060040000100020004163Q004000012Q0036000400043Q00063F00040002000100022Q001D3Q00014Q00633Q00013Q001221000600093Q0004163Q004000010004163Q000600012Q00537Q0004163Q005200012Q00597Q00121E000100113Q0010193Q000F00012Q00143Q00013Q00033Q00063Q0003053Q0056616C7565028Q00026Q00F03F03043Q007461736B03043Q0077616974025Q00249C40001E4Q00597Q0020325Q000100065C3Q001D00013Q0004163Q001D00010012213Q00023Q0026413Q000C000100030004163Q000C000100121E000100043Q002032000100010005001221000200064Q001F0001000200010004165Q0001000E170002000500013Q0004163Q00050001001221000100023Q00264100010016000100020004163Q001600012Q0059000200014Q00310002000100012Q0059000200024Q0031000200010001001221000100033Q0026410001000F000100030004163Q000F00010012213Q00033Q0004163Q000500010004163Q000F00010004163Q000500010004165Q00012Q00143Q00017Q000E3Q00028Q00026Q00F03F030C3Q0057616974466F724368696C6403083Q00A9F13156E8A688FB03063Q00C7EB90523D98030E3Q0046696E6446697273744368696C64030B3Q003704B63F021FB76B2211BE03043Q004B6776D903083Q00EF417D15B711CE5003063Q007EA7341074D903093Q004571756970542Q6F6C03043Q007761726E03273Q00F83C2F94B110F2880B2787F40DF3C722608EBB0DBCCE21358EB059F5C66E0281B712ECC92D2BC103073Q009CA84E40E0D47900363Q0012213Q00014Q0036000100033Q000E170002002F00013Q0004163Q002F00012Q0036000300033Q000E1700010017000100010004163Q001700012Q005900045Q00204B0004000400032Q0059000600013Q001221000700043Q001221000800054Q000B000600084Q004E00043Q00022Q0058000200043Q00204B0004000200062Q0059000600013Q001221000700073Q001221000800084Q000B000600084Q004E00043Q00022Q0058000300043Q001221000100023Q00264100010005000100020004163Q0005000100065C0003002600013Q0004163Q002600012Q0059000400023Q00204B0004000400032Q0059000600013Q001221000700093Q0012210008000A4Q000B000600084Q004E00043Q000200204B00040004000B2Q0058000600034Q000A0004000600010004163Q0035000100121E0004000C4Q0059000500013Q0012210006000D3Q0012210007000E4Q000B000500074Q003500043Q00010004163Q003500010004163Q000500010004163Q003500010026413Q0002000100010004163Q00020001001221000100014Q0036000200023Q0012213Q00023Q0004163Q000200012Q00143Q00017Q000E3Q00028Q00026Q00F03F03093Q00776F726B7370616365030E3Q0046696E6446697273744368696C6403043Q004E616D65030B3Q0037FCAADA02E7AB8E22E9A203043Q00AE678EC5030B3Q006D7573636C654576656E74030A3Q0046697265536572766572030A3Q00463A502C2057F6732F5803073Q009836483F58453E03043Q007761726E032A3Q00E4D6E148D1CDE01CF1C3E91CDBC6E459D7D0AE52DBD0AE5ADBD1E05894CDE01CE3CBFC57C7D4EF5FD18503043Q003CB4A48E00343Q0012213Q00014Q0036000100023Q0026413Q002D000100020004163Q002D000100264100010004000100010004163Q0004000100121E000300033Q00204B0003000300042Q005900055Q0020320005000500052Q001100030005000200064200020018000100030004163Q0018000100121E000300034Q005900045Q0020320004000400052Q004900030003000400204B0003000300042Q0059000500013Q001221000600063Q001221000700074Q000B000500074Q004E00033Q00022Q0058000200033Q00065C0002002400013Q0004163Q002400012Q005900035Q00203200030003000800204B0003000300092Q0059000500013Q0012210006000A3Q0012210007000B4Q00110005000700022Q0058000600024Q000A0003000600010004163Q0033000100121E0003000C4Q0059000400013Q0012210005000D3Q0012210006000E4Q000B000400064Q003500033Q00010004163Q003300010004163Q000400010004163Q00330001000E170001000200013Q0004163Q00020001001221000100014Q0036000200023Q0012213Q00023Q0004163Q000200012Q00143Q00017Q00",v17(),...);
