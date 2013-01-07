# encoding: utf-8

module Brands

  BRANDS = {
    "ALFA ROMEO" =>         {:rating => 10000, :brand => true,  :catalog => true },
    "AUDI" =>               {:rating => 10000, :brand => true,  :catalog => true },
    "BMW" =>                {:rating => 10000, :brand => true,  :catalog => true },
    "CADILLAC" =>           {:rating => 10000, :brand => true,  :catalog => true },
    "CHERY" =>              {:rating => 10000, :brand => true,  :catalog => true },
    "CHEVROLET" =>          {:rating => 10000, :brand => true,  :catalog => true },
    "CHRYSLER" =>           {:rating => 10800, :brand => true,  :catalog => true },
    "CITROEN" =>            {:rating => 10500, :brand => true,  :catalog => true, :title => "CITRO&#203;N" },
    "DAEWOO" =>             {:rating => 10000, :brand => true,  :catalog => true },
    "DAIHATSU" =>           {:rating => 10000, :brand => true,  :catalog => true },
    "DODGE" =>              {:rating => 10000, :brand => true,  :catalog => true },
    "FIAT" =>               {:rating => 10000, :brand => true,  :catalog => true },
    "FORD" =>               {:rating => 10000, :brand => true,  :catalog => true },
    "HONDA" =>              {:rating => 10000, :brand => true,  :catalog => true },
    "HYUNDAI" =>            {:rating => 10000, :brand => true,  :catalog => true },
    "HYUNDAI / KIA" =>      {:rating => 10000, :brand => true, :ref => ["HYUNDAI", "KIA", "MOBIS"]},
    "HYUNDAI/KIA" =>        {:rating => 10000, :brand => true, :ref => ["HYUNDAI", "KIA", "MOBIS"]},
    "INFINITI" =>           {:rating => 10000, :brand => true,  :catalog => true },
    "ISUZU" =>              {:rating => 10000, :brand => true,  :catalog => true },
    "JAGUAR" =>             {:rating => 10000, :brand => true,  :catalog => true },
    "JEEP" =>               {:rating => 10000, :brand => true,  :catalog => true },
    "KIA" =>                {:rating => 10000, :brand => true,  :catalog => true },
    "LAND ROVER" =>         {:rating => 10000, :brand => true,  :catalog => true, :title => "LAND&#160;ROVER"},
    "LEXUS" =>              {:rating => 10000, :brand => true,  :catalog => true },
    "MAZDA" =>              {:rating => 10000, :brand => true,  :catalog => true },
    "MERCEDES-BENZ" =>      {:rating => 10000, :brand => true,  :catalog => true, :title => "MERCEDES&#8209;BENZ"},
    "MINI" =>               {:rating => 10000, :brand => true,  :catalog => true },
    "MITSUBISHI" =>         {:rating => 10900, :brand => true,  :catalog => true },
    "NISSAN" =>             {:rating => 10000, :brand => true,  :catalog => true },
    "OPEL" =>               {:rating => 10000, :brand => true,  :catalog => true },
    "PEUGEOT" =>            {:rating => 10900, :brand => true,  :catalog => true },
    "PEUGEOT / CITROEN" =>  {:rating => 10800, :brand => true, :ref => ["PEUGEOT", "CITROEN"] },
    "PEUGEOT/CITROEN" =>    {:rating => 10800, :brand => true, :ref => ["PEUGEOT", "CITROEN"] },
    "RENAULT" =>            {:rating => 10000, :brand => true,  :catalog => true },
    "SAAB" =>               {:rating => 10000, :brand => true,  :catalog => true },
    "SEAT" =>               {:rating => 10000, :brand => true,  :catalog => true },
    "SKODA" =>              {:rating => 10000, :brand => true,  :catalog => true, :title => "&#352;KODA" },
    "SSANGYONG" =>          {:rating => 10000, :brand => true,  :catalog => true },
    "SUBARU" =>             {:rating => 10000, :brand => true,  :catalog => true },
    "SUZUKI" =>             {:rating => 10000, :brand => true,  :catalog => true },
    "TOYOTA" =>             {:rating => 10900, :brand => true,  :catalog => true },
    "VOLKSWAGEN" =>         {:rating => 10000, :brand => true,  :catalog => true },
    "VOLVO" =>              {:rating => 10000, :brand => true,  :catalog => true },
    "AKEBONO" =>            {:rating => 9400, :catalog => true },
    "NIBK" =>               {:rating => 8000, :catalog => true },
    "ALLIED NIPPON" =>      {:rating => 6000, :catalog => true },
    "SIDEM" =>              {:rating => 6000, :catalog => true },
    "FEBEST" =>             {:rating => 6000, :catalog => true },
    "NIPPARTS" =>           {:rating => 7400, :catalog => true },
    "CHAMPION" =>           {:rating => 2000, :catalog => true },
    "MOBIS" =>              {:rating => 10000, :brand => true },
    "GENERAL MOTORS" =>     {:rating => 10000, :brand => true, :ref => ["CADILLAC", "CHEVROLET", "OPEL"] }, 
    "KYB" =>                {:rating => 9000, :catalog => true, :title => "KYB/KAYABA" },
    "KAYABA" =>             {:rating => 9000, :catalog => false, :ref => ["KYB"] },
    "AIKO" =>               {:rating => 7000, :catalog => true },
    "AIKO-SAKURA" =>        {:rating => 6400, :catalog => true },
    "ASHIKA" =>             {:rating => 7000, :catalog => true },
    "AVANTECH" =>           {:rating => 7000, :catalog => true },
    "BOSCH" =>              {:rating => 9000, :catalog => true },
    "TSN" =>                {:rating => 3000, :title => "TSN/Tsitron", :catalog => true },
    "PARTS-MALL" =>         {:rating => 8000, :catalog => true, :file => "parts_mall" },
    "JS ASAKASHI" =>        {:rating => 7000, :catalog => true },
    "DENSO" =>              {:rating => 8000, :catalog => true },
    "DOLZ" =>               {:rating => 8000, :catalog => true },
    "DRIVE JOY" =>          {:rating => 9400, :catalog => true },
    "FILTRON" =>            {:rating => 7000, :catalog => true },
    "FRAM" =>               {:rating => 8000, :catalog => true },
    "GOODWILL" =>           {:rating => 6000, :catalog => true },
    "HENGST" =>             {:rating => 8000, :catalog => true },
    "HERTH+BUSS" =>         {:rating => 7400, :catalog => true },
    "JAPAN CARS" =>         {:rating => 7400, :catalog => true },
    "SCT" =>                {:rating => 6000 },
    "VAICO" =>              {:rating => 7000, :catalog => true },
    "VEMO" =>               {:rating => 7000, :catalog => true },
    "SAKURA" =>             {:rating => 6000, :catalog => true },
    "KOLBENSCHMIDT" =>      {:rating => 9400, :catalog => true },
    "MASUMA" =>             {:rating => 6400, :catalog => true },
    "MANN" =>               {:rating => 7000, :catalog => true },
    "JAPANPARTS" =>         {:rating => 6400, :catalog => true },
    "MAHLE / KNECHT" =>     {:rating => 9000, :catalog => true, :title => "MAHLE/KNECHT" },
    "MAHLE" =>              {:rating => 9000, :ref => ["MAHLE / KNECHT"] },
    "KNECHT" =>             {:rating => 9000, :ref => ["MAHLE / KNECHT"] },
    "UNION" =>              {:rating => 8000, :catalog => true },
    "MICRO" =>              {:rating => 9000, :catalog => true },
    "VALEO" =>              {:rating => 8000, :catalog => true },
    "RBI" =>                {:rating => 5000, :catalog => true },
    "DELTA" =>              {:rating => 8000 },
    "LYNXAUTO" =>           {:rating => 7000, :catalog => true },
    "CTR" =>                {:rating => 7000, :catalog => true },
    "HANSE" =>              {:rating => 5000, :catalog => true },
    "STELLOX" =>            {:rating => 6000 },
    "SWAG" =>               {:rating => 8000, :catalog => true },
    "AKITAKA" =>            {:rating => 5000, :catalog => true },
    "FEBI" =>               {:rating => 7000, :catalog => true },
    "MEYLE" =>              {:rating => 8000, :catalog => true },
    "OPTIMAL" =>            {:rating => 7000, :catalog => true },
    "MOOG" =>               {:rating => 8000, :catalog => true },
    "QSTEN" =>              {:rating => 9000, :catalog => true },
    "LEMFORDER" =>          {:rating => 9000, :catalog => true, :title => "LEMF&#214;RDER" },
    "ABS" =>                {:rating => 7000, :catalog => true },
    "DELPHI" =>             {:rating => 8000, :catalog => true },
    "BLUE PRINT" =>         {:rating => 7000, :catalog => true },
    "NK" =>                 {:rating => 6000, :catalog => true },
    "MAPCO" =>              {:rating => 6000, :catalog => true },
    "GMB" =>                {:rating => 8000, :catalog => true },
    "IMPERGOM" =>           {:rating => 7000, :catalog => true },
    "SNR" =>                {:rating => 9000, :catalog => true },
    "KOYO" =>               {:rating => 9400, :catalog => true },
    "SKF" =>                {:rating => 9000, :catalog => true },
    "LUK" =>                {:rating => 9000, :catalog => true },
    "INA" =>                {:rating => 9000, :catalog => true },
    "RUVILLE" =>            {:rating => 8000, :catalog => true },
    "DAYCO" =>              {:rating => 8000, :catalog => true },
    "ACDELCO" =>            {:rating => 9400, :catalog => true},
    "AC DELCO" =>           {:rating => 9400, :ref => ["ACDELCO"]},
    "NISSENS" =>            {:rating => 8000, :catalog => true },
    "AVA" =>                {:rating => 6000, :catalog => true },
    "LUCAS / TRW" =>        {:rating => 8000, :catalog => true, :title => "LUCAS/TRW" },
    "TRW" =>                {:rating => 8000, :ref => ["LUCAS / TRW"] },
    "LUCAS" =>              {:rating => 8000, :ref => ["LUCAS / TRW"] },
    "NACHI" =>              {:rating => 9000 },
    "555" =>                {:rating => 9000, :file => "brand_555", :catalog => true },
    "SINOLAR" =>            {:rating => 5000 },
    "UFI" =>                {:rating => 7000, :catalog => true },
    "TOPFILS" =>            {:rating => 6000, :catalog => true },
    "AIRTEX" =>             {:rating => 8000, :catalog => true },
    "HEPU" =>               {:rating => 9000, :catalog => true },
    "MANDO" =>              {:rating => 8000, :catalog => true },
    "AKYOTO" =>             {:rating => 5000, :catalog => true },
    "KASHIYAMA" =>          {:rating => 6000, :catalog => true },
    "TEXTAR" =>             {:rating => 9000, :catalog => true },
    "ICER" =>               {:rating => 7000, :catalog => true },
    "MINTEX" =>             {:rating => 7000, :catalog => true },
    "PAGID" =>              {:rating => 9000, :catalog => true },
    "FERODO" =>             {:rating => 8000, :catalog => true },
    "GIRLING" =>            {:rating => 8000, :catalog => true },
    "NISSHINBO" =>          {:rating => 9000, :catalog => true },
    "JNBK" =>               {:rating => 6000, :catalog => true },
    "FRICTIONMASTER" =>     {:rating => 8000, :catalog => true },
    "ATE" =>                {:rating => 9000, :catalog => true },
    "NTN" =>                {:rating => 9400, :catalog => true },
    "ASVA" =>               {:rating => 5000, :catalog => true },
    "ORIPARTS" =>           {:rating => 7600 },
    "ALCO" =>               {:rating => 7000, :catalog => true },
    "ALCO FILTERS" =>       {:ref => ["ALCO"]},
    "BREMI" =>              {:rating => 8000, :catalog => true },
    "CORTECO" =>            {:rating => 8000, :catalog => true },
    "GATES" =>              {:rating => 9000, :catalog => true },
    # TODO Удалить => когда сделаю нормально производителей
    "ТОЧКА ОПОР" =>         {:rating => 7000 },
    "ТОЧКА ОПОРЫ" =>        {:rating => 7000 },
    "HELLA" =>              {:rating => 9000, :catalog => true },
    "STARMANN" =>           {:rating => 6000 },
    "FLENNOR" =>            {:rating => 7000, :catalog => true },
    "TYG" =>                {:rating => 6000, :catalog => true },
    "TYC" =>                {:rating => 6000, :catalog => true },
    "DEPO" =>               {:rating => 8000, :catalog => true },
    "RAYBESTOS" =>          {:rating => 7000, :catalog => true },
    "LPR" =>                {:rating => 7000, :catalog => true },
    "BREMBO" =>             {:rating => 9000, :catalog => true },
    "FACET" =>              {:rating => 8000 },
    "FAE" =>                {:rating => 8000 },
    "HANS PRIES" =>         {:rating => 7400 },
    "GLASER" =>             {:rating => 8000 },
    "PAYEN" =>              {:rating => 9000, :catalog => true },
    "VICTOR REINZ" =>       {:rating => 9000, :catalog => true },
    "AJUSA" =>              {:rating => 8000, :catalog => true },
    "GOETZE" =>             {:rating => 8000, :catalog => true },
    "ELRING" =>             {:rating => 8000, :catalog => true },
    "LAUTRETTE" =>          {:rating => 8000 },
    "JP" =>                 {:rating => 8000, :catalog => true },
    "JP GROUP" =>           {:ref => ["JP"]},
    "PURFLUX" =>            {:rating => 8000 },
    "PIERBURG" =>           {:rating => 9000, :catalog => true },
    "SACHS" =>              {:rating => 9000, :catalog => true },
    "BEHR" =>               {:rating => 9000, :catalog => true },
    "BANDO" =>              {:rating => 9000, :catalog => true },
    "CONTITECH" =>          {:rating => 9000, :catalog => true },
    "BOSAL" =>              {:rating => 9000, :catalog => true },
    "MITSUBOSHI" =>         {:rating => 9000, :catalog => true },
    "SUN" =>                {:rating => 8000, :catalog => true },
    "BOGE" =>               {:rating => 9000, :catalog => true },
    "BILSTEIN" =>           {:rating => 8000, :catalog => true },
    "REMSA" =>              {:rating => 8000, :catalog => true },
    "FENOX" =>              {:rating => 5000, :catalog => true },
    "ROADHOUSE" =>          {:rating => 8000, :catalog => true },
    "ROAD HOUSE" =>         {:ref => ["ROADHOUSE"]},
    "RH" =>                 {:ref => ["ROADHOUSE"]},
    "R H" =>                {:ref => ["ROADHOUSE"]},
    "TOKICO" =>             {:rating => 9000, :catalog => true },
    "MONROE" =>             {:rating => 8000, :catalog => true },
    "METELLI" =>            {:rating => 8000, :catalog => true },
    "ZIMMERMANN" =>         {:rating => 9000, :catalog => true },
    "NSK" =>                {:rating => 9400, :catalog => true },
    "ADVICS" =>             {:rating => 9400, :catalog => true  },
    "AISIN" =>              {:rating => 9400, :catalog => true },
    "AL-KO" =>              {:rating => 6000, :catalog => true },
    "ALKO" =>               {:rating => 6000, :ref => ["AL-KO"] },
    "SUMITOMO" =>           {:rating => 9400, :catalog => true },
    "STONE" =>              {:rating => 9000 },
    "SIGNEDA" =>            {:rating => 6000 },
    "SEIWA" =>              {:rating => 9000 },
    "SHINKAI" =>            {:rating => 5000 },
    "XYG" =>                {:rating => 7000 },
    "WIX" =>                {:rating => 7000 },
    "WAHLER" =>             {:rating => 8000, :catalog => true },
    "VTR" =>                {:rating => 5000 },
    "VIC" =>                {:rating => 9000, :catalog => true },
    "VDO" =>                {:rating => 9000 },
    "JURID" =>              {:rating => 9000, :catalog => true },
    "NGK" =>                {:rating => 9000, :catalog => true },
    "AE" =>                 {:rating => 8000, :catalog => true },
    "BERU" =>               {:rating => 8000, :catalog => true },
    "MUSASHI" =>            {:rating => 9000, :catalog => true },
    "API" =>                {:catalog => true, :title => "AP/API" },
    "AP" =>                 {:ref => ["API"] },
    "MOUNTAIN" =>           {:catalog => false},
    "TOKAI" =>              {:catalog => false },
    "NISSIN" =>             {:catalog => true },
    "SHINKO" =>             {:catalog => false },
    "AUTOLITE" =>           {:catalog => true },
    "FAG" =>                {:catalog => true },
    "ASAHI" =>              {:catalog => true },
    "DORMAN" =>             {:catalog => true },
    "BESF1TS" =>            {:catalog => true },
    "MOTGUM" =>             {:catalog => true },
    "ZF" =>                 {:catalog => true },
    "PHILIPS" =>            {:catalog => true },
    "WP" =>                 {:catalog => true },
    "SASIC" =>              {:catalog => true },
    "SBS" =>                {:catalog => true },
    "OSRAM" =>              {:catalog => true },
    "FRI.TECH." =>          {:catalog => true, :file => "fri_tech" },
    "ABE" =>                {:catalog => true },
    "ADRIAUTO" =>           {:catalog => true },
    "AGC" =>                {:catalog => true },
    "ALKAR" =>              {:catalog => true },
    "AMD" =>                {:catalog => true },
    "ASSO" =>               {:catalog => true },
    "BRECK" =>              {:catalog => true },
    "CARDONE" =>            {:catalog => true },
    "CX" =>                 {:catalog => true },
    "DBA" =>                {:catalog => true },
    "EGR" =>                {:catalog => true },
    "FERROZ" =>             {:catalog => true },
    "GKN" =>                {:catalog => true },
    "GRAF" =>               {:catalog => true },
    "GTR" =>                {:catalog => true },
    "JD" =>                 {:catalog => true },
    "JUST DRIVE" =>         {:rating => 6000, :ref => ["JD"] },
    "ETG" =>                {:catalog => true },
    "HANKOOK" =>            {:catalog => true },
    "AD" =>                 {},
    "ABT" =>                {},
    "ADDAX-Q" =>            {},
    "FEDERAL MOGUL" =>      {:catalog => true, :title => "FEDERAL&nbsp;MOGUL"},
    "AIRTECH" =>            {:catalog => true},
    "FEL-PRO" =>            {},
    "ALCA" =>               {},
    "ALL RIGHT" =>          {},
    "AMC FILTER" =>         {:ref => ["AMC"]},
    "AMC" =>                {:catalog => true},
    "AMP" =>                {},
    "ANAM" =>               {},
    "ARCTIC CAT" =>         {:catalog => true},
    "ART" =>                {},
    "ARWIDSON" =>           {},
    "TRIFA" =>              {},
    "ASAM-SA" =>            {},
    "ASCO" =>               {},
    "AUTOFREN" =>           {:catalog => true},
    "SEINSA AUTOFREN" =>    {:ref => ["AUTOFREN"]},
    "AUTOFREN SEINSA" =>    {:ref => ["AUTOFREN"]},
    "AUTOM FILTER" =>       {},
    "AUTOMOTOR FRANCE" =>   {},
    "AUTOX" =>              {},
    "ORIGINAL BIRTH" =>     {},
    "BOMBARDIER" =>         {},
    "BW" =>                 {},
    "CAR-DEX" =>            {:catalog => true, :file => "car_dex"},
    "CARDEX" =>             {:ref => ["CAR-DEX"]},
    "CAR DEX" =>            {:ref => ["CAR-DEX"]},
    "CARRYBOY" =>           {},
    "CASTROL" =>            {:catalog => true},
    "ELASTOGRAN" =>         {},
    "CIFAM" =>              {},
    "CONCORD" =>            {},
    "CONSTRUCT" =>          {},
    "CRUNCH" =>             {},
    "CTC" =>                {},
    "CUSTOM CHROME" =>      {},
    "COMPLEX" =>            {},
    "CLEAN FILTER" =>       {:catalog => true, :title => "CLEAN FILTERS"},
    "CLEAN" =>              {:ref => ["CLEAN FILTER"]},
    "COBRA" =>              {:catalog => true},
    "AKRON" =>              {:catalog => true},
    "MALO" =>               {},
    "ASMETAL" =>            {},
    "AS METAL" =>           {:ref => ["ASMETAL"]},
    "AURADIA" =>            {:catalog => true},
    "AUTOWELT" =>           {:catalog => true},
    "CS" =>                 {:catalog => true, :title => "CS Germany", :file => "cs_germany"},
    "CS GERMANY" =>         {:ref => ["CS"]},
    "CS-GERMANY" =>         {:ref => ["CS"]},
    "CSGERMANY" =>          {:ref => ["CS"]},
    "CS_GERMANY" =>         {:ref => ["CS"]},
    "ATS" =>                {:catalog => true},
    "KLAKSON" =>            {},
    "KILEN" =>              {},
    "NGN" =>                {:catalog => true},
    "RAVENOL" =>            {:catalog => true},
    "NAKAMOTO" =>           {:catalog => true},
    "DIRECT PARTS" =>       {:catalog => true},
    "SALERI SIL" =>         {:catalog => true, :file => "saleri_sil"},
    "SALERI-SIL" =>         {:ref => ["SALERI SIL"]},
    "SALERISIL" =>          {:ref => ["SALERI SIL"]},
    "SALERI" =>             {:ref => ["SALERI SIL"]},
    "SIL" =>                {:ref => ["SALERI SIL"]},
    "NPW" =>                {:catalog => true},
    "INTERCARS" =>          {:catalog => true},
    "PITWORK" =>            {:catalog => true},
    "POLCAR" =>             {:catalog => true},
    "AMIWA" =>              {:catalog => true},
    "FINWHALE" =>           {:catalog => true},
    "WEEN" =>               {:catalog => true},
    "DORIA" =>              {:catalog => true, :file => "meat_doria", :title => "MEAT &amp; DORIA"},
    "MEAT&DORIA" =>         {:ref => ["DORIA"]},
    "MEAT-DORIA" =>         {:ref => ["DORIA"]},
    "MEAT DORIA" =>         {:ref => ["DORIA"]},
    "MEAT_DORIA" =>         {:ref => ["DORIA"]},
    "MEATANDDORIA" =>       {:ref => ["DORIA"]},
    "MEAT AND DORIA" =>     {:ref => ["DORIA"]},
    "HOLA" =>               {:catalog => true},
    "NITTO" =>              {:catalog => true},
    "MITWELL" =>            {:catalog => true},
    "PECO" =>               {:catalog => true},
    "PEKO" =>               {:catalog => true},
    "GLOBAL" =>             {},
    "MOTORCRAFT" =>         {:catalog => true},
    "EXEDY" =>              {:catalog => true},
    "DAIKIN-EXEDY" =>       {:ref => ["EXEDY"]},
    "DAIKIN_EXEDY" =>       {:ref => ["EXEDY"]},
    "DAIKINEXEDY" =>        {:ref => ["EXEDY"]},
    "DAIKIN" =>             {:ref => ["EXEDY"]},
    "SURE FILTER" =>        {:catalog => true},
    "TERMAL" =>             {},
    "AKS" =>                {:catalog => true, :title => "AKS&nbsp;DASIS", :file => "aks_dasis"},
    "AKS DASIS" =>          {:ref => ["AKS"]},
    "DASIS" =>              {:ref => ["AKS"]},
    "FRIG AIR" =>           {},
    "SAT" =>                {:catalog => true},
    "BEGEL" =>              {:catalog => true},
    "BRITPART" =>           {:catalog => true},
    "DPH" =>                {:catalog => true},
    "NURAL" =>              {:catalog => true},
    "GEMO" =>               {:catalog => true},
    "GERI" =>               {:catalog => true},
    "GSP" =>                {:catalog => true},
    "HUTCHINSON" =>         {:catalog => true},
    "IPD" =>                {:catalog => true},
    "METALCAUCHO" =>        {:catalog => true},
    "PRO-TEC" =>            {:catalog => true, :file => "protec"},
    "PROTEC" =>             {:ref => ["PRO-TEC"]},
    "SOFIMA" =>             {:catalog => true},
    "VIEROL" =>             {:catalog => true},
    "SFEC" =>               {:catalog => true},
    "SCHONEK" =>            {:catalog => true},
    "RIXSENBERG" =>         {:catalog => true},
    "RCL RADIATORS" =>      {:catalog => true},
    "RCL" =>                {:ref => ["RCL RADIATORS"]},
    "QUINTON HAZSELL" =>    {:catalog => true},
    "ARD" =>                {:catalog => true},
    "ACHR" =>               {:catalog => true},
    "AUTLOG" =>            {:catalog => true},
    "AUT LOG" =>           {:ref => ["AUTLOG"]},
    "AUT_LOG" =>           {:ref => ["AUTLOG"]},
    "AUT-LOG" =>           {:ref => ["AUTLOG"]},
    "AUTOMEGA" =>           {:catalog => true},
    "DELLO" =>              {:ref => ["AUTOMEGA"]},
    "BENDIX" =>             {},
    "3F QUALITY" =>         {},
    "EOLO" =>               {:catalog => true},
    "SIMER" =>              {},
    "WINMAX" =>             {},
    "ALLIED SIGNAL" =>      {},
    "ASIMCO" =>             {:catalog => true},
    "ANCO" =>               {:catalog => true},
    "SH AUTO PARTS" =>      {:catalog => true, :title => "SH&nbsp;AUTO&nbsp;PARTS"},
    "JANMOR" =>             {:catalog => true},
    "GIEFFE" =>             {:catalog => true},
    "KAWASAKI" =>           {:catalog => true},
    "BIG FILTER" =>         {},
    "KITTO" =>              {:catalog => true},
    "AGAMA" =>              {},
    "888" =>                {},
    "DONALDSON" =>          {},
    "HINO" =>               {},
    "FBL" =>                {},
    "LONGHO" =>             {:catalog => true},
    "GOOD YEAR" =>          {:catalog => true},
    "DONGIL" =>             {:catalog => true},
    "OPTIBELT" =>           {:catalog => true},
    "TOPDRIVE" =>           {:catalog => true},
    "TOYOPOWER" =>          {:catalog => true},
    "BLACKBELT" =>          {:catalog => true},
    "SCHNEIDER" =>          {:catalog => true},
    "NEKO" =>               {:catalog => true},
    "RIB-TOP" =>            {},
    "APR" =>                {},
    "NOK" =>                {:catalog => true},
    "TEIKIN" =>             {:catalog => true},
    "TAIHO" =>              {:catalog => true},
    "THO" =>                {:catalog => true},
    "TONG YANG" =>          {:catalog => true},
    "NOVLINE" =>            {:catalog => true},
    "TP" =>                 {:catalog => true},
    "NARVA" =>              {:catalog => true},
    "GEELY" =>              {:catalog => true},
    "HARLEY DAVIDSON" =>    {:catalog => true},
    "KAVO PARTS" =>         {:catalog => true},
    "ZAFFO" =>              {:catalog => true},
    "FORTECH" =>            {:catalog => true},
    "M2" =>                 {:catalog => true},
    "TAMA" =>               {:catalog => true},
    "LESJOFORS" =>          {:catalog => true},
    "HKT" =>                {:catalog => true},
    "HDK" =>                {:catalog => true},
    "K+F" =>                {:catalog => true},
    "KLOKKERHOLM" =>        {:catalog => true},
    "IZUMI" =>              {},
    "LOGEM" =>              {}
  }
end

Brand.delete_all

Brands::BRANDS.each do |name, opts|

  unless opts.key? :title
    opts[:title] = name
  end

  unless opts.key? :catalog
    opts[:catalog] = false
  end

  unless opts.key? :rating
    opts[:rating] = nil
  end

  unless opts.key? :brand
    opts[:brand] = false
  end

  unless opts.key? :file
    opts[:file] = name.downcase.strip.gsub(/[^а-яА-Я0-9A-Za-z.\-]/, '_')
  end

  begin
    Brand.create(:name => name, :rating => opts[:rating], :image => File.open("/Users/woto/rails/yaponama_2012/db/seeds/brands/#{opts[:file]}.png"))
  rescue Exception => e
    puts e.message
  end

end