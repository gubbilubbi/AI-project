%Program used to combine all seperate .mat files together
%into one big mat-file later used as input to the neural network.

function matrix = createMatrix()

img1 = load('img1.mat');
img2 = load('img2.mat');
img3 = load('img3.mat');
img4 = load('img4.mat');
img5 = load('img5.mat');
img6 = load('img6.mat');
img7 = load('img7.mat');
img8 = load('img8.mat');
img9 = load('img9.mat');
img10 = load('img10.mat');
img11 = load('img11.mat');
img12 = load('img12.mat');
img13 = load('img13.mat');
img14 = load('img14.mat');
img15 = load('img15.mat');
img16 = load('img16.mat');
img17 = load('img17.mat');
img18 = load('img18.mat');
img19 = load('img19.mat');
img20 = load('img20.mat');
img21 = load('img21.mat');
img22 = load('img22.mat');
img23 = load('img23.mat');
img24 = load('img24.mat');
img25 = load('img25.mat');
img26 = load('img26.mat');
img27 = load('img27.mat');
img28 = load('img28.mat');
img29 = load('img29.mat');
img30 = load('img30.mat');
img31 = load('img31.mat');
img32 = load('img32.mat');
img33 = load('img33.mat');
img34 = load('img34.mat');
img35 = load('img35.mat');
img36 = load('img36.mat');
img37 = load('img37.mat');
img38 = load('img38.mat');
img39 = load('img39.mat');
img40 = load('img40.mat');
img41 = load('img41.mat');
img42 = load('img42.mat');
img43 = load('img43.mat');
img44 = load('img44.mat');
img45 = load('img45.mat');
img46 = load('img46.mat');
img47 = load('img47.mat');
img48 = load('img48.mat');
img49 = load('img49.mat');
img50 = load('img50.mat');
img51 = load('img51.mat');
img52 = load('img52.mat');
img53 = load('img53.mat');
img54 = load('img54.mat');
img55 = load('img55.mat');
img56 = load('img56.mat');
img57 = load('img57.mat');
img58 = load('img58.mat');
img59 = load('img59.mat');
img60 = load('img60.mat');
img61 = load('img61.mat');
img62 = load('img62.mat');
img63 = load('img63.mat');
img64 = load('img64.mat');
img65 = load('img65.mat');
img66 = load('img66.mat');
img67 = load('img67.mat');
img68 = load('img68.mat');
img69 = load('img69.mat');
img70 = load('img70.mat');
img71 = load('img71.mat');
img72 = load('img72.mat');
img73 = load('img73.mat');
img74 = load('img74.mat');
img75 = load('img75.mat');
img76 = load('img76.mat');
img77 = load('img77.mat');
img78 = load('img78.mat');
img79 = load('img79.mat');
img80 = load('img80.mat');
img81 = load('img81.mat');
img82 = load('img82.mat');
img83 = load('img83.mat');
img84 = load('img84.mat');
img85 = load('img85.mat');
img86 = load('img86.mat');
img87 = load('img87.mat');
img88 = load('img88.mat');
img89 = load('img89.mat');
img90 = load('img90.mat');
img91 = load('img91.mat');
img92 = load('img92.mat');
img93 = load('img93.mat');
img94 = load('img94.mat');
img95 = load('img95.mat');
img96 = load('img96.mat');
img97 = load('img97.mat');
img98 = load('img98.mat');
img99 = load('img99.mat');
img100 = load('img100.mat');
img101 = load('img101.mat');
img102 = load('img102.mat');
img103 = load('img103.mat');
img104 = load('img104.mat');
img105 = load('img105.mat');
img106 = load('img106.mat');
img107 = load('img107.mat');
img108 = load('img108.mat');
img109 = load('img109.mat');
img110 = load('img110.mat');
img111 = load('img111.mat');
img112 = load('img112.mat');
img113 = load('img113.mat');
img114 = load('img114.mat');
img115 = load('img115.mat');
img116 = load('img116.mat');
img117 = load('img117.mat');
img118 = load('img118.mat');
img119 = load('img119.mat');
img120 = load('img120.mat');
img121 = load('img121.mat');
img122 = load('img122.mat');
img123 = load('img123.mat');
img124 = load('img124.mat');
img125 = load('img125.mat');
img126 = load('img126.mat');
img127 = load('img127.mat');
img128 = load('img128.mat');
img129 = load('img129.mat');
img130 = load('img130.mat');
img131 = load('img131.mat');

