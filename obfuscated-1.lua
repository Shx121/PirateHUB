local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\248\50","\179\214\28\175\128"),function(v42) if (v9(v42,2)==81) then v30=v8(v11(v42,1,1));return "";else local v102=0;local v103;while true do if (0==v102) then v103=v10(v8(v42,16));if v30 then local v128=v13(v103,v30);v30=nil;return v128;else return v103;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v104=0;local v105;while true do if (0==v104) then v105=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + (2 -1))) ;return v105-(v105%1) ;end end else local v106=0;local v107;while true do if (v106==0) then v107=2^(v44-1) ;return (((v43%(v107 + v107))>=v107) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end if (v46==1) then return v47;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==1) then return (v50 * 256) + v49 ;end if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end end end local function v34() local v51,v52,v53,v54=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51 ;end local function v35() local v55=0;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v55==1) then v58=1;v59=(v31(v57,1,20) * (2^32)) + v56 ;v55=2;end if (v55==0) then v56=v34();v57=v34();v55=1;end if (v55==3) then if (v60==0) then if (v59==0) then return v61 * 0 ;else v60=1 -0 ;v58=0;end elseif (v60==2047) then return ((v59==0) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-(2635 -1612) ) * (v58 + (v59/(2^52))) ;end if (v55==2) then v60=v31(v57,21,31);v61=((v31(v57,32)==(2 -1)) and  -1) or 1 ;v55=3;end end end local function v36(v62) local v63;if  not v62 then local v108=0;while true do if (v108==0) then v62=v34();if (v62==0) then return "";end break;end end end v63=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;local v64={};for v78=1, #v63 do v64[v78]=v10(v9(v11(v63,v78,v78)));end return v14(v64);end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v65={};local v66={};local v67={};local v68={v65,v66,nil,v67};local v69=v34();local v70={};for v80=1,v69 do local v81=v32();local v82;if (v81==1) then v82=v32()~=0 ;elseif (v81==2) then v82=v35();elseif (v81==3) then v82=v36();end v70[v80]=v82;end v68[3]=v32();for v84=620 -(555 + 64) ,v34() do local v85=v32();if (v31(v85,932 -(857 + 74) ,1)==0) then local v111=v31(v85,2,3);local v112=v31(v85,572 -(367 + 201) ,6);local v113={v33(),v33(),nil,nil};if (v111==0) then local v119=0;while true do if (v119==0) then v113[3]=v33();v113[4]=v33();break;end end elseif (v111==1) then v113[3]=v34();elseif (v111==(929 -(214 + 713))) then v113[3]=v34() -(2^(5 + 11)) ;elseif (v111==3) then v113[3]=v34() -(2^(3 + 13)) ;v113[4]=v33();end if (v31(v112,1,878 -(282 + 595) )==1) then v113[2]=v70[v113[2]];end if (v31(v112,2,1639 -(1523 + 114) )==1) then v113[3]=v70[v113[3 + 0 ]];end if (v31(v112,3 -0 ,3)==1) then v113[1069 -(68 + 997) ]=v70[v113[4]];end v65[v84]=v113;end end for v86=1,v34() do v66[v86-(1271 -(226 + 1044)) ]=v39();end return v68;end local function v40(v72,v73,v74) local v75=v72[1];local v76=v72[2];local v77=v72[12 -9 ];return function(...) local v88=v75;local v89=v76;local v90=v77;local v91=v38;local v92=1;local v93= -1;local v94={};local v95={...};local v96=v20("#",...) -1 ;local v97={};local v98={};for v109=0,v96 do if (v109>=v90) then v94[v109-v90 ]=v95[v109 + 1 ];else v98[v109]=v95[v109 + (118 -(32 + 85)) ];end end local v99=(v96-v90) + 1 ;local v100;local v101;while true do local v110=0;while true do if (v110==1) then if (v101<=(10 + 0)) then if (v101<=4) then if (v101<=1) then if (v101>0) then v98[v100[2]]=v98[v100[3]][v100[4]];elseif v98[v100[2]] then v92=v92 + 1 ;else v92=v100[1 + 2 ];end elseif (v101<=2) then local v137=v100[2];do return v21(v98,v137,v93);end elseif (v101==3) then local v147=v100[2];local v148=v98[v147];for v186=v147 + 1 ,v93 do v15(v148,v98[v186]);end else local v149=0;local v150;while true do if (v149==0) then v150=v100[2];v98[v150]=v98[v150](v21(v98,v150 + 1 ,v100[3]));break;end end end elseif (v101<=7) then if (v101<=5) then v92=v100[3];elseif (v101>6) then for v187=v100[959 -(892 + 65) ],v100[3] do v98[v187]=nil;end else local v151=v89[v100[3]];local v152;local v153={};v152=v18({},{[v7("\96\121\237\79\220\202\180","\101\63\38\132\33\184\175\204")]=function(v189,v190) local v191=v153[v190];return v191[1][v191[2]];end,[v7("\123\137\229\43\19\78\194\21\65\174","\113\36\214\139\78\100\39\172")]=function(v192,v193,v194) local v195=0;local v196;while true do if (v195==0) then v196=v153[v193];v196[2 -1 ][v196[2]]=v194;break;end end end});for v197=1,v100[4] do local v198=0;local v199;while true do if (v198==0) then v92=v92 + 1 ;v199=v88[v92];v198=1;end if (v198==1) then if (v199[1 -0 ]==18) then v153[v197-(1 -0) ]={v98,v199[3]};else v153[v197-1 ]={v73,v199[3]};end v97[ #v97 + (351 -(87 + 263)) ]=v153;break;end end end v98[v100[2]]=v40(v151,v152,v74);end elseif (v101<=8) then local v139=0;local v140;local v141;local v142;local v143;while true do if (v139==0) then v140=nil;v141,v142=nil;v143=nil;v139=1;end if (v139==6) then v92=v92 + 1 ;v100=v88[v92];v143=v100[2];v139=7;end if (v139==4) then v100=v88[v92];v143=v100[2];v141,v142=v91(v98[v143](v21(v98,v143 + (181 -(67 + 113)) ,v100[3])));v139=5;end if (7==v139) then v98[v143]=v98[v143](v21(v98,v143 + 1 ,v93));v92=v92 + 1 ;v100=v88[v92];v139=8;end if (v139==1) then v98[v100[2]]=v100[3];v92=v92 + 1 ;v100=v88[v92];v139=2;end if (v139==5) then v93=(v142 + v143) -1 ;v140=0;for v219=v143,v93 do local v220=0;while true do if (0==v220) then v140=v140 + 1 ;v98[v219]=v141[v140];break;end end end v139=6;end if (v139==3) then v100=v88[v92];v98[v100[2]]=v100[3];v92=v92 + 1 ;v139=4;end if (v139==8) then if (v98[v100[2]]==v100[4]) then v92=v92 + 1 ;else v92=v100[3];end break;end if (v139==2) then v143=v100[2];v98[v143]=v98[v143](v21(v98,v143 + 1 ,v100[3]));v92=v92 + 1 ;v139=3;end end elseif (v101>(7 + 2)) then local v155;local v156;local v157,v158;local v159;v98[v100[2]]=v73[v100[3]];v92=v92 + 1 ;v100=v88[v92];v98[v100[2]]=v73[v100[3]];v92=v92 + (2 -1) ;v100=v88[v92];v98[v100[2]]=v73[v100[3 + 0 ]];v92=v92 + 1 ;v100=v88[v92];v98[v100[2]]={};v92=v92 + 1 ;v100=v88[v92];v98[v100[2]]=v73[v100[3]];v92=v92 + 1 ;v100=v88[v92];v98[v100[7 -5 ]]=v98[v100[3]];v92=v92 + 1 ;v100=v88[v92];for v214=v100[2],v100[3] do v98[v214]=nil;end v92=v92 + 1 ;v100=v88[v92];v159=v100[2];v157,v158=v91(v98[v159](v21(v98,v159 + 1 ,v100[3])));v93=(v158 + v159) -(953 -(802 + 150)) ;v156=0;for v216=v159,v93 do local v217=0;while true do if (v217==0) then v156=v156 + 1 ;v98[v216]=v157[v156];break;end end end v92=v92 + 1 ;v100=v88[v92];v159=v100[2];v155=v98[v159];for v218=v159 + 1 ,v93 do v15(v155,v98[v218]);end else local v168=0;local v169;while true do if (v168==0) then v169=v100[2];v98[v169]=v98[v169](v21(v98,v169 + 1 ,v93));break;end end end elseif (v101<=15) then if (v101<=12) then if (v101==11) then v98[v100[2]]={};elseif (v98[v100[2]]==v100[4]) then v92=v92 + (2 -1) ;else v92=v100[3];end elseif (v101<=13) then do return;end elseif (v101>14) then local v171=0;local v172;local v173;local v174;local v175;while true do if (v171==0) then v172=v100[3 -1 ];v173,v174=v91(v98[v172](v21(v98,v172 + 1 ,v100[3])));v171=1;end if (v171==2) then for v234=v172,v93 do v175=v175 + (998 -(915 + 82)) ;v98[v234]=v173[v175];end break;end if (v171==1) then v93=(v174 + v172) -1 ;v175=0 + 0 ;v171=2;end end else v98[v100[2]]=v73[v100[3]];end elseif (v101<=18) then if (v101<=16) then v98[v100[2]]=v40(v89[v100[3]],nil,v74);elseif (v101==(48 -31)) then v98[v100[2]]=v74[v100[3]];else v98[v100[2]]=v98[v100[3]];end elseif (v101<=19) then do return v98[v100[2]]();end elseif (v101==20) then v98[v100[2]]=v100[3];else local v184=0;local v185;while true do if (v184==0) then v185=v100[2];do return v98[v185](v21(v98,v185 + 1 ,v100[3]));end break;end end end v92=v92 + 1 + 0 ;break;end if (v110==0) then v100=v88[v92];v101=v100[1];v110=1;end end end end;end return v40(v39(),{},v28)(...);end return v23(v7("\25\28\129\57\140\97\96\156\40\140\101\96\253\46\143\4\99\253\47\143\98\103\250\42\138\108\101\136\46\139\101\96\253\45\143\4\99\253\46\248\99\98\250\44\138\102\101\245\40\143\101\107\254\73\140\101\100\249\46\250\99\22\250\45\138\17\101\255\46\137\98\97\253\43\140\96\96\156\40\140\98\99\251\43\138\100\97\156\46\255\101\99\253\92\143\4\99\253\41\142\100\98\254\73\140\101\99\252\43\237\101\99\255\40\140\100\102\156\40\140\101\97\253\40\141\103\98\252\40\140\101\98\253\40\140\102\96\156\40\140\100\97\252\41\140\101\99\255\40\140\101\103\254\73\140\101\97\156\40\138\101\99\253\43\143\4\99\253\40\141\101\99\253\44\142\4\99\253\41\142\102\2\253\40\140\100\103\156\40\140\100\97\245\73\140\101\98\255\43\237\101\99\253\42\136\4\99\253\41\142\102\2\253\40\140\102\103\156\40\140\100\97\253\40\140\97\99\253\40\143\97\2\253\40\141\102\99\253\40\136\101\99\253\41\136\4\99\253\40\142\101\99\253\44\138\4\99\253\40\248\102\2\253\40\140\100\96\156\40\140\101\98\254\73\140\101\99\249\43\237\101\99\253\42\139\4\99\253\44\140\101\96\253\45\143\4\99\253\43\253\103\102\251\44\142\23\96\140\42\237\101\96\254\73\140\101\97\248\46\136\103\17\253\42\138\4\99\253\94\140\102\21\253\40\141\23\96\156\40\140\101\97\252\40\132\4\99\253\40\253\101\99\253\41\132\4\99\253\40\142\101\99\253\41\138\4\99\253\40\143\101\99\253\41\138\4\99\253\40\136\109\2\253\40\140\96\99\253\40\142\99\2\253\40\140\99\107\156\40\140\101\100\253\40\140\98\101\156\40\140\101\102\253\40\140\98\101\156\40\140\101\103\254\73\140\101\99\252\40\140\103\99\253\41\140\101\99\249\40\140\101\103\253\40\140\100\99\253\41\142\101\107\253\40\140\96\99\253\40\142\99\2\253\40\140\102\99\253\40\137\101\99\253\42\140\101\98\255\42\237\101\99\253\44\140\101\99\254\46\237\101\99\253\42\140\101\99\249\46\237\101\99\253\41\143\4\99\253\40\142\101\99\255\46\142\4\99\253\40\141\101\99\252\47\140\101\99\252\40\140\101\103\253\40\140\97\99\248\43\237\101\99\252\47\140\101\99\252\42\237\101\99\252\42\140\101\99\252\46\237\101\99\253\90\140\101\99\255\46\237\101\99\252\45\140\101\99\252\40\140\101\97\249\73\140\101\99\255\40\140\101\98\248\73\140\101\99\249\40\137\102\2\253\40\141\20\99\253\40\141\103\2\253\40\140\16\99\253\40\141\101\99\253\43\136\4\99\253\41\143\101\99\253\41\140\101\99\252\44\237\101\99\253\42\140\101\99\252\46\237\101\99\253\92\143\4\99\253\40\141\102\2\253\40\140\100\96\156\40\140\101\98\254\73\140\101\99\255\46\237\101\99\139\40\143\19\99\252\40\137\102\2\253\40\140\99\103\156\40\140\101\96\253\40\140\100\96\156\40\140\101\103\253\45\143\4\99\253\40\143\101\99\253\41\140\101\99\249\40\137\102\2\253\40\140\97\99\253\40\141\101\99\255\40\140\100\99\253\40\141\102\2\253\40\140\100\97\156\40\140\101\23\254\73\140\101\99\252\47\237\101\99","\188\85\83\205\24"),v17(),...);