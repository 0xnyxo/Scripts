local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\253\107","\100\211\69\177\58\58\105"),function(v42) if (v9(v42,2)==(253 -172)) then v30=v8(v11(v42,1,1));return "";else local v93=0;local v94;while true do if (v93==0) then v94=v10(v8(v42,16));if v30 then local v118=0;local v119;while true do if (v118==1) then return v119;end if (v118==0) then v119=v13(v94,v30);v30=nil;v118=1;end end else return v94;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v95=0;local v96;while true do if (v95==0) then v96=(v43/((5 -3)^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v96-(v96%1) ;end end else local v97=0;local v98;while true do if (0==v97) then v98=2^(v44-1) ;return (((v43%(v98 + v98))>=v98) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + (1 -0) ;v46=1;end if (v46==1) then return v47;end end end local function v33() local v48,v49=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;return (v49 * 256) + v48 ;end local function v34() local v50,v51,v52,v53=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v53 * (43216383 -26439167)) + (v52 * 65536) + (v51 * 256) + v50 ;end local function v35() local v54=0;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (2==v54) then v59=v31(v56,21,31);v60=((v31(v56,32)==1) and  -1) or 1 ;v54=3;end if (v54==3) then if (v59==0) then if (v58==(619 -(555 + 64))) then return v60 * 0 ;else local v120=0;while true do if (v120==0) then v59=1;v57=0;break;end end end elseif (v59==2047) then return ((v58==0) and (v60 * ((932 -(857 + 74))/0))) or (v60 * NaN) ;end return v16(v60,v59-1023 ) * (v57 + (v58/(2^52))) ;end if (0==v54) then v55=v34();v56=v34();v54=1;end if (v54==1) then v57=1;v58=(v31(v56,1,20) * (2^32)) + v55 ;v54=2;end end end local function v36(v61) local v62;if  not v61 then local v99=0;while true do if (v99==0) then v61=v34();if (v61==(568 -(367 + 201))) then return "";end break;end end end v62=v11(v27,v29,(v29 + v61) -1 );v29=v29 + v61 ;local v63={};for v77=1, #v62 do v63[v77]=v10(v9(v11(v62,v77,v77)));end return v14(v63);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v64=0;local v65;local v66;local v67;local v68;local v69;local v70;while true do if (v64==0) then v65={};v66={};v67={};v68={v65,v66,nil,v67};v64=1;end if (v64==2) then for v103=1,v34() do local v104=0;local v105;while true do if (v104==0) then v105=v32();if (v31(v105,1,1)==0) then local v122=v31(v105,2,3);local v123=v31(v105,4,883 -(282 + 595) );local v124={v33(),v33(),nil,nil};if (v122==0) then local v126=0;while true do if (v126==0) then v124[3]=v33();v124[4]=v33();break;end end elseif (v122==1) then v124[3]=v34();elseif (v122==2) then v124[3]=v34() -(2^16) ;elseif (v122==3) then local v137=0;while true do if (v137==0) then v124[3]=v34() -(2^16) ;v124[4]=v33();break;end end end if (v31(v123,1,1)==1) then v124[1639 -(1523 + 114) ]=v70[v124[2]];end if (v31(v123,2,2)==1) then v124[3]=v70[v124[3]];end if (v31(v123,3,3)==1) then v124[4]=v70[v124[4]];end v65[v103]=v124;end break;end end end for v106=1,v34() do v66[v106-(1 + 0) ]=v39();end return v68;end if (1==v64) then v69=v34();v70={};for v108=1,v69 do local v109=0;local v110;local v111;while true do if (v109==1) then if (v110==1) then v111=v32()~=0 ;elseif (v110==2) then v111=v35();elseif (v110==3) then v111=v36();end v70[v108]=v111;break;end if (v109==0) then v110=v32();v111=nil;v109=1;end end end v68[3]=v32();v64=2;end end end local function v40(v71,v72,v73) local v74=v71[1];local v75=v71[2];local v76=v71[3];return function(...) local v79=v74;local v80=v75;local v81=v76;local v82=v38;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v20("#",...) -(1 -0) ;local v88={};local v89={};for v100=1065 -(68 + 997) ,v87 do if (v100>=v81) then v85[v100-v81 ]=v86[v100 + 1 ];else v89[v100]=v86[v100 + 1 ];end end local v90=(v87-v81) + 1 ;local v91;local v92;while true do local v101=0;while true do if (v101==1) then if (v92<=51) then if (v92<=25) then if (v92<=12) then if (v92<=5) then if (v92<=(1272 -(226 + 1044))) then if (v92<=0) then v89[v91[2]]=v91[3] + v89[v91[4]] ;elseif (v92==1) then local v191=v91[2];do return v89[v191](v21(v89,v191 + 1 ,v91[3]));end else v89[v91[2]]=v91[3]~=0 ;end elseif (v92<=(12 -9)) then v83=v91[3];elseif (v92>(121 -(32 + 85))) then local v193=v91[2];local v194,v195=v82(v89[v193](v89[v193 + 1 ]));v84=(v195 + v193) -1 ;local v196=0;for v347=v193,v84 do v196=v196 + 1 ;v89[v347]=v194[v196];end else v89[v91[2]]=v89[v91[3 + 0 ]]%v91[4] ;end elseif (v92<=8) then if (v92<=6) then v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;elseif (v92==7) then local v198=v91[2];local v199,v200=v82(v89[v198](v21(v89,v198 + 1 ,v84)));v84=(v200 + v198) -1 ;local v201=0;for v350=v198,v84 do local v351=0;while true do if (v351==0) then v201=v201 + 1 ;v89[v350]=v199[v201];break;end end end elseif (v91[2]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=10) then if (v92==(2 + 7)) then local v202=0;local v203;local v204;local v205;while true do if (v202==0) then v203=v91[2];v204=v89[v203 + 2 ];v202=1;end if (2==v202) then if (v204>0) then if (v205<=v89[v203 + 1 ]) then local v489=0;while true do if (0==v489) then v83=v91[3];v89[v203 + 3 ]=v205;break;end end end elseif (v205>=v89[v203 + 1 ]) then v83=v91[960 -(892 + 65) ];v89[v203 + 3 ]=v205;end break;end if (v202==1) then v205=v89[v203] + v204 ;v89[v203]=v205;v202=2;end end else v89[v91[2]][v89[v91[3]]]=v89[v91[4]];end elseif (v92>11) then local v208=0;local v209;local v210;local v211;while true do if (v208==1) then v211=v91[3];for v436=1,v211 do v210[v436]=v89[v209 + v436 ];end break;end if (v208==0) then v209=v91[2];v210=v89[v209];v208=1;end end else local v212=0;local v213;local v214;local v215;local v216;while true do if (v212==2) then for v439=v213,v84 do local v440=0;while true do if (0==v440) then v216=v216 + 1 ;v89[v439]=v214[v216];break;end end end break;end if (v212==0) then v213=v91[2];v214,v215=v82(v89[v213](v21(v89,v213 + 1 ,v84)));v212=1;end if (v212==1) then v84=(v215 + v213) -1 ;v216=0;v212=2;end end end elseif (v92<=18) then if (v92<=15) then if (v92<=13) then local v141=0;local v142;local v143;local v144;while true do if (v141==1) then v144=v89[v142] + v143 ;v89[v142]=v144;v141=2;end if (v141==0) then v142=v91[2];v143=v89[v142 + 2 ];v141=1;end if (2==v141) then if (v143>0) then if (v144<=v89[v142 + 1 ]) then local v474=0;while true do if (v474==0) then v83=v91[3];v89[v142 + 3 ]=v144;break;end end end elseif (v144>=v89[v142 + 1 ]) then local v475=0;while true do if (0==v475) then v83=v91[3];v89[v142 + 3 ]=v144;break;end end end break;end end elseif (v92>14) then local v217=0;local v218;local v219;while true do if (0==v217) then v218=v91[2];v219=v89[v218];v217=1;end if (1==v217) then for v441=v218 + 1 ,v91[3] do v15(v219,v89[v441]);end break;end end else v89[v91[2]][v89[v91[3]]]=v89[v91[4]];end elseif (v92<=16) then local v145=v91[4 -2 ];local v146=v91[4];local v147=v145 + 2 ;local v148={v89[v145](v89[v145 + 1 ],v89[v147])};for v180=1,v146 do v89[v147 + v180 ]=v148[v180];end local v149=v148[1];if v149 then v89[v147]=v149;v83=v91[3];else v83=v83 + 1 ;end elseif (v92>(30 -13)) then local v224=0;local v225;local v226;local v227;while true do if (v224==1) then v227={};v226=v18({},{[v7("\218\70\252\231\133\71\175","\215\133\25\149\137\225\34")]=function(v442,v443) local v444=v227[v443];return v444[1][v444[2]];end,[v7("\13\197\225\53\235\193\60\254\234\40","\168\82\154\143\80\156")]=function(v445,v446,v447) local v448=v227[v446];v448[1 -0 ][v448[2]]=v447;end});v224=2;end if (v224==2) then for v450=1,v91[354 -(87 + 263) ] do local v451=0;local v452;while true do if (v451==1) then if (v452[1]==22) then v227[v450-1 ]={v89,v452[3]};else v227[v450-(181 -(67 + 113)) ]={v72,v452[3]};end v88[ #v88 + 1 ]=v227;break;end if (v451==0) then v83=v83 + 1 ;v452=v79[v83];v451=1;end end end v89[v91[2]]=v40(v225,v226,v73);break;end if (v224==0) then v225=v80[v91[3]];v226=nil;v224=1;end end elseif (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=21) then if (v92<=(14 + 5)) then local v150=0;local v151;while true do if (v150==0) then v151=v91[4 -2 ];v89[v151]=v89[v151]();break;end end elseif (v92==20) then v89[v91[2]]=v89[v91[3]] + v91[4] ;elseif  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=23) then if (v92>22) then local v229=0;local v230;local v231;while true do if (v229==1) then for v453=1, #v88 do local v454=v88[v453];for v476=0 + 0 , #v454 do local v477=0;local v478;local v479;local v480;while true do if (v477==1) then v480=v478[7 -5 ];if ((v479==v89) and (v480>=v230)) then v231[v480]=v479[v480];v478[1]=v231;end break;end if (v477==0) then v478=v454[v476];v479=v478[1];v477=1;end end end end break;end if (v229==0) then v230=v91[2];v231={};v229=1;end end else v89[v91[954 -(802 + 150) ]]=v89[v91[3]];end elseif (v92>24) then local v234=0;local v235;local v236;local v237;while true do if (v234==1) then v237=v89[v235 + 2 ];if (v237>0) then if (v236>v89[v235 + 1 ]) then v83=v91[3];else v89[v235 + 3 ]=v236;end elseif (v236<v89[v235 + 1 ]) then v83=v91[3];else v89[v235 + 3 ]=v236;end break;end if (v234==0) then v235=v91[2];v236=v89[v235];v234=1;end end else local v238=v91[2];v89[v238](v21(v89,v238 + 1 ,v91[3]));end elseif (v92<=38) then if (v92<=31) then if (v92<=28) then if (v92<=26) then for v183=v91[2],v91[3] do v89[v183]=nil;end elseif (v92>27) then local v239=0;local v240;local v241;local v242;while true do if (2==v239) then for v455=1,v91[4] do local v456=0;local v457;while true do if (1==v456) then if (v457[1]==22) then v242[v455-1 ]={v89,v457[3]};else v242[v455-1 ]={v72,v457[3]};end v88[ #v88 + 1 ]=v242;break;end if (v456==0) then v83=v83 + 1 ;v457=v79[v83];v456=1;end end end v89[v91[2]]=v40(v240,v241,v73);break;end if (v239==0) then v240=v80[v91[3]];v241=nil;v239=1;end if (1==v239) then v242={};v241=v18({},{[v7("\186\141\58\5\76\75\145","\233\229\210\83\107\40\46")]=function(v458,v459) local v460=v242[v459];return v460[1][v460[2]];end,[v7("\254\125\60\211\18\200\76\54\211\29","\101\161\34\82\182")]=function(v461,v462,v463) local v464=v242[v462];v464[1][v464[2]]=v463;end});v239=2;end end else do return v89[v91[5 -3 ]]();end end elseif (v92<=29) then local v152=0;local v153;while true do if (v152==0) then v153=v91[3 -1 ];v89[v153]=v89[v153](v21(v89,v153 + 1 ,v91[3]));break;end end elseif (v92>30) then local v243=v91[2];v89[v243]=v89[v243](v89[v243 + 1 ]);else local v245=0;local v246;local v247;local v248;while true do if (v245==1) then v248=0;for v466=v246,v91[4] do local v467=0;while true do if (v467==0) then v248=v248 + 1 ;v89[v466]=v247[v248];break;end end end break;end if (v245==0) then v246=v91[2];v247={v89[v246](v89[v246 + 1 + 0 ])};v245=1;end end end elseif (v92<=34) then if (v92<=32) then if (v89[v91[999 -(915 + 82) ]]==v89[v91[4]]) then v83=v83 + (2 -1) ;else v83=v91[3];end elseif (v92==33) then local v250=0;local v251;local v252;while true do if (v250==1) then for v468=v251 + 1 ,v84 do v15(v252,v89[v468]);end break;end if (v250==0) then v251=v91[2];v252=v89[v251];v250=1;end end else for v359=v91[2],v91[3] do v89[v359]=nil;end end elseif (v92<=36) then if (v92>35) then if (v89[v91[2]]==v91[4]) then v83=v83 + 1 ;else v83=v91[3];end else local v253=0;local v254;while true do if (0==v253) then v254=v91[2];do return v21(v89,v254,v254 + v91[3] );end break;end end end elseif (v92==37) then v89[v91[2]]= #v89[v91[2 + 1 ]];else local v256=0;local v257;while true do if (v256==0) then v257=v89[v91[4 -0 ]];if  not v257 then v83=v83 + 1 ;else local v481=0;while true do if (0==v481) then v89[v91[2]]=v257;v83=v91[3];break;end end end break;end end end elseif (v92<=44) then if (v92<=41) then if (v92<=(1226 -(1069 + 118))) then v89[v91[2]][v89[v91[3]]]=v91[4];elseif (v92==40) then local v258=v89[v91[8 -4 ]];if v258 then v83=v83 + 1 ;else local v379=0;while true do if (v379==0) then v89[v91[2]]=v258;v83=v91[6 -3 ];break;end end end else v89[v91[2]]=v91[3] + v89[v91[4]] ;end elseif (v92<=42) then do return v89[v91[2]]();end elseif (v92>43) then if (v91[2]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end else v89[v91[2]]=v89[v91[3]][v91[4]];end elseif (v92<=47) then if (v92<=45) then if v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92==46) then v89[v91[2]][v91[3]]=v89[v91[1 + 3 ]];else local v265=v91[2];v89[v265]=v89[v265](v89[v265 + 1 ]);end elseif (v92<=49) then if (v92>48) then v89[v91[3 -1 ]]=v89[v91[3]];else v89[v91[2]]();end elseif (v92==50) then local v269=v91[2];local v270=v89[v269];for v361=v269 + 1 ,v84 do v15(v270,v89[v361]);end else local v271=0;local v272;while true do if (0==v271) then v272=v89[v91[4]];if  not v272 then v83=v83 + 1 ;else local v484=0;while true do if (0==v484) then v89[v91[2]]=v272;v83=v91[3];break;end end end break;end end end elseif (v92<=77) then if (v92<=64) then if (v92<=57) then if (v92<=(54 + 0)) then if (v92<=52) then v89[v91[793 -(368 + 423) ]]={};elseif (v92>(166 -113)) then v89[v91[2]]={};else do return v89[v91[2]];end end elseif (v92<=55) then local v157=v91[2];local v158={v89[v157](v89[v157 + 1 ])};local v159=0;for v185=v157,v91[22 -(10 + 8) ] do local v186=0;while true do if (v186==0) then v159=v159 + 1 ;v89[v185]=v158[v159];break;end end end elseif (v92==56) then local v274=v91[7 -5 ];local v275=v89[v91[445 -(416 + 26) ]];v89[v274 + (3 -2) ]=v275;v89[v274]=v275[v91[4]];else local v279=v91[2];local v280=v91[4];local v281=v279 + 2 ;local v282={v89[v279](v89[v279 + 1 + 0 ],v89[v281])};for v362=1,v280 do v89[v281 + v362 ]=v282[v362];end local v283=v282[1 -0 ];if v283 then v89[v281]=v283;v83=v91[3];else v83=v83 + 1 ;end end elseif (v92<=60) then if (v92<=58) then local v160=v91[2];local v161=v89[v160];local v162=v91[3];for v187=1,v162 do v161[v187]=v89[v160 + v187 ];end elseif (v92>59) then do return;end elseif  not v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=62) then if (v92>61) then v89[v91[2]]();else local v284=v91[2];local v285,v286=v82(v89[v284](v89[v284 + (439 -(145 + 293)) ]));v84=(v286 + v284) -(431 -(44 + 386)) ;local v287=0;for v365=v284,v84 do local v366=0;while true do if (v366==0) then v287=v287 + 1 ;v89[v365]=v285[v287];break;end end end end elseif (v92>63) then v89[v91[2]]=v72[v91[3]];else local v290=0;local v291;while true do if (v290==0) then v291=v89[v91[4]];if v291 then v83=v83 + 1 ;else local v485=0;while true do if (v485==0) then v89[v91[2]]=v291;v83=v91[3];break;end end end break;end end end elseif (v92<=70) then if (v92<=67) then if (v92<=(1551 -(998 + 488))) then local v163=0;local v164;while true do if (v163==0) then v164=v91[2];v89[v164]=v89[v164](v21(v89,v164 + 1 + 0 ,v84));break;end end elseif (v92>(55 + 11)) then local v292=v91[2];local v293={};for v369=1, #v88 do local v370=v88[v369];for v386=0, #v370 do local v387=0;local v388;local v389;local v390;while true do if (v387==1) then v390=v388[2];if ((v389==v89) and (v390>=v292)) then local v504=0;while true do if (v504==0) then v293[v390]=v389[v390];v388[1]=v293;break;end end end break;end if (v387==0) then v388=v370[v386];v389=v388[1];v387=1;end end end end else v89[v91[2]]=v89[v91[775 -(201 + 571) ]] + v91[4] ;end elseif (v92<=68) then local v165=v91[3];local v166=v89[v165];for v190=v165 + 1 ,v91[4] do v166=v166   .. v89[v190] ;end v89[v91[2]]=v166;elseif (v92==69) then v89[v91[2]]=v89[v91[3]][v89[v91[4]]];else local v297=0;local v298;local v299;while true do if (v297==1) then v89[v298 + 1 ]=v299;v89[v298]=v299[v91[4]];break;end if (v297==0) then v298=v91[2];v299=v89[v91[3]];v297=1;end end end elseif (v92<=73) then if (v92<=71) then v89[v91[1140 -(116 + 1022) ]]=v72[v91[3]];elseif (v92==72) then local v300=v91[2];v89[v300]=v89[v300](v21(v89,v300 + 1 ,v84));else local v302=v91[2];do return v21(v89,v302,v84);end end elseif (v92<=(312 -237)) then if (v92>74) then local v303=v91[2];v89[v303]=v89[v303]();else local v305=0;local v306;while true do if (v305==0) then v306=v91[2];do return v21(v89,v306,v84);end break;end end end elseif (v92>(45 + 31)) then local v307=0;local v308;while true do if (v307==0) then v308=v91[2];v89[v308](v21(v89,v308 + 1 ,v91[3]));break;end end elseif (v89[v91[2]]==v89[v91[4]]) then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=90) then if (v92<=83) then if (v92<=80) then if (v92<=78) then v89[v91[2]]=v89[v91[3]][v91[4]];elseif (v92==79) then local v309=0;local v310;while true do if (v309==0) then v310=v91[2];v89[v310]=v89[v310](v21(v89,v310 + 1 ,v91[3]));break;end end else local v311=v91[2];local v312,v313=v82(v89[v311](v21(v89,v311 + 1 ,v91[3])));v84=(v313 + v311) -1 ;local v314=0;for v371=v311,v84 do v314=v314 + 1 ;v89[v371]=v312[v314];end end elseif (v92<=81) then v89[v91[2]]=v91[10 -7 ];elseif (v92>82) then local v315=0;local v316;local v317;local v318;local v319;while true do if (v315==2) then for v471=v316,v84 do local v472=0;while true do if (v472==0) then v319=v319 + 1 ;v89[v471]=v317[v319];break;end end end break;end if (v315==1) then v84=(v318 + v316) -1 ;v319=0;v315=2;end if (v315==0) then v316=v91[2];v317,v318=v82(v89[v316](v21(v89,v316 + 1 ,v91[3])));v315=1;end end else do return v89[v91[2]];end end elseif (v92<=86) then if (v92<=(298 -214)) then v83=v91[3];elseif (v92==85) then local v320=v91[2];v89[v320](v89[v320 + 1 ]);else local v321=0;local v322;while true do if (v321==0) then v322=v91[2];v89[v322](v21(v89,v322 + (860 -(814 + 45)) ,v84));break;end end end elseif (v92<=88) then if (v92>87) then v89[v91[2]][v89[v91[3]]]=v91[4];else v89[v91[4 -2 ]]=v73[v91[3]];end elseif (v92>89) then v89[v91[2]]=v89[v91[3]]%v91[4] ;else v89[v91[1 + 1 ]]=v91[3]~=0 ;end elseif (v92<=96) then if (v92<=(33 + 60)) then if (v92<=91) then v89[v91[2]]=v73[v91[3]];elseif (v92==92) then v89[v91[2]]=v89[v91[3]][v89[v91[4]]];else do return;end end elseif (v92<=94) then local v177=v91[2];v89[v177](v21(v89,v177 + 1 ,v84));elseif (v92>95) then v89[v91[2]]=v91[3];elseif v89[v91[2]] then v83=v83 + 1 ;else v83=v91[3];end elseif (v92<=(984 -(261 + 624))) then if (v92<=97) then local v178=0;local v179;while true do if (v178==0) then v179=v91[2];do return v89[v179](v21(v89,v179 + 1 ,v91[3]));end break;end end elseif (v92>(173 -75)) then local v333=0;local v334;local v335;while true do if (v333==0) then v334=v91[1083 -(1020 + 60) ];v335=v89[v334];v333=1;end if (v333==1) then for v473=v334 + 1 ,v91[4] do v335=v335   .. v89[v473] ;end v89[v91[2]]=v335;break;end end else v89[v91[2]][v91[3]]=v89[v91[4]];end elseif (v92<=(1524 -(630 + 793))) then if (v92==100) then v89[v91[2]]= #v89[v91[3]];else local v339=0;local v340;local v341;local v342;while true do if (v339==1) then v342=v89[v340 + 2 ];if (v342>0) then if (v341>v89[v340 + 1 ]) then v83=v91[3];else v89[v340 + 3 ]=v341;end elseif (v341<v89[v340 + (3 -2) ]) then v83=v91[14 -11 ];else v89[v340 + 2 + 1 ]=v341;end break;end if (v339==0) then v340=v91[2];v341=v89[v340];v339=1;end end end elseif (v92==102) then local v343=v91[2];v89[v343](v89[v343 + (3 -2) ]);else v89[v91[2]]=v89[v91[3]]%v89[v91[4]] ;end v83=v83 + 1 ;break;end if (v101==0) then v91=v79[v83];v92=v91[1];v101=1;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012573Q00013Q00202B5Q0002001257000100013Q00202B000100010003001257000200013Q00202B000200020004001257000300053Q00063B0003000A000100010004033Q000A0001001257000300063Q00202B000400030007001257000500083Q00202B000500050009001257000600083Q00202B00060006000A00061200073Q000100062Q00163Q00064Q00168Q00163Q00044Q00163Q00014Q00163Q00024Q00163Q00053Q001257000800013Q00202B00080008000B0012570009000C3Q001257000A000D3Q000612000B0001000100052Q00163Q00074Q00163Q00094Q00163Q00084Q00163Q000A4Q00163Q000B4Q0031000C000B4Q001B000C00014Q0049000C6Q005D3Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q003600025Q001260000300014Q006400045Q001260000500013Q0004650003002100012Q004700076Q0031000800024Q0047000900014Q0047000A00024Q0047000B00034Q0047000C00044Q0031000D6Q0031000E00063Q002042000F000600012Q0053000C000F4Q0048000B3Q00022Q0047000C00034Q0047000D00044Q0031000E00014Q0064000F00014Q0006000F0006000F001029000F0001000F2Q0064001000014Q00060010000600100010290010000100100020420010001000012Q0053000D00104Q000B000C6Q0048000A3Q000200205A000A000A00022Q00050009000A4Q005E00073Q000100040D0003000500012Q0047000300054Q0031000400024Q0061000300044Q004900036Q005D3Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006125Q000100012Q00408Q0047000100014Q0047000200024Q0047000300024Q003600046Q0047000500034Q003100066Q001A000700074Q0053000500074Q003200043Q000100202B000400040001001260000500024Q001D000300050002001260000400034Q0053000200044Q004800013Q000200261100010018000100040004033Q001800012Q003100016Q003600026Q0061000100024Q004900015Q0004033Q001B00012Q0047000100044Q001B000100014Q004900016Q005D3Q00013Q00013Q00823Q00022Q00906D5C7BFB4103043Q0067616D65030A3Q004765745365727669636503073Q0044F6DD2D1666E903053Q0073149ABC54030B3Q004C6F63616C506C61796572028Q00030A3Q00E2CB8C3E95BAC3F8982503063Q00DFB1BFED4CE103073Q00536574436F726503103Q0065CCAE3E7E3FAF5FCFA9395124B259C703073Q00DB36A9C05A305003053Q007D4B14294C03043Q004529226003173Q008FD6D4090738AFC5C2060E32FCE2C21E0A24AECACD0F0603063Q004BDCA3B76A6203043Q0036BF932303053Q00B962DAEB5703263Q00F23332A6D6ABDD3967F6DBB8C63534F5D7A5C57C33E99EBFD83967F2D6A3D87C14E5CCA3DB2803063Q00CAAB5C4786BE03083Q000DD43E893DC8238603043Q00E849A14C026Q001440030A3Q006C6F6164737472696E6703073Q00482Q747047657403493Q00B3CD564D0DE1960D5A17AFD1575F50B8D64F121ABACE4B5953A8DA50540EAFCA0D7B12AEDC4C4951A9DC4E581FA8DC512Q12BACD474E0AF4DD4D4A10B7D6435951B6D84B5350B7CC4303053Q007EDBB9223D026Q00F03F026Q00084003093Q004F6E4368616E676564030D3Q00417574686F72697A6174696F6E030C3Q00412Q6450617261677261706803053Q0062214B342003073Q009836483F58453E03103Q00E1D7EB4E94EDE05ADBD6E35DC0CDE15203043Q003CB4A48E03073Q007B510B3D22E30603073Q0072383E6549478D030A3Q008DFADED6B6E8D6C1E2A903043Q00A4D889BB03043Q004E616D65030F3Q000A446973706C6179204E616D653A20030B3Q00446973706C61794E616D65030A3Q000A557365722049443A2003063Q00557365724964030F3Q000A457870697265733A204E65766572027Q004003043Q00FFE738BC03073Q006BB28651D2C69E03063Q00412Q6454616203053Q000C0796CAAF03053Q00CA586EE2A603043Q00EB008FF203053Q00AAA36FE29703043Q003833BD3603073Q00497150D2582E5703043Q008923C01703053Q0087E14CAD72030D3Q003BF8ACB8A3AFAE00ECACB9A3B303073Q00C77A8DD8D0CCDD03053Q0099D404FC7D03063Q0096CDBD709018030D3Q000491AB440B9A180A2490B6430A03083Q007045E4DF2C64E87103043Q00FD1C08DD03073Q00E6B47F67B3D61C030C3Q009F0D5643E845AD8F0D5A45EF03073Q0080EC653F26842103043Q004D61696E03093Q00412Q64546F2Q676C6503143Q008DBC054B93EADB9CBB1E50B3E2C198A61643BAEE03073Q00AFCCC97124D68B03053Q0073C521D00103053Q006427AC55BC03143Q008C6DAD8F738879ADC003BF77AD853AA3389C873403053Q0053CD18D9E0030B3Q00C2C0DE3EF4CCDD29EFCAC303043Q005D86A5AD03273Q009FE7D5CD37CFA677BDF3CDCE238EB77FAAE181E73DC9F27BA8F7D3DB7A9DE23EB3FBCFD72ECBA103083Q001EDE92A1A25AAED203073Q00C14B760BF0426403043Q006A852E10010003543Q00503467EC491A176F61FD4D0E5F2967F44F424D3376EE594F563476F24E0E5B2F7EB35E414F2977B149434A2963E8490F7E2C66F92Q54172D72EF4E454A6F52F85E4F56333CCF5B565D0D72F25B475D323DF04F4103063Q00203840139C3A030C3Q0043726561746557696E646F7703053Q006EC1F15A5F03073Q00E03AA885363A9203083Q007B4F0BCB6C9E880503083Q006B39362B9D15E6E703083Q00E89E13C1B0C8C3DE03073Q00AFBBEB7195D9BC03193Q0011BA924FEF7C3810AA8649ED7D6B7CB3C16DF66D777C8A805803073Q00185CCFE12C831903083Q007FD2BA7B12795FDB03063Q001D2BB3D82C7B025Q0040604003043Q008ED03A4903043Q002CDDB94003053Q005544696D32030A3Q0066726F6D4F2Q66736574025Q00207C40025Q00C0724003073Q0020E45A467F08E403053Q00136187283F2Q0103053Q009A542Q362A03063Q0051CE3C535B4F03063Q006AAAC2792AD103083Q00C42ECBB0124FA32D030F3Q009A237D1523E9E0AD2C7A3D2BF7E0AA03073Q008FD8421E7E449B03063Q00436F6C6F723303073Q0066726F6D524742030A3Q0099DC0CD9D1A6C5C6BFC103083Q0081CAA86DABA5C3B703103Q00115D39DCF01BF22B5E3EDBDF00EF2D5603073Q0086423857B8BE7403053Q0008381DB71C03083Q00555C5169DB798B41030E3Q00D3BC44057DCAE9BB5F5775C5F8B703063Q00BF9DD330251C03043Q00EB1AEC0803053Q005ABF7F947C032C3Q00596F7520646F6E27742068617665207065726D692Q73696F6E20746F2075736520746869732053637269707403083Q005C923C166C8E211903043Q007718E74E03043Q007761726E032A3Q00BB22B00ADD5214C223AA5E9C41049625AA58D55A14866DB1459C5502876DB142D55351912EB743CC545F03073Q0071E24DC52ABC200151012Q00062D3Q004F2Q013Q0004033Q004F2Q012Q0036000100013Q001260000200014Q000C000100010001001257000200023Q0020380002000200032Q004700045Q001260000500043Q001260000600054Q0053000400064Q004800023Q000200202B00020002000600061200033Q000100022Q00163Q00014Q00163Q00024Q0031000400034Q004B00040001000200062D0004001E2Q013Q0004033Q001E2Q01001260000400074Q001A000500093Q00261100040049000100070004033Q00490001001257000A00023Q002038000A000A00032Q0047000C5Q001260000D00083Q001260000E00094Q0053000C000E4Q0048000A3Q0002002038000A000A000A2Q0047000C5Q001260000D000B3Q001260000E000C4Q001D000C000E00022Q0036000D3Q00032Q0047000E5Q001260000F000D3Q0012600010000E4Q001D000E001000022Q0047000F5Q0012600010000F3Q001260001100104Q001D000F001100022Q000A000D000E000F2Q0047000E5Q001260000F00113Q001260001000124Q001D000E001000022Q0047000F5Q001260001000133Q001260001100144Q001D000F001100022Q000A000D000E000F2Q0047000E5Q001260000F00153Q001260001000164Q001D000E00100002002058000D000E00172Q004D000A000D0001001257000A00183Q001257000B00023Q002038000B000B00192Q0047000D5Q001260000E001A3Q001260000F001B4Q0053000D000F4Q000B000B6Q0048000A3Q00022Q004B000A000100022Q00310005000A3Q0012600004001C3Q0026110004006E0001001D0004033Q006E0001002038000A0009001E000612000C0001000100022Q00163Q00094Q00408Q004D000A000C000100202B000A0008001F002038000A000A00202Q0036000C3Q00022Q0047000D5Q001260000E00213Q001260000F00224Q001D000D000F00022Q0047000E5Q001260000F00233Q001260001000244Q001D000E001000022Q000A000C000D000E2Q0047000D5Q001260000E00253Q001260000F00264Q001D000D000F00022Q0047000E5Q001260000F00273Q001260001000284Q001D000E0010000200202B000F000200290012600010002A3Q00202B00110002002B0012600012002C3Q00202B00130002002D0012600014002E4Q0063000E000E00142Q000A000C000D000E2Q004D000A000C00010004033Q001C2Q01002611000400CF0001002F0004033Q00CF0001001260000A00073Q000E2C001C00750001000A0004033Q007500010012600004001D3Q0004033Q00CF0001000E2C000700710001000A0004033Q007100012Q0036000B3Q00022Q0047000C5Q001260000D00303Q001260000E00314Q001D000C000E0002002038000D000700322Q0036000F3Q00022Q004700105Q001260001100333Q001260001200344Q001D0010001200022Q004700115Q001260001200353Q001260001300364Q001D0011001300022Q000A000F001000112Q004700105Q001260001100373Q001260001200384Q001D0010001200022Q004700115Q001260001200393Q0012600013003A4Q001D0011001300022Q000A000F001000112Q001D000D000F00022Q000A000B000C000D2Q0047000C5Q001260000D003B3Q001260000E003C4Q001D000C000E0002002038000D000700322Q0036000F3Q00022Q004700105Q0012600011003D3Q0012600012003E4Q001D0010001200022Q004700115Q0012600012003F3Q001260001300404Q001D0011001300022Q000A000F001000112Q004700105Q001260001100413Q001260001200424Q001D0010001200022Q004700115Q001260001200433Q001260001300444Q001D0011001300022Q000A000F001000112Q001D000D000F00022Q000A000B000C000D2Q00310008000B3Q00202B000B00080045002038000B000B00462Q0047000D5Q001260000E00473Q001260000F00484Q001D000D000F00022Q0036000E3Q00032Q0047000F5Q001260001000493Q0012600011004A4Q001D000F001100022Q004700105Q0012600011004B3Q0012600012004C4Q001D0010001200022Q000A000E000F00102Q0047000F5Q0012600010004D3Q0012600011004E4Q001D000F001100022Q004700105Q0012600011004F3Q001260001200504Q001D0010001200022Q000A000E000F00102Q0047000F5Q001260001000513Q001260001100524Q001D000F00110002002058000E000F00532Q001D000B000E00022Q00310009000B3Q001260000A001C3Q0004033Q00710001002611000400160001001C0004033Q00160001001257000A00183Q001257000B00023Q002038000B000B00192Q0047000D5Q001260000E00543Q001260000F00554Q0053000D000F4Q000B000B6Q0048000A3Q00022Q004B000A000100022Q00310006000A3Q002038000A000500562Q0036000C3Q00072Q0047000D5Q001260000E00573Q001260000F00584Q001D000D000F00022Q0047000E5Q001260000F00593Q0012600010005A4Q001D000E001000022Q000A000C000D000E2Q0047000D5Q001260000E005B3Q001260000F005C4Q001D000D000F00022Q0047000E5Q001260000F005D3Q0012600010005E4Q001D000E001000022Q000A000C000D000E2Q0047000D5Q001260000E005F3Q001260000F00604Q001D000D000F0002002058000C000D00612Q0047000D5Q001260000E00623Q001260000F00634Q001D000D000F0002001257000E00643Q00202B000E000E0065001260000F00663Q001260001000674Q001D000E001000022Q000A000C000D000E2Q0047000D5Q001260000E00683Q001260000F00694Q001D000D000F0002002058000C000D006A2Q0047000D5Q001260000E006B3Q001260000F006C4Q001D000D000F00022Q0047000E5Q001260000F006D3Q0012600010006E4Q001D000E001000022Q000A000C000D000E2Q0047000D5Q001260000E006F3Q001260000F00704Q001D000D000F0002001257000E00713Q00202B000E000E0072001260000F00073Q001260001000073Q001260001100074Q001D000E001100022Q000A000C000D000E2Q001D000A000C00022Q00310007000A3Q0012600004002F3Q0004033Q001600012Q001700045Q0004033Q004D2Q01001260000400073Q002611000400222Q01001C0004033Q00222Q012Q005D3Q00013Q0026110004001F2Q0100070004033Q001F2Q01001257000500023Q0020380005000500032Q004700075Q001260000800733Q001260000900744Q0053000700094Q004800053Q000200203800050005000A2Q004700075Q001260000800753Q001260000900764Q001D0007000900022Q003600083Q00032Q004700095Q001260000A00773Q001260000B00784Q001D0009000B00022Q0047000A5Q001260000B00793Q001260000C007A4Q001D000A000C00022Q000A00080009000A2Q004700095Q001260000A007B3Q001260000B007C4Q001D0009000B000200205800080009007D2Q004700095Q001260000A007E3Q001260000B007F4Q001D0009000B00020020580008000900172Q004D000500080001001257000500804Q004700065Q001260000700813Q001260000800824Q0053000600084Q005E00053Q00010012600004001C3Q0004033Q001F2Q012Q001700015Q0004033Q00502Q0100202B00013Q001C2Q005D3Q00013Q00023Q00033Q00028Q0003063Q0069706169727303063Q0055736572496400193Q0012603Q00014Q001A000100013Q0026113Q0002000100010004033Q00020001001260000100013Q00261100010005000100010004033Q00050001001257000200024Q004700036Q00370002000200040004033Q001100012Q0047000700013Q00202B00070007000300064C00070011000100060004033Q001100012Q0002000700014Q0035000700023Q0006390002000B000100020004033Q000B00012Q000200026Q0035000200023Q0004033Q000500010004033Q001800010004033Q000200012Q005D3Q00017Q00113Q0003053Q0056616C7565028Q00026Q00F03F027Q0040026Q000840026Q00104003043Q007461736B03053Q00737061776E030F3Q004261636B67726F756E64436F6C6F7203083Q00526564436F6C6F7203043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203093Q00436861726163746572030E3Q00436861726163746572412Q64656403043Q0057616974030A3Q00426C61636B436F6C6F72005C4Q00477Q00202B5Q000100062D3Q005800013Q0004033Q005800010012603Q00024Q001A000100063Q0026113Q000A000100030004033Q000A00012Q001A000300043Q0012603Q00043Q0026113Q004C000100050004033Q004C000100261100010014000100050004033Q001400012Q001A000600063Q00061200063Q000100032Q00408Q00163Q00044Q00163Q00053Q001260000100063Q00261100010023000100040004033Q00230001001260000700023Q0026110007001E000100020004033Q001E00012Q001A000500053Q00061200050001000100022Q00163Q00024Q00403Q00013Q001260000700033Q00261100070017000100030004033Q00170001001260000100053Q0004033Q002300010004033Q001700010026110001002D000100060004033Q002D0001001257000700073Q00202B0007000700082Q0031000800064Q00550007000200012Q004700075Q0012570008000A3Q00102E0007000900080004033Q00560001000E2C0003003D000100010004033Q003D0001001260000700023Q00261100070034000100030004033Q00340001001260000100043Q0004033Q003D000100261100070030000100020004033Q003000012Q001A000400043Q00061200040002000100032Q00163Q00034Q00403Q00014Q00163Q00023Q001260000700033Q0004033Q003000010026110001000C000100020004033Q000C00010012570007000B3Q00202B00070007000C00202B00020007000D00202B00070002000E00063300030049000100070004033Q0049000100202B00070002000F0020380007000700102Q002F0007000200022Q0031000300073Q001260000100033Q0004033Q000C00010004033Q005600010026113Q0051000100020004033Q00510001001260000100024Q001A000200023Q0012603Q00033Q0026113Q0006000100040004033Q000600012Q001A000500063Q0012603Q00053Q0004033Q000600012Q00177Q0004033Q005B00012Q00477Q001257000100113Q00102E3Q000900012Q005D3Q00013Q00033Q00063Q0003053Q0056616C7565028Q00026Q00F03F03043Q007461736B03043Q0077616974025Q00249C40001C4Q00477Q00202B5Q000100062D3Q001B00013Q0004033Q001B00010012603Q00024Q001A000100013Q0026113Q0006000100020004033Q00060001001260000100023Q00261100010010000100020004033Q001000012Q0047000200014Q003E0002000100012Q0047000200024Q003E000200010001001260000100033Q00261100010009000100030004033Q00090001001257000200043Q00202B000200020005001260000300064Q00550002000200010004035Q00010004033Q000900010004035Q00010004033Q000600010004035Q00012Q005D3Q00017Q000D3Q00028Q0003093Q00776F726B7370616365030E3Q0046696E6446697273744368696C6403043Q004E616D65030B3Q003CDC51667B7EFDA729C95903083Q00876CAE3E121E1793030B3Q006D7573636C654576656E74030A3Q0046697265536572766572030A3Q00A6FB25DF1DA73DE2B1EE03083Q00A7D6894AAB78CE5303043Q007761726E032A3Q00BBE23D49FDAE85B0175AFFE784F23858FBB3CBFE3D49B8A184E53C59B8AE85B00552EAAC98E0335EFDE603063Q00C7EB90523D98002B3Q0012603Q00014Q001A000100013Q0026113Q0002000100010004033Q00020001001257000200023Q0020380002000200032Q004700045Q00202B0004000400042Q001D00020004000200063F00010016000100020004033Q00160001001257000200024Q004700035Q00202B0003000300042Q005C0002000200030020380002000200032Q0047000400013Q001260000500053Q001260000600064Q0053000400064Q004800023Q00022Q0031000100023Q00062D0001002200013Q0004033Q002200012Q004700025Q00202B0002000200070020380002000200082Q0047000400013Q001260000500093Q0012600006000A4Q001D0004000600022Q0031000500014Q004D0002000500010004033Q002A00010012570002000B4Q0047000300013Q0012600004000C3Q0012600005000D4Q0053000300054Q005E00023Q00010004033Q002A00010004033Q000200012Q005D3Q00017Q000E3Q00028Q00026Q00F03F030C3Q0057616974466F724368696C6403083Q002F03B42A0919B02F03043Q004B6776D903093Q004571756970542Q6F6C03043Q007761726E03273Q00F7467F00BC17C9145513BE5ED35B7F18F910C8403012B60BC950301DB75EE555731FA91FC45F3103063Q007EA7341074D903083Q00EA2F238BA418FFC303073Q009CA84E40E0D479030E3Q0046696E6446697273744368696C64030B3Q0037FCAADA02E7AB8E22E9A203043Q00AE678EC5002C3Q0012603Q00014Q001A000100023Q0026113Q0018000100020004033Q0018000100062D0002001100013Q0004033Q001100012Q004700035Q0020380003000300032Q0047000500013Q001260000600043Q001260000700054Q0053000500074Q004800033Q00020020380003000300062Q0031000500024Q004D0003000500010004033Q002B0001001257000300074Q0047000400013Q001260000500083Q001260000600094Q0053000400064Q005E00033Q00010004033Q002B00010026113Q0002000100010004033Q000200012Q0047000300023Q0020380003000300032Q0047000500013Q0012600006000A3Q0012600007000B4Q0053000500074Q004800033Q00022Q0031000100033Q00203800030001000C2Q0047000500013Q0012600006000D3Q0012600007000E4Q0053000500074Q004800033Q00022Q0031000200033Q0012603Q00023Q0004033Q000200012Q005D3Q00017Q00",v17(),...);