img1T = transpose(img1.A(:));
img2T = transpose(img2.A(:));
img3T = transpose(img3.A(:));
img4T = transpose(img4.A(:));
img5T = transpose(img5.A(:));
img6T = transpose(img6.A(:));
img7T = transpose(img7.A(:));
img8T = transpose(img8.A(:));
img9T = transpose(img9.A(:));
img10T = transpose(img10.A(:));
img11T = transpose(img11.A(:));
img12T = transpose(img12.A(:));
img13T = transpose(img13.A(:));
img14T = transpose(img14.A(:));
img15T = transpose(img15.A(:));
img16T = transpose(img16.A(:));
img17T = transpose(img17.A(:));
img18T = transpose(img18.A(:));
img19T = transpose(img19.A(:));
img20T = transpose(img20.A(:));
img21T = transpose(img21.A(:));
img22T = transpose(img22.A(:));
img23T = transpose(img23.A(:));
img24T = transpose(img24.A(:));
img25T = transpose(img25.A(:));
img26T = transpose(img26.A(:));
img27T = transpose(img27.A(:));
img28T = transpose(img28.A(:));
img29T = transpose(img29.A(:));
img30T = transpose(img30.A(:));
img31T = transpose(img31.A(:));
img32T = transpose(img32.A(:));
img33T = transpose(img33.A(:));
img34T = transpose(img34.A(:));
img35T = transpose(img35.A(:));
img36T = transpose(img36.A(:));
img37T = transpose(img37.A(:));
img38T = transpose(img38.A(:));
img39T = transpose(img39.A(:));
img40T = transpose(img40.A(:));
img41T = transpose(img41.A(:));
img42T = transpose(img42.A(:));
img43T = transpose(img43.A(:));
img44T = transpose(img44.A(:));
img45T = transpose(img45.A(:));
img46T = transpose(img46.A(:));
img47T = transpose(img47.A(:));
img48T = transpose(img48.A(:));
img49T = transpose(img49.A(:));
img50T = transpose(img50.A(:));
img51T = transpose(img51.A(:));
img52T = transpose(img52.A(:));
img53T = transpose(img53.A(:));
img54T = transpose(img54.A(:));
img55T = transpose(img55.A(:));
img56T = transpose(img56.A(:));
img57T = transpose(img57.A(:));
img58T = transpose(img58.A(:));
img59T = transpose(img59.A(:));
img60T = transpose(img60.A(:));
img61T = transpose(img61.A(:));
img62T = transpose(img62.A(:));
img63T = transpose(img63.A(:));
img64T = transpose(img64.A(:));
img65T = transpose(img65.A(:));
img66T = transpose(img66.A(:));
img67T = transpose(img67.A(:));
img68T = transpose(img68.A(:));
img69T = transpose(img69.A(:));
img70T = transpose(img70.A(:));
img71T = transpose(img71.A(:));
img72T = transpose(img72.A(:));
img73T = transpose(img73.A(:));
img74T = transpose(img74.A(:));
img75T = transpose(img75.A(:));
img76T = transpose(img76.A(:));
img77T = transpose(img77.A(:));
img78T = transpose(img78.A(:));
img79T = transpose(img79.A(:));
img80T = transpose(img80.A(:));
img81T = transpose(img81.A(:));
img82T = transpose(img82.A(:));
img83T = transpose(img83.A(:));
img84T = transpose(img84.A(:));
img85T = transpose(img85.A(:));
img86T = transpose(img86.A(:));
img87T = transpose(img87.A(:));
img88T = transpose(img88.A(:));
img89T = transpose(img89.A(:));
img90T = transpose(img90.A(:));
img91T = transpose(img91.A(:));
img92T = transpose(img92.A(:));
img93T = transpose(img93.A(:));
img94T = transpose(img94.A(:));
img95T = transpose(img95.A(:));
img96T = transpose(img96.A(:));
img97T = transpose(img97.A(:));
img98T = transpose(img98.A(:));
img99T = transpose(img99.A(:));
img100T = transpose(img100.A(:));
img101T = transpose(img101.A(:));
img102T = transpose(img102.A(:));
img103T = transpose(img103.A(:));
img104T = transpose(img104.A(:));
img105T = transpose(img105.A(:));
img106T = transpose(img106.A(:));
img107T = transpose(img107.A(:));
img108T = transpose(img108.A(:));
img109T = transpose(img109.A(:));
img110T = transpose(img110.A(:));
img111T = transpose(img111.A(:));
img112T = transpose(img112.A(:));
img113T = transpose(img113.A(:));
img114T = transpose(img114.A(:));
img115T = transpose(img115.A(:));
img116T = transpose(img116.A(:));
img117T = transpose(img117.A(:));
img118T = transpose(img118.A(:));
img119T = transpose(img119.A(:));
img120T = transpose(img120.A(:));
img121T = transpose(img121.A(:));
img122T = transpose(img122.A(:));
img123T = transpose(img123.A(:));
img124T = transpose(img124.A(:));
img125T = transpose(img125.A(:));
img126T = transpose(img126.A(:));
img127T = transpose(img127.A(:));
img128T = transpose(img128.A(:));
img129T = transpose(img129.A(:));
img130T = transpose(img130.A(:));
img131T = transpose(img131.A(:));

matrix = [img1T; img2T; img3T; img4T; img5T; img6T; img7T; img8T; img9T; img10T; img11T; img12T; img13T; img14T; img15T; img16T; img17T; img18T; img19T; img20T; img21T; img22T; img23T; img24T; img25T; img26T; img27T; img28T; img29T; img30T; img31T; img32T; img33T; img34T; img35T; img36T; img37T; img38T; img39T; img40T; img41T; img42T; img43T; img44T; img45T; img46T; img47T; img48T; img49T; img50T; img51T; img52T; img53T; img54T; img55T; img56T; img57T; img58T; img59T; img60T; img61T; img62T; img63T; img64T; img65T; img66T; img67T; img68T; img69T; img70T; img71T; img72T; img73T; img74T; img75T; img76T; img77T; img78T; img79T; img80T; img81T; img82T; img83T; img84T; img85T; img86T; img87T; img88T; img89T; img90T; img91T; img92T; img93T; img94T; img95T; img96T; img97T; img98T; img99T; img100T; img101T; img102T; img103T; img104T; img105T; img106T; img107T; img108T; img109T; img110T; img111T; img112T; img113T; img114T; img115T; img116T; img117T; img118T; img119T; img120T; img121T; img122T; img123T; img124T; img125T; img126T; img127T; img128T; img129T; img130T; img131T;];

sel = randperm(size(matrix, 1));
sel = sel(1:25);

displayData(matrix(sel, :));

%displayData(matrix);
return;