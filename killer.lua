local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=2 -1 ;local v30;v27=v12(v11(v27,5),v7("\155\74","\78\181\100\211\69"),function(v42) if (v9(v42,2)==81) then local v102=0;while true do if (v102==0) then v30=v8(v11(v42,1,1));return "";end end else local v103=0;local v104;while true do if (v103==0) then v104=v10(v8(v42,16));if v30 then local v128=0;local v129;while true do if (v128==0) then v129=v13(v104,v30);v30=nil;v128=1;end if (1==v128) then return v129;end end else return v104;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v105=(v43/((5 -3)^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v105-(v105%1) ;else local v106=2^(v44-1) ;return (((v43%(v106 + v106))>=v106) and 1) or 0 ;end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + (1 -0) ;return v46;end local function v33() local v47=0;local v48;local v49;while true do if (v47==0) then v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v47=1;end if (1==v47) then return (v49 * 256) + v48 ;end end end local function v34() local v50=0;local v51;local v52;local v53;local v54;while true do if (v50==1) then return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end if (v50==0) then v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;v50=1;end end end local function v35() local v55=0;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v55==2) then v60=v31(v57,21,31);v61=((v31(v57,32)==1) and  -1) or 1 ;v55=3;end if (v55==1) then v58=1;v59=(v31(v57,1,20) * (2^32)) + v56 ;v55=2;end if (0==v55) then v56=v34();v57=v34();v55=1;end if (v55==3) then if (v60==0) then if (v59==0) then return v61 * 0 ;else local v130=0;while true do if (v130==0) then v60=1;v58=0;break;end end end elseif (v60==2047) then return ((v59==0) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-1023 ) * (v58 + (v59/(2^52))) ;end end end local function v36(v62) local v63;if  not v62 then local v107=0;while true do if (v107==0) then v62=v34();if (v62==0) then return "";end break;end end end v63=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;local v64={};for v78=1, #v63 do v64[v78]=v10(v9(v11(v63,v78,v78)));end return v14(v64);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v65={};local v66={};local v67={};local v68={v65,v66,nil,v67};local v69=v34();local v70={};for v80=1,v69 do local v81=0;local v82;local v83;while true do if (v81==1) then if (v82==1) then v83=v32()~=0 ;elseif (v82==2) then v83=v35();elseif (v82==3) then v83=v36();end v70[v80]=v83;break;end if (v81==0) then v82=v32();v83=nil;v81=1;end end end v68[3]=v32();for v84=1,v34() do local v85=v32();if (v31(v85,1,2 -1 )==(619 -(555 + 64))) then local v110=v31(v85,2,934 -(857 + 74) );local v111=v31(v85,4,6);local v112={v33(),v33(),nil,nil};if (v110==0) then local v119=0;while true do if (v119==0) then v112[3]=v33();v112[4]=v33();break;end end elseif (v110==1) then v112[3]=v34();elseif (v110==2) then v112[3]=v34() -(2^16) ;elseif (v110==3) then v112[3]=v34() -(2^16) ;v112[4]=v33();end if (v31(v111,569 -(367 + 201) ,1)==1) then v112[2]=v70[v112[2]];end if (v31(v111,929 -(214 + 713) ,2)==1) then v112[3]=v70[v112[3]];end if (v31(v111,1 + 2 ,3)==1) then v112[1 + 3 ]=v70[v112[4]];end v65[v84]=v112;end end for v86=1,v34() do v66[v86-1 ]=v39();end return v68;end local function v40(v72,v73,v74) local v75=v72[1];local v76=v72[2];local v77=v72[3];return function(...) local v88=v75;local v89=v76;local v90=v77;local v91=v38;local v92=1;local v93= -1;local v94={};local v95={...};local v96=v20("#",...) -1 ;local v97={};local v98={};for v108=0,v96 do if (v108>=v90) then v94[v108-v90 ]=v95[v108 + 1 ];else v98[v108]=v95[v108 + 1 ];end end local v99=(v96-v90) + 1 ;local v100;local v101;while true do local v109=0;while true do if (v109==1) then if (v101<=(928 -(282 + 595))) then if (v101<=25) then if (v101<=12) then if (v101<=5) then if (v101<=2) then if (v101<=0) then v98[v100[2]]=v98[v100[3]] + v100[4] ;elseif (v101==1) then v98[v100[2]]=v98[v100[1640 -(1523 + 114) ]];else do return;end end elseif (v101<=3) then v98[v100[2]]=v98[v100[3]][v98[v100[4]]];elseif (v101==4) then local v179=0;local v180;while true do if (v179==0) then v180=v100[2];v98[v180](v98[v180 + 1 ]);break;end end else local v181=v100[2];local v182=v98[v181 + 2 ];local v183=v98[v181] + v182 ;v98[v181]=v183;if (v182>0) then if (v183<=v98[v181 + 1 ]) then v92=v100[3];v98[v181 + 3 ]=v183;end elseif (v183>=v98[v181 + 1 + 0 ]) then local v422=0;while true do if (v422==0) then v92=v100[3];v98[v181 + 3 ]=v183;break;end end end end elseif (v101<=8) then if (v101<=6) then local v140=0;local v141;local v142;while true do if (v140==1) then for v353=v141 + 1 ,v93 do v15(v142,v98[v353]);end break;end if (0==v140) then v141=v100[2];v142=v98[v141];v140=1;end end elseif (v101>7) then v98[v100[2]]();else local v185=v100[2 -0 ];do return v98[v185](v21(v98,v185 + 1 ,v93));end end elseif (v101<=10) then if (v101==9) then local v186=0;local v187;local v188;local v189;local v190;while true do if (2==v186) then for v423=v187,v93 do v190=v190 + 1 ;v98[v423]=v188[v190];end break;end if (1==v186) then v93=(v189 + v187) -1 ;v190=0;v186=2;end if (v186==0) then v187=v100[2];v188,v189=v91(v98[v187](v21(v98,v187 + 1 ,v93)));v186=1;end end elseif  not v98[v100[2]] then v92=v92 + 1 ;else v92=v100[3];end elseif (v101==11) then local v191=0;local v192;while true do if (v191==0) then v192=v100[2];v98[v192]=v98[v192](v21(v98,v192 + 1 ,v100[3]));break;end end elseif (v100[2]<=v98[v100[1069 -(68 + 997) ]]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v101<=18) then if (v101<=(1285 -(226 + 1044))) then if (v101<=13) then local v143=0;local v144;while true do if (v143==0) then v144=v100[2];v98[v144](v21(v98,v144 + 1 ,v100[3]));break;end end elseif (v101==(60 -46)) then local v193=v100[2];do return v98[v193](v21(v98,v193 + 1 ,v100[3]));end else local v194=v100[2];v98[v194]=v98[v194](v21(v98,v194 + 1 ,v100[3]));end elseif (v101<=(133 -(32 + 85))) then local v145=v100[2];local v146={v98[v145](v98[v145 + 1 ])};local v147=0;for v171=v145,v100[4] do local v172=0;while true do if (v172==0) then v147=v147 + 1 ;v98[v171]=v146[v147];break;end end end elseif (v101==17) then v98[v100[2]]=v98[v100[3]] * v98[v100[4 + 0 ]] ;else local v197=0;local v198;local v199;local v200;while true do if (v197==1) then v200=0 + 0 ;for v426=v198,v100[4] do v200=v200 + 1 ;v98[v426]=v199[v200];end break;end if (v197==0) then v198=v100[2];v199={v98[v198](v21(v98,v198 + 1 ,v93))};v197=1;end end end elseif (v101<=21) then if (v101<=(976 -(892 + 65))) then local v148=0;local v149;while true do if (v148==0) then v149=v100[2];do return v98[v149](v21(v98,v149 + 1 ,v100[3]));end break;end end elseif (v101>20) then v98[v100[2]]();else local v201=0;local v202;local v203;local v204;while true do if (0==v201) then v202=v100[4 -2 ];v203=v98[v202 + 2 ];v201=1;end if (v201==2) then if (v203>(0 -0)) then if (v204<=v98[v202 + (1 -0) ]) then local v479=0;while true do if (v479==0) then v92=v100[3];v98[v202 + 3 ]=v204;break;end end end elseif (v204>=v98[v202 + 1 ]) then v92=v100[353 -(87 + 263) ];v98[v202 + 3 ]=v204;end break;end if (v201==1) then v204=v98[v202] + v203 ;v98[v202]=v204;v201=2;end end end elseif (v101<=23) then if (v101==22) then v98[v100[2]]= #v98[v100[3]];else local v206=v100[182 -(67 + 113) ];local v207={};for v333=1, #v97 do local v334=v97[v333];for v358=0, #v334 do local v359=v334[v358];local v360=v359[1];local v361=v359[2];if ((v360==v98) and (v361>=v206)) then local v429=0;while true do if (0==v429) then v207[v361]=v360[v361];v359[1]=v207;break;end end end end end end elseif (v101==(18 + 6)) then v98[v100[2]]=v98[v100[3]]%v100[9 -5 ] ;else v92=v100[3];end elseif (v101<=38) then if (v101<=31) then if (v101<=28) then if (v101<=26) then do return;end elseif (v101>27) then local v210=v100[2];v98[v210]=v98[v210](v98[v210 + 1 ]);elseif (v98[v100[2 + 0 ]]==v100[4]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v101<=29) then for v173=v100[7 -5 ],v100[3] do v98[v173]=nil;end elseif (v101>30) then v98[v100[2]]=v100[3];else local v214=0;local v215;local v216;while true do if (v214==0) then v215=v100[2];v216=v98[v100[3]];v214=1;end if (v214==1) then v98[v215 + 1 ]=v216;v98[v215]=v216[v100[4]];break;end end end elseif (v101<=34) then if (v101<=32) then local v150=0;local v151;local v152;local v153;local v154;while true do if (v150==1) then v93=(v153 + v151) -1 ;v154=0;v150=2;end if (v150==2) then for v363=v151,v93 do local v364=0;while true do if (v364==0) then v154=v154 + 1 ;v98[v363]=v152[v154];break;end end end break;end if (v150==0) then v151=v100[2];v152,v153=v91(v98[v151](v21(v98,v151 + 1 ,v100[3])));v150=1;end end elseif (v101>33) then local v217=0;local v218;local v219;while true do if (1==v217) then for v430=v218 + 1 ,v100[956 -(802 + 150) ] do v219=v219   .. v98[v430] ;end v98[v100[2]]=v219;break;end if (v217==0) then v218=v100[3];v219=v98[v218];v217=1;end end else local v220=0;local v221;while true do if (v220==0) then v221=v100[2];do return v21(v98,v221,v93);end break;end end end elseif (v101<=36) then if (v101>35) then v98[v100[2]]=v98[v100[3]][v98[v100[4]]];else v98[v100[5 -3 ]]=v98[v100[3]][v100[4]];end elseif (v101==37) then do return v98[v100[2]]();end else local v226=0;local v227;local v228;while true do if (v226==1) then v98[v227 + 1 ]=v228;v98[v227]=v228[v100[4]];break;end if (v226==0) then v227=v100[2];v228=v98[v100[5 -2 ]];v226=1;end end end elseif (v101<=44) then if (v101<=41) then if (v101<=(29 + 10)) then if (v98[v100[2]]<v100[4]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v101==40) then v92=v100[3];else local v231=0;local v232;while true do if (v231==0) then v232=v100[2];v98[v232](v98[v232 + 1 ]);break;end end end elseif (v101<=(1039 -(915 + 82))) then if (v98[v100[2]]<v98[v100[4]]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v101>43) then v73[v100[8 -5 ]]=v98[v100[2]];else local v236=0;local v237;local v238;local v239;while true do if (1==v236) then v239=v98[v237 + 2 ];if (v239>0) then if (v238>v98[v237 + 1 ]) then v92=v100[3];else v98[v237 + 3 ]=v238;end elseif (v238<v98[v237 + 1 + 0 ]) then v92=v100[3];else v98[v237 + 3 ]=v238;end break;end if (v236==0) then v237=v100[2];v238=v98[v237];v236=1;end end end elseif (v101<=47) then if (v101<=45) then local v155=v100[2];v98[v155](v21(v98,v155 + 1 ,v93));elseif (v101>(60 -14)) then local v240=0;local v241;local v242;local v243;local v244;while true do if (v240==1) then v93=(v243 + v241) -(2 -1) ;v244=0;v240=2;end if (v240==0) then v241=v100[1189 -(1069 + 118) ];v242,v243=v91(v98[v241](v98[v241 + 1 ]));v240=1;end if (v240==2) then for v431=v241,v93 do v244=v244 + 1 ;v98[v431]=v242[v244];end break;end end else local v245=v100[2];local v246=v100[4];local v247=v245 + 2 ;local v248={v98[v245](v98[v245 + 1 ],v98[v247])};for v336=1,v246 do v98[v247 + v336 ]=v248[v336];end local v249=v248[1 -0 ];if v249 then local v365=0;while true do if (v365==0) then v98[v247]=v249;v92=v100[3];break;end end else v92=v92 + 1 ;end end elseif (v101<=49) then if (v101>48) then if (v98[v100[2]]<=v100[4]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v100[1 + 1 ]<=v98[v100[4]]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v101==50) then if (v98[v100[2]]<=v100[6 -2 ]) then v92=v92 + 1 ;else v92=v100[3];end else v98[v100[2]]=v100[3]~=0 ;end elseif (v101<=77) then if (v101<=64) then if (v101<=57) then if (v101<=54) then if (v101<=52) then v98[v100[2]]=v100[3];elseif (v101>(53 + 0)) then if (v98[v100[2]]<v98[v100[4]]) then v92=v92 + (792 -(368 + 423)) ;else v92=v100[3];end else v98[v100[2]]=v98[v100[3]];end elseif (v101<=55) then if (v98[v100[6 -4 ]]~=v98[v100[4]]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v101>56) then v98[v100[2]]=v98[v100[3]] + v100[4] ;else v98[v100[2]][v100[3]]=v98[v100[4]];end elseif (v101<=60) then if (v101<=58) then local v158=0;local v159;while true do if (v158==0) then v159=v100[2];v98[v159]=v98[v159](v21(v98,v159 + 1 ,v93));break;end end elseif (v101==59) then local v257=0;local v258;while true do if (v257==0) then v258=v100[2];v98[v258](v21(v98,v258 + 1 ,v93));break;end end else local v259=v100[2];local v260=v100[22 -(10 + 8) ];local v261=v259 + 2 ;local v262={v98[v259](v98[v259 + 1 ],v98[v261])};for v341=1,v260 do v98[v261 + v341 ]=v262[v341];end local v263=v262[3 -2 ];if v263 then v98[v261]=v263;v92=v100[3];else v92=v92 + 1 ;end end elseif (v101<=62) then if (v101>(503 -(416 + 26))) then local v264=v100[2];do return v21(v98,v264,v93);end else v98[v100[2]]=v74[v100[3]];end elseif (v101>63) then v98[v100[6 -4 ]]=v73[v100[3]];else v98[v100[2]]=v98[v100[3]][v100[4]];end elseif (v101<=70) then if (v101<=67) then if (v101<=65) then local v160=0;local v161;while true do if (0==v160) then v161=v100[2];v98[v161](v21(v98,v161 + 1 ,v100[3]));break;end end elseif (v101>66) then v98[v100[2]]=v100[2 + 1 ]~=(0 -0) ;else local v272=0;local v273;local v274;while true do if (v272==1) then for v434=v273 + (431 -(44 + 386)) ,v100[1490 -(998 + 488) ] do v274=v274   .. v98[v434] ;end v98[v100[2]]=v274;break;end if (0==v272) then v273=v100[441 -(145 + 293) ];v274=v98[v273];v272=1;end end end elseif (v101<=68) then local v162=v100[2];v98[v162]=v98[v162](v98[v162 + 1 ]);elseif (v101>69) then local v275=0;local v276;local v277;local v278;local v279;while true do if (v275==1) then v93=(v278 + v276) -1 ;v279=0;v275=2;end if (0==v275) then v276=v100[2];v277,v278=v91(v98[v276](v98[v276 + 1 ]));v275=1;end if (v275==2) then for v435=v276,v93 do local v436=0;while true do if (v436==0) then v279=v279 + 1 ;v98[v435]=v277[v279];break;end end end break;end end else local v280=v100[2];local v281={v98[v280](v21(v98,v280 + 1 ,v93))};local v282=0 + 0 ;for v345=v280,v100[4] do local v346=0;while true do if (0==v346) then v282=v282 + 1 + 0 ;v98[v345]=v281[v282];break;end end end end elseif (v101<=73) then if (v101<=71) then for v175=v100[2],v100[3] do v98[v175]=nil;end elseif (v101==72) then if  not v98[v100[2]] then v92=v92 + 1 ;else v92=v100[775 -(201 + 571) ];end elseif v98[v100[2]] then v92=v92 + 1 ;else v92=v100[3];end elseif (v101<=75) then if (v101>74) then if (v98[v100[2]]<v100[4]) then v92=v92 + 1 ;else v92=v100[3];end else local v283=v100[2];local v284=v98[v283];for v347=v283 + 1 ,v93 do v15(v284,v98[v347]);end end elseif (v101>76) then if (v100[2]==v98[v100[4]]) then v92=v92 + 1 ;else v92=v100[3];end else do return v98[v100[2]]();end end elseif (v101<=90) then if (v101<=83) then if (v101<=(1218 -(116 + 1022))) then if (v101<=78) then if v98[v100[2]] then v92=v92 + 1 ;else v92=v100[3];end elseif (v101==79) then local v286=v100[2];local v287,v288=v91(v98[v286](v21(v98,v286 + 1 ,v93)));v93=(v288 + v286) -1 ;local v289=0;for v348=v286,v93 do local v349=0;while true do if (v349==0) then v289=v289 + 1 ;v98[v348]=v287[v289];break;end end end else v98[v100[2]]=v98[v100[12 -9 ]]%v98[v100[3 + 1 ]] ;end elseif (v101<=81) then if (v98[v100[2]]~=v98[v100[4]]) then v92=v92 + 1 ;else v92=v100[10 -7 ];end elseif (v101==82) then v98[v100[2]]=v98[v100[3]]%v98[v100[4]] ;elseif (v100[2]==v98[v100[4]]) then v92=v92 + 1 ;else v92=v100[3];end elseif (v101<=86) then if (v101<=84) then v98[v100[2]]=v74[v100[3]];elseif (v101==85) then local v293=0;local v294;local v295;local v296;local v297;while true do if (2==v293) then for v441=v294,v93 do local v442=0;while true do if (v442==0) then v297=v297 + 1 ;v98[v441]=v295[v297];break;end end end break;end if (v293==1) then v93=(v296 + v294) -1 ;v297=0;v293=2;end if (v293==0) then v294=v100[2];v295,v296=v91(v98[v294](v21(v98,v294 + (3 -2) ,v100[3])));v293=1;end end else v98[v100[861 -(814 + 45) ]]={};end elseif (v101<=88) then if (v101>87) then v73[v100[7 -4 ]]=v98[v100[2]];else local v301=0;local v302;local v303;local v304;while true do if (1==v301) then v304=0;for v443=v302,v100[4] do v304=v304 + 1 ;v98[v443]=v303[v304];end break;end if (v301==0) then v302=v100[2];v303={v98[v302](v98[v302 + 1 ])};v301=1;end end end elseif (v101>89) then local v305=0;local v306;local v307;local v308;while true do if (v305==1) then v308=v98[v306 + 2 ];if (v308>0) then if (v307>v98[v306 + 1 ]) then v92=v100[3];else v98[v306 + 3 ]=v307;end elseif (v307<v98[v306 + 1 ]) then v92=v100[3];else v98[v306 + 3 ]=v307;end break;end if (v305==0) then v306=v100[2];v307=v98[v306];v305=1;end end else v98[v100[2]]=v73[v100[3]];end elseif (v101<=96) then if (v101<=93) then if (v101<=91) then local v166=0;local v167;while true do if (v166==0) then v167=v100[1 + 1 ];v98[v167]=v98[v167](v21(v98,v167 + 1 + 0 ,v93));break;end end elseif (v101>92) then v98[v100[2]]=v98[v100[3]] * v98[v100[4]] ;else v98[v100[2]][v100[3]]=v98[v100[4]];end elseif (v101<=94) then v98[v100[2]]={};elseif (v101==95) then if (v98[v100[887 -(261 + 624) ]]==v100[4]) then v92=v92 + 1 ;else v92=v100[3];end else v98[v100[2]]=v100[3] + v98[v100[4]] ;end elseif (v101<=99) then if (v101<=97) then local v169=0;local v170;while true do if (v169==0) then v170=v100[2];do return v98[v170](v21(v98,v170 + 1 ,v93));end break;end end elseif (v101==98) then local v315=0;local v316;local v317;while true do if (v315==1) then for v446=1, #v97 do local v447=0;local v448;while true do if (v447==0) then v448=v97[v446];for v502=0, #v448 do local v503=0;local v504;local v505;local v506;while true do if (v503==1) then v506=v504[2];if ((v505==v98) and (v506>=v316)) then v317[v506]=v505[v506];v504[1]=v317;end break;end if (v503==0) then v504=v448[v502];v505=v504[1];v503=1;end end end break;end end end break;end if (v315==0) then v316=v100[2];v317={};v315=1;end end else local v318=0;local v319;local v320;local v321;while true do if (1==v318) then v321={};v320=v18({},{[v7("\101\54\194\185\225\124\66","\58\58\105\171\215\133\25")]=function(v449,v450) local v451=v321[v450];return v451[1][v451[2]];end,[v7("\190\125\239\205\37\243\231\133\71\249","\137\225\34\129\168\82\154")]=function(v452,v453,v454) local v455=v321[v453];v455[1][v455[1082 -(1020 + 60) ]]=v454;end});v318=2;end if (2==v318) then for v457=1424 -(630 + 793) ,v100[4] do local v458=0;local v459;while true do if (v458==1) then if (v459[1]==(179 -126)) then v321[v457-1 ]={v98,v459[3]};else v321[v457-1 ]={v73,v459[3]};end v97[ #v97 + 1 ]=v321;break;end if (v458==0) then v92=v92 + 1 ;v459=v88[v92];v458=1;end end end v98[v100[2]]=v40(v319,v320,v74);break;end if (v318==0) then v319=v89[v100[4 -1 ]];v320=nil;v318=1;end end end elseif (v101<=101) then if (v101==(40 + 60)) then v98[v100[2]]=v100[3] + v98[v100[4]] ;else v98[v100[2]]= #v98[v100[9 -6 ]];end elseif (v101==102) then local v324=0;local v325;local v326;local v327;while true do if (v324==2) then for v460=1,v100[4] do v92=v92 + 1 ;local v461=v88[v92];if (v461[1]==53) then v327[v460-1 ]={v98,v461[3]};else v327[v460-(1748 -(760 + 987)) ]={v73,v461[769 -(745 + 21) ]};end v97[ #v97 + 1 ]=v327;end v98[v100[2]]=v40(v325,v326,v74);break;end if (v324==0) then v325=v89[v100[3]];v326=nil;v324=1;end if (v324==1) then v327={};v326=v18({},{[v7("\195\235\128\139\182\53\228","\80\156\180\233\229\210")]=function(v463,v464) local v465=v327[v464];return v465[1][v465[2]];end,[v7("\119\113\51\0\28\65\64\57\0\19","\107\40\46\93\101")]=function(v466,v467,v468) local v469=0;local v470;while true do if (v469==0) then v470=v327[v467];v470[1][v470[2]]=v468;break;end end end});v324=2;end end else v98[v100[2]]=v98[v100[3]]%v100[4] ;end v92=v92 + 1 ;break;end if (v109==0) then v100=v88[v92];v101=v100[1];v109=1;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012543Q00013Q0020235Q0002001254000100013Q002023000100010003001254000200013Q002023000200020004001254000300053Q00060A0003000A000100010004283Q000A0001001254000300063Q002023000400030007001254000500083Q002023000500050009001254000600083Q00202300060006000A00066300073Q000100062Q00353Q00064Q00358Q00353Q00044Q00353Q00014Q00353Q00024Q00353Q00053Q001254000800013Q00202300080008000B0012540009000C3Q001254000A000D3Q000663000B0001000100052Q00353Q00074Q00353Q00094Q00353Q00084Q00353Q000A4Q00353Q000B4Q0001000C000B4Q004C000C00014Q0021000C6Q001A3Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q005600025Q00121F000300014Q001600045Q00121F000500013Q00042B0003002100012Q004000076Q0001000800024Q0040000900014Q0040000A00024Q0040000B00034Q0040000C00044Q0001000D6Q0001000E00063Q00202Q000F000600012Q0020000C000F4Q003A000B3Q00022Q0040000C00034Q0040000D00044Q0001000E00014Q0016000F00014Q0052000F0006000F001064000F0001000F2Q0016001000014Q005200100006001000106400100001001000202Q0010001000012Q0020000D00104Q004F000C6Q003A000A3Q0002002018000A000A00022Q00460009000A4Q002D00073Q00010004140003000500012Q0040000300054Q0001000400024Q0013000300044Q002100036Q001A3Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006635Q000100012Q00598Q0040000100014Q0040000200024Q0040000300024Q005600046Q0040000500034Q000100066Q0047000700074Q0020000500074Q004A00043Q000100202300040004000100121F000500024Q000F00030005000200121F000400034Q0020000200044Q003A00013Q000200265F00010018000100040004283Q001800012Q000100016Q005600026Q0013000100024Q002100015Q0004283Q001B00012Q0040000100044Q004C000100014Q002100016Q001A3Q00013Q00013Q00183Q0003043Q0067616D65030A3Q004765745365727669636503073Q00E94E5CA0E2A9CA03063Q00DBB9223DD987030F3Q006A772Q72E3C14C664D72E1D857717B03063Q00AE3E121E1793030B3Q009EFD3EDB2BAB21D1BFEA2F03083Q00A7D6894AAB78CE53030A3Q00B9E53C6EFDB59DF9315803063Q00C7EB90523D98030B3Q004C6F63616C506C61796572022Q00E0E281FEEA41028Q0003053Q004A6F62496403053Q003703B7280F03043Q004B6776D903043Q007461736B03053Q00737061776E03073Q00AF0A4D43C354E903073Q0080EC653F268421030F3Q00526F626C6F7850726F6D7074477569030A3Q004368696C64412Q64656403073Q00436F2Q6E656374026Q00F03F01813Q0006493Q007F00013Q0004283Q007F0001001254000100013Q00201E0001000100022Q004000035Q00121F000400033Q00121F000500044Q0020000300054Q003A00013Q0002001254000200013Q00201E0002000200022Q004000045Q00121F000500053Q00121F000600064Q0020000400064Q003A00023Q0002001254000300013Q00201E0003000300022Q004000055Q00121F000600073Q00121F000700084Q0020000500074Q003A00033Q0002001254000400013Q00201E0004000400022Q004000065Q00121F000700093Q00121F0008000A4Q0020000600084Q003A00043Q000200202300050001000B00121F0006000C3Q00121F0007000D3Q001254000800013Q00202300080008000E2Q004000095Q00121F000A000F3Q00121F000B00104Q000F0009000B00022Q0043000A5Q000663000B3Q000100042Q00353Q00054Q00598Q00353Q00094Q00353Q000A3Q000663000C0001000100032Q00353Q00054Q00598Q00353Q00013Q000663000D0002000100022Q00598Q00353Q00053Q001254000E00113Q002023000E000E0012000663000F0003000100042Q00353Q000B4Q00353Q00054Q00598Q00353Q00044Q0004000E00020001000663000E0004000100062Q00353Q00034Q00598Q00353Q00064Q00353Q00084Q00353Q00024Q00353Q00053Q000663000F0005000100052Q00353Q00054Q00598Q00353Q00074Q00353Q000E4Q00353Q000C3Q001254001000113Q00202300100010001200066300110006000100022Q00353Q00014Q00353Q000E4Q0004001000020001001254001000113Q00202300100010001200066300110007000100032Q00353Q00054Q00598Q00353Q000E4Q0004001000020001001254001000113Q00202300100010001200066300110008000100032Q00353Q000A4Q00353Q000B4Q00353Q000E4Q000400100002000100066300100009000100042Q00353Q00024Q00353Q00064Q00353Q00054Q00597Q001254001100013Q00201E0011001100022Q004000135Q00121F001400133Q00121F001500144Q0020001300154Q003A00113Q000200202300110011001500202300110011001600201E0011001100170006630013000A000100022Q00598Q00353Q00104Q000D001100130001001254001100113Q0020230011001100120006630012000B000100022Q00353Q000C4Q00353Q00044Q0004001100020001001254001100113Q0020230011001100120006630012000C000100012Q00353Q000E4Q00040011000200012Q00010011000F4Q00080011000100012Q001700015Q0004283Q0080000100202300013Q00182Q001A3Q00013Q000D3Q00083Q00028Q00026Q00F03F030E3Q0046696E6446697273744368696C6403083Q00E555731FA91FC45F03063Q007EA7341074D903093Q0043686172616374657203083Q0048756D616E6F696403093Q004571756970542Q6F6C00323Q00121F3Q00014Q0047000100023Q00265F0001002B000100020004283Q002B000100265F00010004000100010004283Q000400012Q004000035Q00201E0003000300032Q0040000500013Q00121F000600043Q00121F000700054Q0020000500074Q003A00033Q00022Q0001000200033Q0006490002003100013Q0004283Q0031000100201E0003000200032Q0040000500024Q000F0003000500020006490003003100013Q0004283Q0031000100121F000400014Q0047000500053Q000E4D00010017000100040004283Q0017000100121F000500013Q00265F0005001A000100010004283Q001A00012Q004000065Q00202300060006000600202300060006000700201E0006000600082Q0001000800034Q000D0006000800012Q0043000600014Q0058000600033Q0004283Q003100010004283Q001A00010004283Q003100010004283Q001700010004283Q003100010004283Q000400010004283Q0031000100265F00010002000100010004283Q0002000100121F000100014Q0047000200023Q00121F000100023Q0004283Q000200012Q001A3Q00017Q000F3Q0003093Q00436861726163746572030E3Q0046696E6446697273744368696C6403093Q00FA2Q2788A059DDDA2303073Q009CA84E40E0D479028Q0003093Q0035E7A2C613AE84DC0A03043Q00AE678EC503053Q007061697273030A3Q00476574506C617965727303103Q007E3D52392B51F1521A5037316EF9443C03073Q009836483F58453E026Q00F03F03063Q00434672616D652Q033Q006E657703103Q0048756D616E6F6964522Q6F7450617274004D4Q00407Q0020235Q00010006493Q004C00013Q0004283Q004C00012Q00407Q0020235Q000100201E5Q00022Q0040000200013Q00121F000300033Q00121F000400044Q0020000200044Q003A5Q00020006493Q004C00013Q0004283Q004C000100121F3Q00054Q0047000100013Q000E4D0005001000013Q0004283Q001000012Q004000025Q0020230002000200012Q0040000300013Q00121F000400063Q00121F000500074Q000F0003000500022Q0024000100020003001254000200084Q0040000300023Q00201E0003000300092Q0046000300044Q004500023Q00040004283Q004800012Q004000075Q00065100060048000100070004283Q004800010020230007000600010006490007004800013Q0004283Q0048000100202300070006000100201E0007000700022Q0040000900013Q00121F000A000A3Q00121F000B000B4Q00200009000B4Q003A00073Q00020006490007004800013Q0004283Q0048000100121F000700054Q0047000800093Q00265F000800420001000C0004283Q0042000100265F00080032000100050004283Q00320001002023000A0001000D001254000B000D3Q002023000B000B000E00121F000C00053Q00121F000D000C3Q00121F000E00054Q000F000B000E00022Q00110009000A000B002023000A00060001002023000A000A000F001038000A000D00090004283Q004800010004283Q003200010004283Q0048000100265F00080030000100050004283Q0030000100121F000800054Q0047000900093Q00121F0008000C3Q0004283Q0030000100062E0002001F000100020004283Q001F00010004283Q004C00010004283Q001000012Q001A3Q00017Q000C3Q0003093Q00436861726163746572030E3Q0046696E6446697273744368696C6403103Q00FCD1E35DDACBE758E6CBE148E4C5FC4803043Q003CB4A48E03103Q00704B082829E21B5C6C0A2633DD132Q4A03073Q0072383E6549478D028Q00026Q00F03F03063Q00434672616D652Q033Q006E6577026Q0010C003103Q0048756D616E6F6964522Q6F745061727401343Q0006493Q003300013Q0004283Q0033000100202300013Q00010006490001003300013Q0004283Q0033000100202300013Q000100201E0001000100022Q004000035Q00121F000400033Q00121F000500044Q0020000300054Q003A00013Q00020006490001003300013Q0004283Q003300012Q0040000100013Q0020230001000100010006490001003300013Q0004283Q003300012Q0040000100013Q00202300010001000100201E0001000100022Q004000035Q00121F000400053Q00121F000500064Q0020000300054Q003A00013Q00020006490001003300013Q0004283Q0033000100121F000100074Q0047000200043Q000E4D0008002A000100010004283Q002A0001002023000500030009001254000600093Q00202300060006000A00121F000700073Q00121F000800073Q00121F0009000B4Q000F0006000900022Q00110004000500060010380002000900040004283Q0033000100265F0001001E000100070004283Q001E000100202300053Q000100202300020005000C2Q0040000500013Q00202300050005000100202300030005000C00121F000100083Q0004283Q001E00012Q001A3Q00017Q00103Q00028Q00026Q00F03F030E3Q0046696E6446697273744368696C64030B3Q00B5FCC8C7B4ECFED2BDE7CF03043Q00A4D889BB030A3Q004669726553657276657203053Q00C2F33FB1AE03073Q006BB28651D2C69E03093Q002A0785CEBE100F8CC203053Q00CA586EE2A603053Q00D31A8CF4C203053Q00AAA36FE29703083Q001D35B42C6636271503073Q00497150D2582E57030D3Q0052656E6465725374652Q70656403043Q0057616974003D3Q00121F3Q00014Q0047000100023Q00265F3Q0035000100020004283Q0035000100265F00010011000100010004283Q001100012Q004000036Q00080003000100012Q0040000300013Q00201E0003000300032Q0040000500023Q00121F000600043Q00121F000700054Q0020000500074Q003A00033Q00022Q0001000200033Q00121F000100023Q00265F00010004000100020004283Q000400010006490002002E00013Q0004283Q002E000100121F000300013Q00265F00030016000100010004283Q0016000100201E0004000200062Q0040000600023Q00121F000700073Q00121F000800084Q000F0006000800022Q0040000700023Q00121F000800093Q00121F0009000A4Q0020000700094Q002D00043Q000100201E0004000200062Q0040000600023Q00121F0007000B3Q00121F0008000C4Q000F0006000800022Q0040000700023Q00121F0008000D3Q00121F0009000E4Q0020000700094Q002D00043Q00010004283Q002E00010004283Q001600012Q0040000300033Q00202300030003000F00201E0003000300102Q00040003000200010004285Q00010004283Q000400010004285Q000100265F3Q0002000100010004283Q0002000100121F000100014Q0047000200023Q00121F3Q00023Q0004283Q000200010004285Q00012Q001A3Q00017Q00083Q00028Q0003053Q007063612Q6C03043Q006461746103063Q0069706169727303073Q00706C6179696E67030A3Q006D6178506C617965727303023Q00696403173Q0054656C65706F7274546F506C616365496E7374616E6365002F3Q00121F3Q00014Q0047000100023Q000E4D0001000200013Q0004283Q00020001001254000300023Q00066300043Q000100032Q00598Q00593Q00014Q00593Q00024Q00570003000200042Q0001000200044Q0001000100033Q0006490001002E00013Q0004283Q002E00010006490002002E00013Q0004283Q002E00010020230003000200030006490003002E00013Q0004283Q002E0001001254000300043Q0020230004000200032Q00570003000200050004283Q002A00010020230008000700050020230009000700060006360008002A000100090004283Q002A00010020230008000700072Q0040000900033Q0006510008002A000100090004283Q002A000100121F000800013Q00265F00080020000100010004283Q002000012Q0040000900043Q00201E0009000900082Q0040000B00023Q002023000C000700072Q0040000D00054Q000D0009000D00012Q001A3Q00013Q0004283Q0020000100062E00030017000100020004283Q001700010004283Q002E00010004283Q000200012Q001A3Q00013Q00013Q00073Q00030A3Q004A534F4E4465636F646503043Q0067616D6503073Q00482Q747047657403223Q008938D902F4DB638215E68C29DE5CF58E2EC11DFFCF2FC21FA8977D8215E68C29DE5D03053Q0087E14CAD7203273Q0055FEBDA2BAB8B509A288A5AEB1AE19B2ABBFBEA98808E9BDA2F19CB419ABB4B9A1B4B347BCE8E003073Q00C77A8DD8D0CCDD00124Q00407Q00201E5Q0001001254000200023Q00201E0002000200032Q0040000400013Q00121F000500043Q00121F000600054Q000F0004000600022Q0040000500024Q0040000600013Q00121F000700063Q00121F000800074Q000F0006000800022Q00220004000400062Q0020000200044Q00618Q00218Q001A3Q00017Q00023Q00030E3Q00436861726163746572412Q64656403073Q00436F2Q6E656374000A4Q00407Q0020235Q000100201E5Q000200066300023Q000100042Q00593Q00014Q00593Q00024Q00593Q00034Q00593Q00044Q000D3Q000200012Q001A3Q00013Q00013Q00073Q00028Q00026Q00F03F030C3Q0057616974466F724368696C6403083Q0085C81DF176F9A4D903063Q0096CDBD70901803043Q004469656403073Q00436F2Q6E656374011E3Q00121F000100014Q0047000200033Q00265F00010017000100020004283Q0017000100265F00020004000100010004283Q0004000100201E00043Q00032Q004000065Q00121F000700043Q00121F000800054Q0020000600084Q003A00043Q00022Q0001000300043Q00202300040003000600201E00040004000700066300063Q000100032Q00593Q00014Q00593Q00024Q00593Q00034Q000D0004000600010004283Q001D00010004283Q000400010004283Q001D0001000E4D00010002000100010004283Q0002000100121F000200014Q0047000300033Q00121F000100023Q0004283Q000200012Q001A3Q00013Q00013Q00033Q00028Q00026Q00F03F026Q00084000193Q00121F3Q00014Q0047000100013Q00265F3Q0002000100010004283Q0002000100121F000100013Q000E4D0002000D000100010004283Q000D00012Q004000025Q000E3000030018000100020004283Q001800012Q0040000200014Q00080002000100010004283Q0018000100265F00010005000100010004283Q000500012Q004000025Q00202Q0002000200022Q005800026Q0040000200024Q000800020001000100121F000100023Q0004283Q000500010004283Q001800010004283Q000200012Q001A3Q00017Q00053Q00028Q00030A3Q00476574506C6179657273026Q00144003043Q007461736B03043Q007761697400193Q00121F3Q00014Q0047000100013Q00265F3Q0002000100010004283Q0002000100121F000100013Q00265F00010005000100010004283Q000500012Q004000025Q00201E0002000200022Q001C0002000200022Q0016000200023Q0026270002000F000100030004283Q000F00012Q0040000200014Q0008000200010001001254000200043Q00202300020002000500121F000300034Q00040002000200010004285Q00010004283Q000500010004285Q00010004283Q000200010004285Q00012Q001A3Q00017Q000A3Q00028Q0003093Q00436861726163746572030E3Q0046696E6446697273744368696C6403083Q000D91B24D0A87181403083Q007045E4DF2C64E871026Q00F03F03083Q0048756D616E6F696403063Q004865616C746803043Q007461736B03043Q0077616974003B3Q00121F3Q00014Q0047000100013Q00265F3Q0002000100010004283Q0002000100121F000100013Q00265F00010005000100010004283Q000500012Q004000025Q0020230002000200020006490002003100013Q0004283Q003100012Q004000025Q00202300020002000200201E0002000200032Q0040000400013Q00121F000500043Q00121F000600054Q0020000400064Q003A00023Q00020006490002003100013Q0004283Q0031000100121F000200014Q0047000300043Q00265F0002002B000100060004283Q002B000100265F00030019000100010004283Q001900012Q004000055Q00202300050005000200202300050005000700202300040005000800263100040031000100010004283Q0031000100121F000500013Q00265F00050022000100010004283Q002200012Q0040000600024Q00080006000100012Q001A3Q00013Q0004283Q002200010004283Q003100010004283Q001900010004283Q0031000100265F00020017000100010004283Q0017000100121F000300014Q0047000400043Q00121F000200063Q0004283Q00170001001254000200093Q00202300020002000A00121F000300064Q00040002000200010004285Q00010004283Q000500010004285Q00010004283Q000200010004285Q00012Q001A3Q00017Q00053Q00028Q0003043Q007461736B03043Q0077616974026Q001440026Q00F03F00273Q00121F3Q00014Q0047000100013Q00265F3Q0002000100010004283Q0002000100121F000100013Q00265F00010005000100010004283Q000500012Q004000025Q00060A0002001D000100010004283Q001D000100121F000200013Q00265F00020014000100010004283Q00140001001254000300023Q00202300030003000300121F000400044Q00040003000200012Q0040000300014Q000800030001000100121F000200053Q000E4D0005000B000100020004283Q000B00012Q004000035Q00060A0003001D000100010004283Q001D00012Q0040000300024Q00080003000100010004283Q001D00010004283Q000B0001001254000200023Q00202300020002000300121F000300054Q00040002000200010004285Q00010004283Q000500010004285Q00010004283Q000200010004285Q00012Q001A3Q00017Q00083Q0003053Q007063612Q6C028Q0003043Q007761726E03123Q00E61A04DCB87283D70B47D5B7758AD11B5D9303073Q00E6B47F67B3D61C03043Q007461736B03043Q0077616974026Q001440001D3Q0012543Q00013Q00066300013Q000100032Q00598Q00593Q00014Q00593Q00024Q00573Q000200010006493Q000A00013Q0004283Q000A00010004283Q001C00010004285Q000100121F000200023Q00265F0002000B000100020004283Q000B0001001254000300034Q0040000400033Q00121F000500043Q00121F000600054Q000F0004000600022Q0001000500014Q00220004000400052Q0004000300020001001254000300063Q00202300030003000700121F000400084Q00040003000200010004285Q00010004283Q000B00010004285Q00012Q001A3Q00013Q00013Q00013Q0003083Q0054656C65706F727400064Q00407Q00201E5Q00012Q0040000200014Q0040000300024Q000D3Q000300012Q001A3Q00017Q000A3Q002Q033Q0049734103053Q008ABB1049B303073Q00AFCCC97124D68B030E3Q0046696E6446697273744368696C64030C3Q0062DE27D3166AC926CF0540C903053Q006427AC55BC028Q0003043Q007461736B03043Q0077616974027Q0040011C3Q00201E00013Q00012Q004000035Q00121F000400023Q00121F000500034Q0020000300054Q003A00013Q00020006490001001B00013Q0004283Q001B000100201E00013Q00042Q004000035Q00121F000400053Q00121F000500064Q0020000300054Q003A00013Q00020006490001001B00013Q0004283Q001B000100121F000100073Q00265F00010011000100070004283Q00110001001254000200083Q00202300020002000900121F0003000A4Q00040002000200012Q0040000200014Q00080002000100010004283Q001B00010004283Q001100012Q001A3Q00017Q00033Q00028Q00030D3Q0052656E6465725374652Q70656403043Q005761697400133Q00121F3Q00014Q0047000100013Q00265F3Q0002000100010004283Q0002000100121F000100013Q00265F00010005000100010004283Q000500012Q004000026Q00080002000100012Q0040000200013Q00202300020002000200201E0002000200032Q00040002000200010004285Q00010004283Q000500010004285Q00010004283Q000200010004285Q00012Q001A3Q00017Q00043Q00028Q0003043Q007461736B03043Q0077616974025Q00208C40000D3Q00121F3Q00013Q00265F3Q0001000100010004283Q00010001001254000100023Q00202300010001000300121F000200044Q00040001000200012Q004000016Q00080001000100010004285Q00010004283Q000100010004285Q00012Q001A3Q00017Q00",v17(),...);
