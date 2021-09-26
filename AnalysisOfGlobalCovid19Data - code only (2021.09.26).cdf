(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[     73888,       1649]
NotebookOptionsPosition[     69872,       1577]
NotebookOutlinePosition[     70500,       1600]
CellTagsIndexPosition[     70457,       1597]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Analysis of Global Covid-19 Data", "Title",
 CellChangeTimes->{{3.8404201362966695`*^9, 3.8404201418327084`*^9}, {
  3.8410345791797094`*^9, 
  3.841034580291708*^9}},ExpressionUUID->"4b08d1b7-baee-41da-84c4-\
98cb53ace530"],

Cell[CellGroupData[{

Cell["Dataset", "Section",
 CellChangeTimes->{{3.840420218592393*^9, 3.840420220344944*^9}, {
  3.84042060776716*^9, 
  3.8404206090391426`*^9}},ExpressionUUID->"f7eab793-ddbd-48e5-b6aa-\
6ea59d29e0ea"],

Cell[CellGroupData[{

Cell["Import Data Table from URL", "Item",
 CellChangeTimes->{{3.8405021497111235`*^9, 3.8405021853425293`*^9}},
 Background->RGBColor[
  1, 0.9, 0.8],ExpressionUUID->"78c0ec4b-702d-44b1-8a05-161510d9a7cb"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"owidCovid", "=", 
   RowBox[{
   "Import", "[", 
    "\"\<https://raw.githubusercontent.com/owid/covid-19-data/master/public/\
data/owid-covid-data.csv\>\"", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"{", 
   RowBox[{"nrow", ",", "ncol"}], "}"}], "=", 
  RowBox[{
  "Dimensions", "[", "owidCovid", 
   "]"}]}], "\[IndentingNewLine]", "Now"}], "Input",
 CellChangeTimes->{{3.840420639483946*^9, 3.8404206569445868`*^9}, {
   3.8404207279260564`*^9, 3.840420733025548*^9}, 3.8404231312264986`*^9, {
   3.840426129891447*^9, 3.8404261352433963`*^9}, {3.840427279877098*^9, 
   3.8404272816878276`*^9}, {3.8409371820725117`*^9, 
   3.8409371837954664`*^9}, {3.841012802288678*^9, 3.841012807088403*^9}, {
   3.841128818176675*^9, 3.8411288229166512`*^9}, {3.8416247748035097`*^9, 
   3.84162477654666*^9}, {3.841624874170696*^9, 3.84162487462537*^9}},
 Background->RGBColor[
  0.87, 0.94, 1],ExpressionUUID->"dc74b1ab-2f12-41e3-8fb5-5a4e64bb4f05"],

Cell[BoxData[
 RowBox[{"owidAsOf", "=", 
  RowBox[{"Block", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"$DateStringFormat", "=", 
      RowBox[{"{", 
       RowBox[{
       "\"\<(\>\"", ",", "\"\<Year\>\"", ",", "\"\<.\>\"", ",", 
        "\"\<Month\>\"", ",", "\"\<.\>\"", ",", "\"\<Day\>\"", ",", 
        "\"\<)\>\""}], "}"}]}], "}"}], ",", 
    RowBox[{"DateString", "[", "]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.8415386379721737`*^9, 3.8415386638125257`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[7]:=",ExpressionUUID->"7a38ed0f-f488-4531-8cb8-06e9bdb9959b"],

Cell[BoxData[
 RowBox[{"owidCovid", "[", 
  RowBox[{"[", "1", "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.840421039491531*^9, 3.8404210483077374`*^9}, {
   3.840425899211667*^9, 3.840425899626871*^9}, 3.840527599502055*^9, {
   3.841013373307784*^9, 3.8410133738715825`*^9}, {3.8411289856786184`*^9, 
   3.84112898606063*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[9]:=",ExpressionUUID->"130f87ca-ec33-4dc6-be98-34a4b61c668f"],

Cell[BoxData[
 RowBox[{"owidCovidReference", "=", 
  RowBox[{"owidCovid", "[", 
   RowBox[{"[", 
    RowBox[{"1", ",", 
     RowBox[{";;", "4"}]}], "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.8404322169427757`*^9, 3.8404322206007967`*^9}, {
   3.840433955235367*^9, 3.840433957325302*^9}, {3.8404343651633635`*^9, 
   3.8404343716426945`*^9}, {3.840501441988633*^9, 3.840501601764597*^9}, {
   3.8405016401726217`*^9, 3.840501672635147*^9}, {3.840501744367489*^9, 
   3.840501750137519*^9}, {3.840501975317234*^9, 3.8405019767778993`*^9}, 
   3.84050647473275*^9, {3.8405068434607773`*^9, 3.840506857459154*^9}, {
   3.8405085857617836`*^9, 3.8405085897054663`*^9}, {3.840509574757451*^9, 
   3.840509578735372*^9}, {3.8405096338552804`*^9, 3.840509634775137*^9}, {
   3.8405096903362093`*^9, 3.8405097373991175`*^9}, {3.8409322685713177`*^9, 
   3.8409322692983117`*^9}, {3.840938139603985*^9, 3.840938143031071*^9}, {
   3.8409385356338863`*^9, 3.84093857153745*^9}, {3.8410133789098115`*^9, 
   3.8410133796027594`*^9}, {3.8411289901016273`*^9, 3.841128990481993*^9}, {
   3.841129256862481*^9, 3.8411292644365196`*^9}, {3.841129378845484*^9, 
   3.8411293797965636`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[10]:=",ExpressionUUID->"2694128d-cba8-4406-ab3f-e8f20602fe68"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Create Dataset Object", "Item",
 CellChangeTimes->{{3.8405021497111235`*^9, 3.840502205006857*^9}},
 Background->RGBColor[
  1, 0.9, 0.8],ExpressionUUID->"d508106c-0d6e-4f87-a9f1-3fdb3f69e377"],

Cell[BoxData[
 RowBox[{
  RowBox[{"datasetCovid", "=", 
   RowBox[{"Dataset", "[", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"<|", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"owidCovid", "[", 
           RowBox[{"[", 
            RowBox[{"1", ",", "j"}], "]"}], "]"}], "->", 
          RowBox[{"owidCovid", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", "j"}], "]"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"j", ",", "ncol"}], "}"}]}], "]"}], "|>"}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "2", ",", "nrow"}], "}"}]}], "]"}], "]"}]}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.840422584295661*^9, 3.8404226401552505`*^9}, {
   3.8404227444871464`*^9, 3.8404228427586775`*^9}, 3.8404228931528187`*^9, {
   3.840422950226591*^9, 3.8404229505834446`*^9}, {3.8404230125057316`*^9, 
   3.8404231223386936`*^9}, {3.8404261413553076`*^9, 
   3.8404261474014125`*^9}, {3.8404263019231277`*^9, 
   3.8404263126172037`*^9}, {3.840426622697691*^9, 3.840426625088687*^9}, 
   3.8404288816553946`*^9, {3.8404313946675835`*^9, 3.8404313992268944`*^9}, {
   3.8410133832277665`*^9, 3.841013388248577*^9}, {3.841128994973623*^9, 
   3.841129022725915*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[11]:=",ExpressionUUID->"04ec1797-8fb6-4b7e-8532-794bc3b40166"],

Cell[BoxData[
 RowBox[{"Length", "[", "\[IndentingNewLine]", 
  RowBox[{"headerCovidTimeSeries", "=", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
    "\"\<total_cases\>\"", ",", "\"\<new_cases\>\"", ",", 
     "\"\<new_cases_smoothed\>\"", ",", "\[IndentingNewLine]", 
     "\"\<total_deaths\>\"", ",", "\"\<new_deaths\>\"", ",", 
     "\"\<new_deaths_smoothed\>\"", ",", "\[IndentingNewLine]", 
     "\"\<total_cases_per_million\>\"", ",", "\"\<new_cases_per_million\>\"", 
     ",", "\"\<new_cases_smoothed_per_million\>\"", ",", 
     "\[IndentingNewLine]", "\"\<total_deaths_per_million\>\"", ",", 
     "\"\<new_deaths_per_million\>\"", ",", 
     "\"\<new_deaths_smoothed_per_million\>\"", ",", "\[IndentingNewLine]", 
     "\"\<new_vaccinations\>\"", ",", "\"\<new_vaccinations_smoothed\>\""}], 
    "}"}]}], "]"}]], "Input",
 Background->RGBColor[
  0.87, 0.94, 1],ExpressionUUID->"d3f3dfc5-4531-4d32-8199-bae4127854e7"],

Cell[BoxData[
 RowBox[{"Length", "[", "\[IndentingNewLine]", 
  RowBox[{"headerCovidLatestStats", "=", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
    "\"\<total_cases\>\"", ",", "\"\<total_deaths\>\"", ",", 
     "\"\<total_cases_per_million\>\"", ",", 
     "\"\<total_deaths_per_million\>\"", ",", "\[IndentingNewLine]", 
     "\"\<people_vaccinated_per_hundred\>\"", ",", "\"\<population\>\"", ",", 
     "\"\<population_density\>\"", ",", "\[IndentingNewLine]", 
     "\"\<median_age\>\"", ",", "\"\<aged_70_older\>\"", ",", 
     "\"\<gdp_per_capita\>\"", ",", "\[IndentingNewLine]", 
     "\"\<cardiovasc_death_rate\>\"", ",", "\"\<diabetes_prevalence\>\"", ",",
      "\[IndentingNewLine]", "\"\<hospital_beds_per_thousand\>\"", ",", 
     "\"\<life_expectancy\>\"", ",", "\"\<human_development_index\>\""}], 
    "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.8404322169427757`*^9, 3.8404322206007967`*^9}, {
   3.840433955235367*^9, 3.840433957325302*^9}, {3.8404343651633635`*^9, 
   3.8404343716426945`*^9}, {3.840501441988633*^9, 3.840501601764597*^9}, {
   3.8405016401726217`*^9, 3.840501672635147*^9}, {3.840501744367489*^9, 
   3.840501750137519*^9}, {3.840501975317234*^9, 3.8405019767778993`*^9}, 
   3.84050647473275*^9, {3.8405068434607773`*^9, 3.840506857459154*^9}, {
   3.8405085857617836`*^9, 3.8405085897054663`*^9}, {3.840509574757451*^9, 
   3.840509578735372*^9}, {3.8405096338552804`*^9, 3.840509634775137*^9}, {
   3.8405096903362093`*^9, 3.8405097373991175`*^9}, {3.84093230494697*^9, 
   3.840932327668333*^9}, {3.840932437285694*^9, 3.8409324380750713`*^9}, 
   3.8409381491122775`*^9, {3.8409385905395613`*^9, 3.840938591370014*^9}, {
   3.8411015381807017`*^9, 3.8411015531006203`*^9}, 3.8411047637131996`*^9, {
   3.841111202928771*^9, 3.8411112344966784`*^9}, 3.8411116319457445`*^9, {
   3.8411292233425274`*^9, 3.841129224077611*^9}, {3.8415378774293346`*^9, 
   3.841537885216525*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[13]:=",ExpressionUUID->"dd094783-ee2e-41a7-85d7-d6d1af03abc1"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"datasetCovid", "=", 
   RowBox[{"datasetCovid", "[", 
    RowBox[{"All", ",", 
     RowBox[{"{", 
      RowBox[{"\"\<continent\>\"", "->", 
       RowBox[{"Replace", "[", 
        RowBox[{"\"\<\>\"", "->", "\"\<Planet\>\""}], "]"}]}], "}"}]}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"datasetCovid", "=", 
   RowBox[{"datasetCovid", "[", 
    RowBox[{"Select", "[", 
     RowBox[{
      RowBox[{"#location", "!=", "\"\<International\>\""}], "&"}], "]"}], 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"datasetCovid", "=", 
   RowBox[{"datasetCovid", "[", 
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"\"\<\>\"", "->", "0"}], "]"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", "datasetCovid", "]"}]}], "Input",
 CellChangeTimes->{{3.8404315871405907`*^9, 3.840431643409701*^9}, {
  3.8405066152946186`*^9, 3.8405066210237217`*^9}, {3.840508935607069*^9, 
  3.840508939615283*^9}, {3.8409340390129347`*^9, 3.840934041590841*^9}, {
  3.8409341059207373`*^9, 3.8409341092217817`*^9}, {3.8409341521607747`*^9, 
  3.840934175272882*^9}, {3.8409342239329257`*^9, 3.8409343164634333`*^9}, {
  3.840934379585334*^9, 3.840934437575262*^9}, {3.840934985264644*^9, 
  3.8409349951048837`*^9}, {3.8409368392578793`*^9, 3.8409368455869036`*^9}, {
  3.840936893332836*^9, 3.840936893587864*^9}, {3.841129143741564*^9, 
  3.8411291497536516`*^9}, {3.8416252781916304`*^9, 3.8416253224671745`*^9}, {
  3.8416258131700697`*^9, 3.8416258195361214`*^9}, {3.8416259087527323`*^9, 
  3.841625937437578*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[24]:=",ExpressionUUID->"ace933db-7b91-490c-8b41-010144c5721e"],

Cell[BoxData[
 RowBox[{"datasetCovidTimeSeries", "=", 
  RowBox[{"datasetCovid", "[", 
   RowBox[{
    RowBox[{"GroupBy", "[", "\"\<location\>\"", "]"}], ",", "All", ",", 
    RowBox[{"Join", "[", 
     RowBox[{
      StyleBox["owidCovidReference",
       FontWeight->"Bold"], ",", "headerCovidTimeSeries"}], "]"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.8404317923724146`*^9, 3.840431826219358*^9}, 
   3.8404321710578938`*^9, {3.8405063742599077`*^9, 3.8405063767077284`*^9}, {
   3.840506678923715*^9, 3.840506679650445*^9}, 3.840508616946417*^9, {
   3.840509658511286*^9, 3.8405096626863365`*^9}, {3.8405097114944124`*^9, 
   3.840509767686738*^9}, {3.8405098197100735`*^9, 3.840509883948996*^9}, {
   3.8409386385124507`*^9, 3.8409386459283743`*^9}, 3.8409518488557744`*^9, {
   3.841104314904009*^9, 3.841104316037425*^9}, {3.8411244960753984`*^9, 
   3.841124496542383*^9}, {3.8411291676695547`*^9, 3.841129170980564*^9}, {
   3.8411292865054398`*^9, 3.8411292918089895`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[28]:=",ExpressionUUID->"f3f887e1-2a3a-49bc-be01-f8f057b1e873"],

Cell[BoxData[
 RowBox[{"datasetCovidLatestStats", "=", 
  RowBox[{"datasetCovid", "[", 
   RowBox[{
    RowBox[{"GroupBy", "[", "\"\<location\>\"", "]"}], ",", "Last", ",", 
    RowBox[{"Join", "[", 
     RowBox[{
      StyleBox["owidCovidReference",
       FontWeight->"Bold"], ",", "headerCovidLatestStats"}], "]"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.8404317923724146`*^9, 3.840431826219358*^9}, 
   3.8404321710578938`*^9, {3.8405063742599077`*^9, 3.8405063767077284`*^9}, {
   3.840506494683747*^9, 3.840506510114684*^9}, 3.840508618759065*^9, {
   3.8405096027677994`*^9, 3.8405096465828505`*^9}, {3.8405097560468054`*^9, 
   3.8405097955581007`*^9}, 3.8405098353356123`*^9, {3.840509866198073*^9, 
   3.8405098775573454`*^9}, {3.8409386515302963`*^9, 3.8409386538173347`*^9}, 
   3.8409518421117506`*^9, {3.841124564265318*^9, 3.841124564549389*^9}, {
   3.841129189658543*^9, 3.841129193868765*^9}, {3.8411293006755724`*^9, 
   3.841129305468504*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[29]:=",ExpressionUUID->"11bb180c-9b80-445a-8fe4-df3ff935c4c7"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"datasetCovidLatestStatsContinentAve", "=", 
   RowBox[{"datasetCovidLatestStats", "[", 
    RowBox[{
     RowBox[{"GroupBy", "[", "\"\<continent\>\"", "]"}], ",", "Mean", ",", 
     RowBox[{"Prepend", "[", 
      StyleBox[
       RowBox[{"headerCovidLatestStats", ",", "\"\<continent\>\""}],
       FontWeight->"Bold"], "]"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"datasetCovidLatestStatsContinentAve", "=", 
  RowBox[{"datasetCovidLatestStatsContinentAve", "[", 
   RowBox[{"Select", "[", 
    RowBox[{
     RowBox[{"#continent", "!=", "\"\<Planet\>\""}], "&"}], "]"}], 
   "]"}]}]}], "Input",
 CellChangeTimes->{{3.8404317923724146`*^9, 3.840431826219358*^9}, 
   3.8404321710578938`*^9, {3.8405063742599077`*^9, 3.8405063767077284`*^9}, {
   3.840506494683747*^9, 3.840506510114684*^9}, 3.840508618759065*^9, {
   3.8405096027677994`*^9, 3.8405096465828505`*^9}, {3.8405097560468054`*^9, 
   3.8405097955581007`*^9}, 3.8405098353356123`*^9, {3.840509866198073*^9, 
   3.8405098775573454`*^9}, {3.8409351699672484`*^9, 3.840935190464164*^9}, 
   3.8409361866058645`*^9, {3.84093773094363*^9, 3.840937761312643*^9}, 
   3.8409381804680896`*^9, {3.8409382255638933`*^9, 3.8409382284599257`*^9}, {
   3.840938316063742*^9, 3.8409384077242875`*^9}, 3.8409386790354967`*^9, {
   3.840945877020177*^9, 3.8409458964641423`*^9}, {3.8411133592287264`*^9, 
   3.8411133999238143`*^9}, 3.8411136773447886`*^9, 3.8411245988243556`*^9, 
   3.8411246734157515`*^9, {3.841129622949375*^9, 3.841129642844714*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[30]:=",ExpressionUUID->"74f10966-0db3-4b94-92c1-57be754ecc09"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"Length", "[", 
    RowBox[{"listLocations", "=", 
     RowBox[{"Normal", "[", 
      RowBox[{"DeleteDuplicates", "[", 
       RowBox[{"datasetCovid", "[", 
        RowBox[{"All", ",", "\"\<location\>\""}], "]"}], "]"}], "]"}]}], 
    "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Length", "[", 
    RowBox[{"listContinents", "=", 
     RowBox[{"Normal", "[", 
      RowBox[{"Keys", "[", "datasetCovidLatestStatsContinentAve", "]"}], 
      "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Length", "[", 
    RowBox[{"listCountries", "=", 
     RowBox[{"Complement", "[", 
      RowBox[{"listLocations", ",", 
       RowBox[{"Append", "[", 
        RowBox[{"listContinents", ",", "\"\<World\>\""}], "]"}]}], "]"}]}], 
    "]"}]}], "}"}]], "Input",
 CellChangeTimes->{{3.841103232030857*^9, 3.8411032348938217`*^9}, {
   3.8411032901908293`*^9, 3.8411033245908165`*^9}, 3.841103380585785*^9, {
   3.841104442888361*^9, 3.8411044436464305`*^9}, {3.8411119279523973`*^9, 
   3.841111951722351*^9}, {3.8411122630557775`*^9, 3.84111226735575*^9}, {
   3.841112806737672*^9, 3.8411128116081104`*^9}, {3.841113058575905*^9, 
   3.84111309401602*^9}, {3.8411131607867455`*^9, 3.8411131685447326`*^9}, {
   3.841113739104734*^9, 3.841113769938684*^9}, {3.8411247593553905`*^9, 
   3.841124794614753*^9}, {3.8411248270067434`*^9, 3.8411248417396145`*^9}, {
   3.8411297476212883`*^9, 3.84112975201233*^9}, 3.8415385293680544`*^9, {
   3.8415509777114563`*^9, 3.8415509906503105`*^9}, {3.8416261163243017`*^9, 
   3.841626123492134*^9}, {3.841627537047018*^9, 3.841627542978841*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[72]:=",ExpressionUUID->"e86f917c-3620-43ea-963f-8b02c4e45f61"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Visualise Time Series", "Item",
 CellChangeTimes->{{3.8405021497111235`*^9, 3.840502205006857*^9}, {
  3.8405022505437117`*^9, 3.8405022653666906`*^9}, {3.8405084273426523`*^9, 
  3.840508436541769*^9}},
 Background->RGBColor[
  1, 0.9, 0.8],ExpressionUUID->"b488d9e2-8b2a-4ef6-a9da-f6a47368c91b"],

Cell[BoxData[
 StyleBox[
  RowBox[{
   RowBox[{"viewCovidTimeSeries", "[", 
    RowBox[{
     RowBox[{"location0_", ":", "\"\<World\>\""}], ",", 
     RowBox[{"series0_", ":", "\"\<new_cases\>\""}]}], "]"}], ":=", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"If", "[", 
      RowBox[{"asTimeSeries", ",", "\[IndentingNewLine]", 
       RowBox[{"DateListPlot", "[", 
        RowBox[{
         RowBox[{"TimeSeries", "[", 
          RowBox[{"Normal", "@", 
           RowBox[{"Values", "@", 
            RowBox[{"datasetCovidTimeSeries", "[", 
             RowBox[{"location", ",", "All", ",", 
              RowBox[{"{", 
               RowBox[{"\"\<date\>\"", ",", "series"}], "}"}]}], "]"}]}]}], 
          "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"PlotRange", "->", "All"}], ",", 
         RowBox[{"Filling", "->", "Axis"}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{
            "location", "<>", "\"\<: \>\"", "<>", "series", "<>", "\"\< \>\"",
              "<>", "owidAsOf"}], ",", "Bold"}], "]"}]}]}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"datasetCovidTimeSeries", "[", 
          RowBox[{"location", ",", "All", ",", "series"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"PlotRange", "->", "All"}], ",", 
         RowBox[{"Filling", "->", "Axis"}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{
            "location", "<>", "\"\<: \>\"", "<>", "series", "<>", "\"\< \>\"",
              "<>", "owidAsOf"}], ",", "Bold"}], "]"}]}]}], "]"}]}], "]"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"asTimeSeries", ",", 
       RowBox[{"{", 
        RowBox[{"False", ",", "True"}], "}"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"location", ",", "location0"}], "}"}], ",", "listLocations"}],
       "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"series", ",", "series0"}], "}"}], ",", 
       "headerCovidTimeSeries"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"ControlPlacement", "->", "Bottom"}]}], "]"}]}],
  FontWeight->"Bold"]], "Input",
 CellChangeTimes->{{3.840432454309421*^9, 3.840432559634131*^9}, {
   3.840432592084298*^9, 3.8404325991213875`*^9}, {3.840432635042181*^9, 
   3.8404326396261125`*^9}, 3.840432700868233*^9, {3.840432936253759*^9, 
   3.8404329558729253`*^9}, {3.840433041468954*^9, 3.8404330807782393`*^9}, 
   3.840433112622197*^9, {3.8404331654415827`*^9, 3.8404332666652803`*^9}, {
   3.84043452320816*^9, 3.840434577589525*^9}, 3.840509959356924*^9, {
   3.8405105220150666`*^9, 3.840510531871448*^9}, {3.8405108474510126`*^9, 
   3.840510854893612*^9}, {3.8405112316940417`*^9, 3.8405112338290725`*^9}, {
   3.840945983745908*^9, 3.8409459981609893`*^9}, {3.8409462543784156`*^9, 
   3.8409464318249636`*^9}, {3.8409465665781975`*^9, 
   3.8409466111231394`*^9}, {3.8409466470161753`*^9, 3.840946716943384*^9}, {
   3.840946755180626*^9, 3.8409468450028973`*^9}, {3.840946953120659*^9, 
   3.840947018262229*^9}, {3.8409470858870983`*^9, 3.840947086452458*^9}, {
   3.840947124747081*^9, 3.8409471287870736`*^9}, {3.8409471628953533`*^9, 
   3.840947181426856*^9}, {3.840952178224308*^9, 3.840952189964509*^9}, {
   3.8409523020450163`*^9, 3.840952352902923*^9}, {3.840952868423902*^9, 
   3.8409529307572575`*^9}, {3.8410046435588737`*^9, 3.841004664696878*^9}, {
   3.841004738872426*^9, 3.8410047446299047`*^9}, 3.8410070016349735`*^9, {
   3.8410085108730063`*^9, 3.8410085333189993`*^9}, {3.841008665509201*^9, 
   3.8410086699652634`*^9}, {3.8411044778813396`*^9, 3.841104478872429*^9}, {
   3.8411050833059673`*^9, 3.8411051275631857`*^9}, {3.8411259421769476`*^9, 
   3.8411259832907352`*^9}, {3.8411260767997684`*^9, 3.841126121792704*^9}, {
   3.8411299182250376`*^9, 3.8411299262702413`*^9}, {3.8415387336405272`*^9, 
   3.8415387812799716`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[38]:=",ExpressionUUID->"7b09876e-2e78-427c-8b01-f691f5649e6a"],

Cell[BoxData[
 StyleBox[
  RowBox[{"viewCovidTimeSeries", "[", "]"}],
  FontWeight->"Bold"]], "Input",
 CellChangeTimes->{{3.840432454309421*^9, 3.840432559634131*^9}, {
   3.840432592084298*^9, 3.8404325991213875`*^9}, {3.840432635042181*^9, 
   3.8404326396261125`*^9}, 3.840432700868233*^9, {3.840432936253759*^9, 
   3.8404329558729253`*^9}, {3.840433041468954*^9, 3.8404330807782393`*^9}, 
   3.840433112622197*^9, {3.8404331654415827`*^9, 3.8404332666652803`*^9}, {
   3.84043452320816*^9, 3.840434577589525*^9}, 3.840509959356924*^9, {
   3.8405105220150666`*^9, 3.840510531871448*^9}, {3.8405108474510126`*^9, 
   3.840510854893612*^9}, {3.8405112316940417`*^9, 3.8405112338290725`*^9}, {
   3.840945983745908*^9, 3.8409459981609893`*^9}, {3.8409462543784156`*^9, 
   3.8409464318249636`*^9}, {3.8409465665781975`*^9, 
   3.8409466111231394`*^9}, {3.8409466470161753`*^9, 3.840946716943384*^9}, {
   3.840946755180626*^9, 3.8409468450028973`*^9}, {3.840946953120659*^9, 
   3.840947018262229*^9}, {3.8409470858870983`*^9, 3.840947086452458*^9}, {
   3.840947124747081*^9, 3.8409471287870736`*^9}, {3.8409471628953533`*^9, 
   3.840947181426856*^9}, {3.840952178224308*^9, 3.840952189964509*^9}, {
   3.8409523020450163`*^9, 3.840952352902923*^9}, {3.840952868423902*^9, 
   3.8409529307572575`*^9}, {3.8410046435588737`*^9, 3.841004664696878*^9}, {
   3.841004738872426*^9, 3.8410047446299047`*^9}, 3.8410070016349735`*^9, {
   3.8410085108730063`*^9, 3.8410085333189993`*^9}, {3.841008665509201*^9, 
   3.8410086699652634`*^9}, {3.8411044778813396`*^9, 3.841104478872429*^9}, {
   3.8411050833059673`*^9, 3.8411051314771013`*^9}, 3.8411260413517823`*^9, {
   3.84112608023584*^9, 3.8411261050227704`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[39]:=",ExpressionUUID->"c5405ca2-9f98-4187-b7ff-c4acadb55b39"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Visualise Scatter Plot", "Item",
 CellChangeTimes->{{3.8405021497111235`*^9, 3.840502205006857*^9}, {
  3.8405022505437117`*^9, 3.8405022653666906`*^9}, {3.8405084273426523`*^9, 
  3.840508436541769*^9}, {3.8405085189357677`*^9, 3.8405085249479523`*^9}, {
  3.8405113037687874`*^9, 3.840511304371918*^9}},
 Background->RGBColor[
  1, 0.9, 0.8],ExpressionUUID->"73c21664-d1f9-4c18-985f-9239c6a2ae67"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"viewCovidLatestStats", "[", "]"}],
   FontWeight->"Bold"], 
  StyleBox[":=",
   FontWeight->"Bold"], 
  StyleBox["\[IndentingNewLine]",
   FontWeight->"Bold"], 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ListPlot", "[", 
     RowBox[{
      StyleBox[
       RowBox[{"datasetCovidLatestStats", "[", 
        RowBox[{"All", ",", 
         RowBox[{"{", 
          RowBox[{"stat1", ",", "stat2"}], "}"}]}], "]"}],
       FontWeight->"Bold"], 
      StyleBox[",",
       FontWeight->"Bold"], 
      StyleBox["\[IndentingNewLine]",
       FontWeight->"Bold"], 
      RowBox[{
       StyleBox["AxesLabel",
        FontWeight->"Bold"], 
       StyleBox["->",
        FontWeight->"Bold"], 
       RowBox[{"{", 
        RowBox[{"stat1", ",", "stat2"}], "}"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"Style", "[", 
        RowBox[{
         RowBox[{
         "stat1", "<>", "\"\< vs. \>\"", "<>", "stat2", "<>", "\"\< \>\"", "<>",
           "owidAsOf", "<>", "\"\<\\n\>\""}], ",", "Bold"}], "]"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ImageSize", "->", "Large"}]}], 
     StyleBox["]",
      FontWeight->"Bold"]}], 
    StyleBox[",",
     FontWeight->"Bold"], 
    StyleBox["\[IndentingNewLine]",
     FontWeight->"Bold"], 
    StyleBox[
     RowBox[{"{", 
      RowBox[{"stat1", ",", "headerCovidLatestStats"}], "}"}],
     FontWeight->"Bold"], 
    StyleBox[",",
     FontWeight->"Bold"], 
    StyleBox["\[IndentingNewLine]",
     FontWeight->"Bold"], 
    StyleBox[
     RowBox[{"{", 
      RowBox[{"stat2", ",", 
       RowBox[{"headerCovidLatestStats", "[", 
        RowBox[{"[", 
         RowBox[{"2", ";;"}], "]"}], "]"}]}], "}"}],
     FontWeight->"Bold"], 
    StyleBox[",",
     FontWeight->"Bold"], 
    StyleBox["\[IndentingNewLine]",
     FontWeight->"Bold"], 
    StyleBox[
     RowBox[{"ControlPlacement", "->", "Bottom"}],
     FontWeight->"Bold"]}], 
   StyleBox["]",
    FontWeight->"Bold"]}]}]], "Input",
 CellChangeTimes->{{3.8404335600149*^9, 3.840433596723811*^9}, {
   3.8404336449684205`*^9, 3.840433678568651*^9}, {3.840434112457141*^9, 
   3.840434117292183*^9}, {3.840434161578021*^9, 3.840434196784012*^9}, 
   3.84043440035972*^9, {3.8405085710694027`*^9, 3.840508578034625*^9}, {
   3.8405099767548766`*^9, 3.8405099862368307`*^9}, {3.840510648097899*^9, 
   3.840510733520858*^9}, {3.8409472958551636`*^9, 3.8409473219191384`*^9}, 
   3.840947441573908*^9, {3.840952553644785*^9, 3.8409525590513997`*^9}, {
   3.8409531128039494`*^9, 3.84095313355796*^9}, {3.841004712716982*^9, 
   3.841004723596351*^9}, 3.841005026800377*^9, {3.8410050605163965`*^9, 
   3.841005075141384*^9}, 3.841006983400918*^9, {3.841008457314975*^9, 
   3.8410084695509663`*^9}, {3.8410215602850094`*^9, 
   3.8410215823254013`*^9}, {3.8411052263440466`*^9, 
   3.8411052267588387`*^9}, {3.8411261718727016`*^9, 3.841126180455961*^9}, {
   3.8411263519436607`*^9, 3.841126364703657*^9}, {3.8411279340328283`*^9, 
   3.8411279520730286`*^9}, {3.841128518499797*^9, 3.841128518966917*^9}, {
   3.8411299846057158`*^9, 3.8411299908773117`*^9}, 3.841539153717929*^9},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[40]:=",ExpressionUUID->"1560c5d8-8b0f-4479-99b2-069d1b7ddce6"],

Cell[BoxData[
 StyleBox[
  RowBox[{"viewCovidLatestStats", "[", "]"}],
  FontWeight->"Bold"]], "Input",
 CellChangeTimes->{{3.8404335600149*^9, 3.840433596723811*^9}, {
   3.8404336449684205`*^9, 3.840433678568651*^9}, {3.840434112457141*^9, 
   3.840434117292183*^9}, {3.840434161578021*^9, 3.840434196784012*^9}, 
   3.84043440035972*^9, {3.8405085710694027`*^9, 3.840508578034625*^9}, {
   3.8405099767548766`*^9, 3.8405099862368307`*^9}, {3.840510648097899*^9, 
   3.840510733520858*^9}, {3.8409472958551636`*^9, 3.8409473219191384`*^9}, 
   3.840947441573908*^9, {3.840952553644785*^9, 3.8409525590513997`*^9}, {
   3.8409531128039494`*^9, 3.84095313355796*^9}, {3.841004712716982*^9, 
   3.841004723596351*^9}, 3.841005026800377*^9, {3.8410050605163965`*^9, 
   3.841005075141384*^9}, 3.841006983400918*^9, {3.841008457314975*^9, 
   3.8410084695509663`*^9}, {3.8410215602850094`*^9, 
   3.8410215823254013`*^9}, {3.841105229943055*^9, 3.841105230637703*^9}, 
   3.841126186630889*^9},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[41]:=",ExpressionUUID->"ee701593-e3d6-4b15-98ff-71399b1512a2"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Visualise Radar Plot", "Item",
 CellChangeTimes->{{3.8405021497111235`*^9, 3.840502205006857*^9}, {
  3.8405022505437117`*^9, 3.8405022653666906`*^9}, {3.8405084273426523`*^9, 
  3.840508436541769*^9}, {3.8405085189357677`*^9, 3.8405085249479523`*^9}, {
  3.8405113037687874`*^9, 3.840511304371918*^9}, {3.8409473636670914`*^9, 
  3.8409473657398357`*^9}},
 Background->RGBColor[
  1, 0.9, 0.8],ExpressionUUID->"d2a3702c-828a-49b3-917d-74b27f1ada82"],

Cell[BoxData[
 RowBox[{"Length", "[", 
  RowBox[{"latestStatsForComparison", "=", 
   RowBox[{"DeleteCases", "[", 
    RowBox[{"headerCovidLatestStats", ",", "\"\<population\>\""}], "]"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.841126644046615*^9, 3.841126666143372*^9}, {
   3.8411268617904696`*^9, 3.8411268624934745`*^9}, {3.8411269564294677`*^9, 
   3.8411269730134335`*^9}, {3.8411271831193295`*^9, 
   3.8411271960373445`*^9}, {3.841127457326242*^9, 3.841127457741314*^9}, {
   3.8411275803542767`*^9, 3.8411275836291895`*^9}, {3.841130021181218*^9, 
   3.8411300246762247`*^9}, 3.8411301040511885`*^9, {3.8415384657841883`*^9, 
   3.841538479884118*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[43]:=",ExpressionUUID->"917d004b-00fc-4c58-9198-e1bc3d95ed36"],

Cell[BoxData[
 RowBox[{
  RowBox[{"viewCovidLatestStatsByContinentAve", "[", 
   RowBox[{
    RowBox[{"continents_", ":", "listContinents"}], ",", 
    RowBox[{"stats_", ":", "latestStatsForComparison"}]}], "]"}], ":=", 
  "\[IndentingNewLine]", 
  RowBox[{"Module", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"datasetToCompare", ",", "vector", ",", "lineThickness"}], "}"}],
     ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"datasetToCompare", "=", 
      RowBox[{"datasetCovidLatestStatsContinentAve", "[", 
       RowBox[{
        RowBox[{"Select", "[", 
         RowBox[{
          RowBox[{"MemberQ", "[", 
           RowBox[{"continents", ",", "#continent"}], "]"}], "&"}], "]"}], 
        ",", "stats"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"vector", "=", 
      RowBox[{"Transpose", "[", 
       RowBox[{"Standardize", "/@", 
        RowBox[{"Transpose", "[", 
         RowBox[{"Normal", "[", 
          RowBox[{"Values", "/@", 
           RowBox[{"Values", "[", "datasetToCompare", "]"}]}], "]"}], "]"}]}],
        "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"lineThickness", "=", 
      RowBox[{
       FractionBox[
        RowBox[{"Normal", "@", 
         RowBox[{"Values", "@", 
          RowBox[{"datasetCovidLatestStatsContinentAve", "[", 
           RowBox[{"continents", ",", "\"\<population\>\""}], "]"}]}]}], 
        RowBox[{"Total", "@", 
         RowBox[{"Normal", "@", 
          RowBox[{"Values", "@", 
           RowBox[{"datasetCovidLatestStatsContinentAve", "[", 
            RowBox[{"continents", ",", "\"\<population\>\""}], "]"}]}]}]}]], 
       "/", "25"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"RadialAxisPlot", "[", 
      RowBox[{"vector", ",", "\[IndentingNewLine]", 
       RowBox[{"PlotStyle", "->", 
        RowBox[{"Thickness", "/@", 
         RowBox[{"(", "lineThickness", ")"}]}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"PlotLegends", "\[Rule]", "continents"}], ",", " ", 
       RowBox[{"AxesLabel", "->", "stats"}], ",", "\[IndentingNewLine]", 
       RowBox[{"PlotLabel", "\[Rule]", 
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{
          "\"\<Compare Continents by (Ave) Latest Stats \>\"", "<>", 
           "owidAsOf", "<>", "\"\<\\n\>\""}], ",", "Bold"}], "]"}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{
  3.8411055185444155`*^9, {3.84112320393191*^9, 3.8411232058659163`*^9}, {
   3.841123271632887*^9, 3.8411233145538435`*^9}, {3.8411267089275227`*^9, 
   3.8411267158065305`*^9}, 3.8411268070665617`*^9, {3.8411268734074345`*^9, 
   3.841126910550452*^9}, {3.84112694151143*^9, 3.841126946511425*^9}, {
   3.8411269923234797`*^9, 3.841127075947403*^9}, {3.841127247667266*^9, 
   3.841127263159298*^9}, {3.8411273155132647`*^9, 3.84112736589427*^9}, 
   3.841127436986323*^9, 3.8411276312067523`*^9, {3.841127753503183*^9, 
   3.8411277783911066`*^9}, {3.8411301686857543`*^9, 3.841130178421283*^9}, {
   3.8411302328382*^9, 3.841130268542058*^9}, 3.84153935849817*^9},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[44]:=",ExpressionUUID->"5d31c754-367c-43b0-92f1-6fc3a46b478f"],

Cell[BoxData[
 RowBox[{"viewCovidLatestStatsByContinentAve", "[", "]"}]], "Input",
 CellChangeTimes->{{3.8411053516042805`*^9, 3.841105355525012*^9}, {
  3.84112679684453*^9, 3.8411268030534945`*^9}, {3.841130246324626*^9, 
  3.8411302467731266`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[45]:=",ExpressionUUID->"a0834401-c470-4239-a0cc-85282a03df6c"],

Cell[BoxData[
 RowBox[{"viewCovidLatestStatsByContinentAve", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
    "\"\<Asia\>\"", ",", "\"\<Europe\>\"", ",", "\"\<Africa\>\"", ",", 
     "\"\<Oceania\>\""}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
    "\"\<total_cases_per_million\>\"", ",", 
     "\"\<total_deaths_per_million\>\"", ",", "\[IndentingNewLine]", 
     "\"\<population_density\>\"", ",", "\"\<aged_70_older\>\"", ",", 
     "\[IndentingNewLine]", "\"\<diabetes_prevalence\>\"", ",", 
     "\"\<hospital_beds_per_thousand\>\"", ",", "\[IndentingNewLine]", 
     "\"\<gdp_per_capita\>\"", ",", "\"\<human_development_index\>\""}], 
    "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.840950158554119*^9, 3.8409501920991344`*^9}, {
   3.840950241043869*^9, 3.8409502423780365`*^9}, {3.8409507594142947`*^9, 
   3.8409507617374115`*^9}, 3.8409508244738984`*^9, 3.8409540231937695`*^9, {
   3.840954085418833*^9, 3.8409541069246902`*^9}, {3.8410056512162333`*^9, 
   3.841005658407231*^9}, {3.8410056884792504`*^9, 3.841005734745584*^9}, {
   3.841005802312372*^9, 3.8410058420314293`*^9}, 3.8411303168530993`*^9},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[63]:=",ExpressionUUID->"b6da17e2-20bc-4a70-a1d6-44a617da3659"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Analysis", "Section",
 CellChangeTimes->{{3.840420218592393*^9, 3.840420220344944*^9}, {
  3.84042060776716*^9, 3.8404206090391426`*^9}, {3.8405132009453735`*^9, 
  3.8405132022472773`*^9}},ExpressionUUID->"19357831-dfcb-4ab6-ac50-\
cfbfc6d0efef"],

Cell[CellGroupData[{

Cell["Cluster Analysis (Unsupervised Machine Learning)", "Item",
 CellChangeTimes->{{3.8405021497111235`*^9, 3.8405021853425293`*^9}, {
  3.8405132354072323`*^9, 3.840513240814926*^9}, {3.8405132710477753`*^9, 
  3.840513274767213*^9}, {3.8405194248614388`*^9, 3.840519435142544*^9}},
 Background->RGBColor[
  1, 0.9, 0.8],ExpressionUUID->"75bfaf80-d57c-4a44-99c1-dfa6588bc017"],

Cell[BoxData[{
 RowBox[{"Length", "[", 
  RowBox[{"attributeToClusterBy", "=", 
   RowBox[{"DeleteCases", "[", 
    RowBox[{
     RowBox[{"DeleteCases", "[", 
      RowBox[{
       StyleBox["latestStatsForComparison",
        FontWeight->"Bold"], ",", "\"\<total_cases\>\""}], "]"}], ",", 
     "\"\<total_deaths\>\""}], "]"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"datasetToCluster", "=", 
    RowBox[{"datasetCovidLatestStats", "[", 
     RowBox[{"All", ",", "attributeToClusterBy"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"vectorToCluster", "=", 
   RowBox[{"Normal", "[", 
    RowBox[{"Values", "/@", 
     RowBox[{"Values", "[", "datasetToCluster", "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"standardizedVectorToCluster", "=", 
   RowBox[{"Transpose", "[", 
    RowBox[{"Standardize", "/@", 
     RowBox[{"Transpose", "[", "vectorToCluster", "]"}]}], "]"}]}], 
  ";"}]}], "Input",
 CellChangeTimes->{{3.8411057376155095`*^9, 3.841105738090707*^9}, {
   3.8411057770588503`*^9, 3.841105813453721*^9}, 3.841105860576235*^9, {
   3.84110595462376*^9, 3.8411059550297766`*^9}, {3.841108159625923*^9, 
   3.841108185425889*^9}, {3.8411085262387357`*^9, 3.8411085268687577`*^9}, {
   3.8411234914173565`*^9, 3.841123493163891*^9}, {3.8411281609889574`*^9, 
   3.841128209586938*^9}, {3.841128314165745*^9, 3.841128316236872*^9}, {
   3.8411303878930707`*^9, 3.841130388556073*^9}, {3.841131051901797*^9, 
   3.8411310620171223`*^9}, {3.841131093020794*^9, 3.8411311014828835`*^9}, {
   3.84153960918766*^9, 3.841539612272664*^9}, {3.84154059335734*^9, 
   3.841540593986271*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[64]:=",ExpressionUUID->"9d6d8aa2-eb11-43cb-b2e3-992256fae5b7"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"clusterAllLocations", "=", 
   RowBox[{"FindClusters", "[", 
    RowBox[{"Association", "[", 
     RowBox[{"Thread", "[", 
      RowBox[{"listLocations", "->", "standardizedVectorToCluster"}], "]"}], 
     "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Grid", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Prepend", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Transpose", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Range", "[", 
         RowBox[{"Length", "@", "clusterAllLocations"}], "]"}], ",", 
        "clusterAllLocations", ",", 
        RowBox[{"Keys", "[", 
         RowBox[{"Counts", "[", 
          RowBox[{"Length", "/@", "clusterAllLocations"}], "]"}], "]"}]}], 
       "}"}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Cluster\>\"", ",", "\"\<Members\>\"", ",", "\"\<Count\>\""}], 
      "}"}]}], "]"}], ",", 
   RowBox[{"Alignment", "->", "Left"}], ",", 
   RowBox[{"Frame", "->", "All"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.8415409389061384`*^9, 3.84154097751711*^9}, {
  3.841541017200437*^9, 3.8415410246193533`*^9}, {3.841541147322042*^9, 
  3.841541230927023*^9}, {3.8415413610072823`*^9, 3.841541369160966*^9}, {
  3.841541538153944*^9, 3.8415415809194155`*^9}, {3.841541622621062*^9, 
  3.8415416230338607`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[73]:=",ExpressionUUID->"b17786f2-e02b-4b24-a6d9-6771ffca397a"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"viewCovidLatestStatsByCluster", "[", 
    RowBox[{"location0_", ":", "\"\<World\>\""}], "]"}],
   FontWeight->"Bold"], 
  StyleBox[":=",
   FontWeight->"Bold"], 
  StyleBox["\[IndentingNewLine]",
   FontWeight->"Bold"], 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ListPlot", "[", 
     RowBox[{
      RowBox[{
       StyleBox["datasetCovidLatestStats",
        FontWeight->"Bold"], 
       StyleBox["[",
        FontWeight->"Bold"], 
       RowBox[{
        RowBox[{
         StyleBox["clusterAllLocations",
          FontWeight->"Bold"], "[", 
         RowBox[{"[", "clusterNumber", "]"}], "]"}], 
        StyleBox[",",
         FontWeight->"Bold"], 
        StyleBox[
         RowBox[{"{", 
          RowBox[{"stat1", ",", "stat2"}], "}"}],
         FontWeight->"Bold"]}], 
       StyleBox["]",
        FontWeight->"Bold"]}], 
      StyleBox[",",
       FontWeight->"Bold"], 
      StyleBox["\[IndentingNewLine]",
       FontWeight->"Bold"], 
      RowBox[{
       StyleBox["AxesLabel",
        FontWeight->"Bold"], 
       StyleBox["->",
        FontWeight->"Bold"], 
       RowBox[{"{", 
        RowBox[{"stat1", ",", "stat2"}], "}"}]}], ",", "\[IndentingNewLine]", 
      RowBox[{"PlotLabel", "\[Rule]", 
       RowBox[{"Style", "[", 
        RowBox[{
         RowBox[{
         "stat1", "<>", "\"\< vs. \>\"", "<>", "stat2", "<>", 
          "\"\< for Cluster #\>\"", "<>", 
          RowBox[{"ToString", "@", 
           StyleBox["clusterNumber",
            FontWeight->"Bold"]}], 
          StyleBox["<>",
           FontWeight->"Bold"], 
          "\!\(\*StyleBox[\"\\\"\",FontWeight->\"Bold\"]\) \>\"", "<>", 
          "owidAsOf", "<>", "\"\<\\n\>\""}], ",", "Bold"}], "]"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ImageSize", "->", "Large"}]}], 
     StyleBox["]",
      FontWeight->"Bold"]}], 
    StyleBox[",",
     FontWeight->"Bold"], 
    StyleBox["\[IndentingNewLine]",
     FontWeight->"Bold"], 
    StyleBox[
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"clusterNumber", ",", 
         RowBox[{
          RowBox[{"Position", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"MemberQ", "[", 
               RowBox[{"#", ",", "location0"}], "]"}], "&"}], "/@", 
             "clusterAllLocations"}], ",", "True"}], "]"}], "[", 
          RowBox[{"[", 
           RowBox[{"1", ",", "1"}], "]"}], "]"}]}], "}"}], ",", "1", ",", 
       RowBox[{"Length", "@", "clusterAllLocations"}], ",", "1", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"ControlType", "->", "RadioButtonBar"}]}], "}"}],
     FontWeight->"Bold"], 
    StyleBox[",",
     FontWeight->"Bold"], 
    StyleBox["\[IndentingNewLine]",
     FontWeight->"Bold"], 
    StyleBox[
     RowBox[{"{", 
      RowBox[{"stat1", ",", "attributeToClusterBy"}], "}"}],
     FontWeight->"Bold"], 
    StyleBox[",",
     FontWeight->"Bold"], 
    StyleBox["\[IndentingNewLine]",
     FontWeight->"Bold"], 
    StyleBox[
     RowBox[{"{", 
      RowBox[{"stat2", ",", 
       RowBox[{"attributeToClusterBy", "[", 
        RowBox[{"[", 
         RowBox[{"2", ";;"}], "]"}], "]"}]}], "}"}],
     FontWeight->"Bold"], 
    StyleBox[",",
     FontWeight->"Bold"], 
    StyleBox["\[IndentingNewLine]",
     FontWeight->"Bold"], 
    StyleBox[
     RowBox[{"ControlPlacement", "->", "Bottom"}],
     FontWeight->"Bold"]}], 
   StyleBox["]",
    FontWeight->"Bold"]}]}]], "Input",
 CellChangeTimes->{{3.8416277276621404`*^9, 3.8416277299544296`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[76]:=",ExpressionUUID->"c0e98675-157f-4871-b080-8ea962d1f59b"],

Cell[BoxData[
 StyleBox[
  RowBox[{"viewCovidLatestStatsByCluster", "[", "]"}],
  FontWeight->"Bold"]], "Input",
 CellChangeTimes->{{3.8411064753675513`*^9, 3.841106499764558*^9}, {
   3.841107945446746*^9, 3.8411079532057486`*^9}, {3.8411079841362934`*^9, 
   3.841107984701969*^9}, {3.841108684584676*^9, 3.8411086855006876`*^9}, {
   3.8411235373007917`*^9, 3.841123539086792*^9}, 3.8411284107269697`*^9},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[79]:=",ExpressionUUID->"5209caad-571c-4b0d-a793-1d197ea05e04"],

Cell[BoxData[
 RowBox[{
  RowBox[{"viewClustersByCentroidAttributes", "[", "]"}], ":=", 
  "\[IndentingNewLine]", 
  RowBox[{"Module", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "datasetLatestStatsClusterAve", ",", "clusterAveLatestStats", ",", 
      "standardizedClusterAveLatestStats", ",", "linethickness"}], "}"}], ",",
     "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"datasetLatestStatsClusterAve", "=", "\[IndentingNewLine]", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"datasetCovidLatestStats", "[", 
         RowBox[{
          RowBox[{"GroupBy", "[", 
           RowBox[{
            RowBox[{"MemberQ", "[", 
             RowBox[{
              RowBox[{"clusterAllLocations", "[", 
               RowBox[{"[", "i", "]"}], "]"}], ",", "#location"}], "]"}], 
            "&"}], "]"}], ",", "Mean", ",", "attributeToClusterBy"}], "]"}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{"i", ",", 
          RowBox[{"Length", "@", "clusterAllLocations"}]}], "}"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"clusterAveLatestStats", "=", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"Normal", "[", 
          RowBox[{"Values", "/@", 
           RowBox[{"Values", "[", "#", "]"}]}], "]"}], "[", 
         RowBox[{"[", "1", "]"}], "]"}], "&"}], "/@", 
       "datasetLatestStatsClusterAve"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"standardizedClusterAveLatestStats", "=", 
      RowBox[{"Transpose", "[", 
       RowBox[{"Standardize", "/@", 
        RowBox[{"Transpose", "[", "clusterAveLatestStats", "]"}]}], "]"}]}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"linethickness", "=", 
      RowBox[{
       RowBox[{"N", "@", 
        FractionBox[
         RowBox[{"Length", "/@", "clusterAllLocations"}], 
         RowBox[{"Total", "[", 
          RowBox[{"Length", "/@", "clusterAllLocations"}], "]"}]]}], "/", 
       "25"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"RadialAxisPlot", "[", 
      RowBox[{"standardizedClusterAveLatestStats", ",", "\[IndentingNewLine]", 
       RowBox[{"PlotStyle", "->", 
        RowBox[{"Thickness", "/@", 
         RowBox[{"(", "linethickness", ")"}]}]}], ",", "\[IndentingNewLine]", 
       RowBox[{"PlotLegends", "\[Rule]", "Automatic"}], ",", " ", 
       RowBox[{"AxesLabel", "->", "attributeToClusterBy"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"PlotLabel", "\[Rule]", 
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{
          "\"\<Compare Cluster Centroids by Latest Stats \>\"", "<>", 
           "owidAsOf", "<>", "\"\<\\n\>\""}], ",", "Bold"}], "]"}]}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.8410240022287097`*^9, 3.8410240853481236`*^9}, {
   3.841024144397458*^9, 3.841024166763453*^9}, {3.841024224389249*^9, 
   3.8410243292215796`*^9}, {3.841024389405078*^9, 3.8410244305682383`*^9}, {
   3.8410244991301866`*^9, 3.841024499386198*^9}, {3.8410245769806023`*^9, 
   3.8410247248585796`*^9}, {3.841024767212487*^9, 3.8410248214685373`*^9}, {
   3.841024873683346*^9, 3.8410249317276354`*^9}, {3.8410249717963066`*^9, 
   3.841024987130667*^9}, {3.8410250294516587`*^9, 3.841025034795124*^9}, {
   3.8410250696440706`*^9, 3.8410250760680194`*^9}, {3.8410252284559603`*^9, 
   3.841025305683697*^9}, {3.841025385794653*^9, 3.8410254111236486`*^9}, {
   3.841026181298603*^9, 3.841026199874467*^9}, {3.841026322978305*^9, 
   3.841026324699317*^9}, {3.8411071784022727`*^9, 3.84110719764628*^9}, {
   3.841130671022911*^9, 3.8411306932299695`*^9}, {3.841130771349908*^9, 
   3.8411308284064407`*^9}, {3.841130862497881*^9, 3.8411308785338655`*^9}, {
   3.8411311445807776`*^9, 3.841131147062132*^9}, 3.841539965869501*^9},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[80]:=",ExpressionUUID->"b661ebd6-26f3-4f48-be13-e293421e44aa"],

Cell[BoxData[
 RowBox[{"viewClustersByCentroidAttributes", "[", "]"}]], "Input",
 CellChangeTimes->{{3.8410240022287097`*^9, 3.8410240853481236`*^9}, {
  3.841024144397458*^9, 3.841024166763453*^9}, {3.841024224389249*^9, 
  3.8410243292215796`*^9}, {3.841024389405078*^9, 3.8410244305682383`*^9}, {
  3.8410244991301866`*^9, 3.841024499386198*^9}, {3.8410245769806023`*^9, 
  3.8410247248585796`*^9}, {3.841024767212487*^9, 3.8410248214685373`*^9}, {
  3.841024873683346*^9, 3.8410249317276354`*^9}, {3.8410249717963066`*^9, 
  3.841024987130667*^9}, {3.8410250294516587`*^9, 3.841025034795124*^9}, {
  3.8410250696440706`*^9, 3.8410250760680194`*^9}, {3.8410252284559603`*^9, 
  3.841025305683697*^9}, {3.841025385794653*^9, 3.8410254111236486`*^9}, {
  3.841026181298603*^9, 3.841026199874467*^9}, {3.841026322978305*^9, 
  3.841026324699317*^9}, {3.8411071784022727`*^9, 3.841107203308279*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[81]:=",ExpressionUUID->"273c620b-ef2f-4e5a-94cc-aa4c1b760dae"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Unsupervised Machine Learning - Dimensionality Reduction", "Item",
 CellChangeTimes->{{3.8405021497111235`*^9, 3.8405021853425293`*^9}, {
  3.8405132354072323`*^9, 3.840513240814926*^9}, {3.8405132776633253`*^9, 
  3.8405132814548826`*^9}},
 Background->RGBColor[
  1, 0.9, 0.8],ExpressionUUID->"16c4e1f4-2135-41cc-9085-4865d175041c"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"dimReducedVector", "=", 
   RowBox[{"DimensionReduce", "[", "standardizedVectorToCluster", "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"datasetDimReducedVector", "=", 
   RowBox[{"Dataset", "[", 
    RowBox[{"Association", "[", 
     RowBox[{"Thread", "[", 
      RowBox[{"listLocations", "->", "dimReducedVector"}], "]"}], "]"}], 
    "]"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.8405197791950383`*^9, 3.8405197841199007`*^9}, 
   3.8405198147810955`*^9, {3.840519846944338*^9, 3.8405198679998646`*^9}, {
   3.8405199539808097`*^9, 3.84052000779866*^9}, 3.8405200462346287`*^9, {
   3.8409549695831037`*^9, 3.840954994409361*^9}, {3.8409586405438576`*^9, 
   3.8409586887232323`*^9}, {3.8410066355564346`*^9, 
   3.8410066359274817`*^9}, {3.8411084450547667`*^9, 
   3.8411084465167823`*^9}, {3.841131008299954*^9, 3.841131008841674*^9}, {
   3.8411311865242186`*^9, 3.8411312349317417`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[82]:=",ExpressionUUID->"8e6b6e99-a398-443d-bc57-888a7f8fb230"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"viewReducedDimensionRepresentation", "[", 
    RowBox[{"location0_", ":", "\"\<World\>\""}], "]"}],
   FontWeight->"Bold"], 
  StyleBox[":=",
   FontWeight->"Bold"], 
  StyleBox["\[IndentingNewLine]",
   FontWeight->"Bold"], 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        StyleBox[
         RowBox[{"datasetDimReducedVector", "[", 
          RowBox[{"clusterAllLocations", "[", 
           RowBox[{"[", "clusterNumber", "]"}], "]"}], "]"}],
         FontWeight->"Bold"], 
        StyleBox[",",
         FontWeight->"Bold"], 
        StyleBox["\[IndentingNewLine]",
         FontWeight->"Bold"], 
        RowBox[{
         StyleBox["AxesLabel",
          FontWeight->"Bold"], 
         StyleBox["->",
          FontWeight->"Bold"], 
         RowBox[{"{", 
          RowBox[{
          "\"\<artificial dimension 1\>\"", ",", 
           "\"\<artificial dimension 2\>\""}], "}"}]}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{
           "\"\<Dimensionality Reduced (2D) Representation: Countries in \
Cluster #\>\"", "<>", 
            RowBox[{"ToString", "@", "clusterNumber"}], "<>", 
            "\"\< vs. All \>\"", "<>", "owidAsOf", "<>", "\"\<\\n\>\""}], ",",
            "Bold"}], "]"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{"ImageSize", "->", "Large"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         StyleBox["PlotStyle",
          FontWeight->"Bold"], 
         StyleBox["->",
          FontWeight->"Bold"], 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{
            StyleBox["PointSize",
             FontWeight->"Bold"], 
            StyleBox["[",
             FontWeight->"Bold"], "Large", "]"}]}], "}"}]}]}], 
       StyleBox["]",
        FontWeight->"Bold"]}], 
      StyleBox[",",
       FontWeight->"Bold"], 
      StyleBox["\[IndentingNewLine]",
       FontWeight->"Bold"], 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        StyleBox[
         RowBox[{"datasetDimReducedVector", "[", 
          RowBox[{"Complement", "[", 
           RowBox[{"listLocations", ",", 
            RowBox[{"clusterAllLocations", "[", 
             RowBox[{"[", "clusterNumber", "]"}], "]"}]}], "]"}], "]"}],
         FontWeight->"Bold"], 
        StyleBox[",",
         FontWeight->"Bold"], "\[IndentingNewLine]", 
        StyleBox[
         RowBox[{"PlotStyle", "->", 
          RowBox[{"{", 
           RowBox[{"Gray", ",", 
            RowBox[{"PointSize", "[", "Small", "]"}]}], "}"}]}],
         FontWeight->"Bold"]}], 
       StyleBox["]",
        FontWeight->"Bold"]}]}], 
     StyleBox["]",
      FontWeight->"Bold"]}], 
    StyleBox[",",
     FontWeight->"Bold"], 
    StyleBox["\[IndentingNewLine]",
     FontWeight->"Bold"], 
    StyleBox[
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"clusterNumber", ",", 
         RowBox[{
          RowBox[{"Position", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"MemberQ", "[", 
               RowBox[{"#", ",", "location0"}], "]"}], "&"}], "/@", 
             "clusterAllLocations"}], ",", "True"}], "]"}], "[", 
          RowBox[{"[", 
           RowBox[{"1", ",", "1"}], "]"}], "]"}]}], "}"}], ",", "1", ",", 
       RowBox[{"Length", "@", "clusterAllLocations"}], ",", "1", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"ControlType", "->", "RadioButtonBar"}]}], "}"}],
     FontWeight->"Bold"], 
    StyleBox[",",
     FontWeight->"Bold"], 
    StyleBox["\[IndentingNewLine]",
     FontWeight->"Bold"], 
    StyleBox[
     RowBox[{"ControlPlacement", "->", "Bottom"}],
     FontWeight->"Bold"]}], 
   StyleBox["]",
    FontWeight->"Bold"]}]}]], "Input",
 CellChangeTimes->{{3.8404335600149*^9, 3.840433596723811*^9}, {
   3.8404336449684205`*^9, 3.840433678568651*^9}, {3.840434112457141*^9, 
   3.840434117292183*^9}, {3.840434161578021*^9, 3.840434196784012*^9}, 
   3.84043440035972*^9, {3.8405085710694027`*^9, 3.840508578034625*^9}, {
   3.8405099767548766`*^9, 3.8405099862368307`*^9}, {3.840510648097899*^9, 
   3.840510733520858*^9}, {3.8405172302856283`*^9, 3.840517322725149*^9}, {
   3.840517366598878*^9, 3.840517416619425*^9}, {3.8405177902848377`*^9, 
   3.840517807364815*^9}, {3.840518513388736*^9, 3.840518524738809*^9}, 
   3.8405185552934084`*^9, {3.8405186884197636`*^9, 3.8405186959233837`*^9}, 
   3.8405199223305635`*^9, 3.840520135664826*^9, {3.840520170920434*^9, 
   3.8405202298774576`*^9}, {3.8405203184292946`*^9, 
   3.8405203277532387`*^9}, {3.84052041575816*^9, 3.840520540931001*^9}, {
   3.8405209034284167`*^9, 3.8405209367474155`*^9}, {3.840520974358061*^9, 
   3.8405210333872786`*^9}, {3.840521080568905*^9, 3.8405211042399006`*^9}, {
   3.840521161448877*^9, 3.8405212648559513`*^9}, 3.8405213212645793`*^9, {
   3.840521385663752*^9, 3.8405214845233293`*^9}, {3.8405264900736094`*^9, 
   3.8405264905846043`*^9}, {3.8410069091228085`*^9, 
   3.8410069277299137`*^9}, {3.8410072279093*^9, 3.8410072350203094`*^9}, {
   3.8410081693375893`*^9, 3.8410082439396152`*^9}, {3.841008872968556*^9, 
   3.841008881114545*^9}, {3.841014901260351*^9, 3.8410149077824574`*^9}, {
   3.841021261169487*^9, 3.8410212801021338`*^9}, 3.8410213229154406`*^9, {
   3.8411083847747903`*^9, 3.8411084263187313`*^9}, 3.8411086167497497`*^9, {
   3.8411087080927444`*^9, 3.8411087151906633`*^9}, {3.841123618175748*^9, 
   3.841123622944838*^9}, {3.841131260458748*^9, 3.8411312626857343`*^9}, {
   3.841131317102688*^9, 3.8411313542056684`*^9}, {3.8415420560826902`*^9, 
   3.841542077339861*^9}, {3.841542608588765*^9, 3.8415426101037383`*^9}, {
   3.8416281681170154`*^9, 3.8416282091015897`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[91]:=",ExpressionUUID->"2d453e6d-8a7c-49b7-8e28-2e73689be8cc"],

Cell[BoxData[
 StyleBox[
  RowBox[{"viewReducedDimensionRepresentation", "[", "]"}],
  FontWeight->"Bold"]], "Input",
 CellChangeTimes->{{3.8404335600149*^9, 3.840433596723811*^9}, {
   3.8404336449684205`*^9, 3.840433678568651*^9}, {3.840434112457141*^9, 
   3.840434117292183*^9}, {3.840434161578021*^9, 3.840434196784012*^9}, 
   3.84043440035972*^9, {3.8405085710694027`*^9, 3.840508578034625*^9}, {
   3.8405099767548766`*^9, 3.8405099862368307`*^9}, {3.840510648097899*^9, 
   3.840510733520858*^9}, {3.8405172302856283`*^9, 3.840517322725149*^9}, {
   3.840517366598878*^9, 3.840517416619425*^9}, {3.8405177902848377`*^9, 
   3.840517807364815*^9}, {3.840518513388736*^9, 3.840518524738809*^9}, 
   3.8405185552934084`*^9, {3.8405186884197636`*^9, 3.8405186959233837`*^9}, 
   3.8405199223305635`*^9, 3.840520135664826*^9, {3.840520170920434*^9, 
   3.8405202298774576`*^9}, {3.8405203184292946`*^9, 
   3.8405203277532387`*^9}, {3.84052041575816*^9, 3.840520540931001*^9}, {
   3.8405209034284167`*^9, 3.8405209367474155`*^9}, {3.840520974358061*^9, 
   3.8405210333872786`*^9}, {3.840521080568905*^9, 3.8405211042399006`*^9}, {
   3.840521161448877*^9, 3.8405212648559513`*^9}, 3.8405213212645793`*^9, {
   3.840521385663752*^9, 3.8405214845233293`*^9}, {3.8405264900736094`*^9, 
   3.8405264905846043`*^9}, {3.8410069091228085`*^9, 
   3.8410069277299137`*^9}, {3.8410072279093*^9, 3.8410072350203094`*^9}, {
   3.8410081693375893`*^9, 3.8410082439396152`*^9}, {3.841008872968556*^9, 
   3.841008881114545*^9}, {3.841014901260351*^9, 3.8410149077824574`*^9}, {
   3.841021261169487*^9, 3.8410212801021338`*^9}, 3.8410213229154406`*^9, {
   3.841108403126734*^9, 3.8411084036358147`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[92]:=",ExpressionUUID->"ee2b898a-2bfa-430d-bae8-80ac2b0ade8a"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Supervised Machine Learning - Numerical Prediction", "Item",
 CellChangeTimes->{{3.8405021497111235`*^9, 3.8405021853425293`*^9}, {
  3.8405132354072323`*^9, 3.8405132473672123`*^9}, {3.840513283391296*^9, 
  3.8405133157271338`*^9}},
 Background->RGBColor[
  1, 0.9, 0.8],ExpressionUUID->"bead3a71-11ec-432b-bb6f-1e7a5c6f3f65"],

Cell[BoxData[
 RowBox[{"Length", "[", 
  RowBox[{"listExplanatoryVariables", "=", 
   RowBox[{"DeleteCases", "[", 
    RowBox[{
     RowBox[{"DeleteCases", "[", 
      RowBox[{
      "attributeToClusterBy", ",", "\"\<total_cases_per_million\>\""}], "]"}],
      ",", "\"\<total_deaths_per_million\>\""}], "]"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.840522303925887*^9, 3.840522316717024*^9}, {
  3.8405223548409214`*^9, 3.8405223557884035`*^9}, {3.8409591454455256`*^9, 
  3.8409591577646065`*^9}, {3.8411314106286697`*^9, 3.841131424315735*^9}, {
  3.8415427367231245`*^9, 3.841542739713438*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->"In[94]:=",ExpressionUUID->"149b44d2-8071-49ae-87ab-02d3d17436a4"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{
   "viewCovidIncidenceActualVsBaselineFit", "[", "\[IndentingNewLine]", 
    RowBox[{"locationsToWatch_", ":", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<World\>\"", ",", "\"\<Asia\>\"", ",", "\"\<Thailand\>\"", ",", 
       "\"\<Europe\>\"", ",", "\"\<United Kingdom\>\"", ",", 
       "\"\<North America\>\"", ",", "\"\<United States\>\"", ",", 
       "\"\<South America\>\"", ",", "\"\<Brazil\>\"", ",", "\"\<Africa\>\"", 
       ",", "\"\<Oceania\>\""}], "}"}]}], "]"}],
   FontWeight->"Bold"], 
  StyleBox[":=",
   FontWeight->"Bold"], 
  StyleBox["\[IndentingNewLine]",
   FontWeight->"Bold"], 
  RowBox[{"Module", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "x", ",", "y1", ",", "y2", ",", "y1Predictor", ",", "y2Predictor", ",", 
      "\[IndentingNewLine]", "y1Fitted", ",", "y2Fitted", ",", "y1Error", ",",
       "y2Error", ",", "rmseY1", ",", "rmseY2", ",", "fittingResult"}], "}"}],
     ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"x", "=", 
      RowBox[{"Values", "/@", 
       RowBox[{"Normal", "[", 
        RowBox[{"Values", "[", 
         RowBox[{"datasetCovidLatestStats", "[", 
          RowBox[{"All", ",", "listExplanatoryVariables"}], "]"}], "]"}], 
        "]"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"y1", "=", 
      RowBox[{"Values", "[", 
       RowBox[{"Normal", "[", 
        RowBox[{"datasetCovidLatestStats", "[", 
         RowBox[{"All", ",", "\"\<total_cases_per_million\>\""}], "]"}], 
        "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"y2", "=", 
      RowBox[{
       RowBox[{
        RowBox[{"Replace", "[", 
         RowBox[{"#", ",", 
          RowBox[{"\"\<\>\"", "->", "0"}]}], "]"}], "&"}], "/@", 
       RowBox[{"Values", "[", 
        RowBox[{"Normal", "[", 
         RowBox[{"datasetCovidLatestStats", "[", 
          RowBox[{"All", ",", "\"\<total_deaths_per_million\>\""}], "]"}], 
         "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"y1Predictor", "=", 
      RowBox[{"Predict", "[", 
       RowBox[{"x", "->", "y1"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"y2Predictor", "=", 
      RowBox[{"Predict", "[", 
       RowBox[{"x", "->", "y2"}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"y1Fitted", "=", 
      RowBox[{
       RowBox[{
        RowBox[{"y1Predictor", "[", "#", "]"}], "&"}], "/@", "x"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"y2Fitted", "=", 
      RowBox[{
       RowBox[{
        RowBox[{"y2Predictor", "[", "#", "]"}], "&"}], "/@", "x"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"y1Error", "=", 
      RowBox[{"y1Fitted", "-", "y1"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"y2Error", "=", 
      RowBox[{"y2Fitted", "-", "y2"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"rmseY1", "=", 
      RowBox[{"Round", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Norm", "[", "y1Error", "]"}], "/", 
         RowBox[{"Sqrt", "[", 
          RowBox[{"Length", "@", "x"}], "]"}]}], ",", "1"}], "]"}]}], ";", 
     RowBox[{"rmseY2", "=", 
      RowBox[{"Round", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Norm", "[", "y2Error", "]"}], "/", 
         RowBox[{"Sqrt", "[", 
          RowBox[{"Length", "@", "x"}], "]"}]}], ",", "1"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"fittingResult", "=", 
      RowBox[{"Dataset", "[", 
       RowBox[{"Association", "[", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"listLocations", "[", 
            RowBox[{"[", "i", "]"}], "]"}], "->", "\[IndentingNewLine]", 
           RowBox[{"<|", 
            RowBox[{
             RowBox[{"\"\<cpm\>\"", "->", 
              RowBox[{"Round", "[", 
               RowBox[{
                RowBox[{"y1", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], ",", "1"}], "]"}]}], ",", 
             RowBox[{"\"\<cpmEst\>\"", "->", 
              RowBox[{"Round", "[", 
               RowBox[{
                RowBox[{"y1Fitted", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], ",", "1"}], "]"}]}], ",", 
             RowBox[{"\"\<cpm/cpmEst\>\"", "->", 
              RowBox[{"Round", "[", 
               RowBox[{
                FractionBox[
                 RowBox[{"y1", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], 
                 RowBox[{"y1Fitted", "[", 
                  RowBox[{"[", "i", "]"}], "]"}]], ",", "0.01"}], "]"}]}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"\"\<dpm\>\"", "->", 
              RowBox[{"Round", "[", 
               RowBox[{
                RowBox[{"y2", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], ",", "1"}], "]"}]}], ",", 
             RowBox[{"\"\<dpmEst\>\"", "->", 
              RowBox[{"Round", "[", 
               RowBox[{
                RowBox[{"y2Fitted", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], ",", "1"}], "]"}]}], ",", 
             RowBox[{"\"\<dpm/dpmEst\>\"", "->", 
              RowBox[{"Round", "[", 
               RowBox[{
                FractionBox[
                 RowBox[{"y2", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], 
                 RowBox[{"y2Fitted", "[", 
                  RowBox[{"[", "i", "]"}], "]"}]], ",", "0.01"}], "]"}]}]}], 
            "|>"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", 
            RowBox[{"Length", "@", "listLocations"}]}], "}"}]}], "]"}], "]"}],
        "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Grid", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"ListPlot", "[", 
           RowBox[{
            StyleBox[
             RowBox[{"fittingResult", "[", 
              RowBox[{"All", ",", 
               RowBox[{"{", 
                RowBox[{"\"\<cpm\>\"", ",", "\"\<cpmEst\>\""}], "}"}]}], "]"}],
             FontWeight->"Bold"], 
            StyleBox[",",
             FontWeight->"Bold"], 
            StyleBox["\[IndentingNewLine]",
             FontWeight->"Bold"], 
            RowBox[{"AxesLabel", "->", 
             RowBox[{"{", 
              RowBox[{"\"\<actual\>\"", ",", "\"\<fitted\>\""}], "}"}]}], ",",
             "\[IndentingNewLine]", 
            RowBox[{"PlotLabel", "\[Rule]", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"\"\<Actual vs Fitted (cases/million) using \>\"", "<>", 
                RowBox[{
                 RowBox[{"Information", "[", "y1Predictor", "]"}], "[", 
                 "\"\<Method\>\"", "]"}], "<>", "\"\< \>\"", "<>", 
                "owidAsOf"}], ",", "Bold"}], "]"}]}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"ImageSize", "->", "Large"}]}], 
           StyleBox["]",
            FontWeight->"Bold"]}], 
          StyleBox["}",
           FontWeight->"Bold"]}], 
         StyleBox[",",
          FontWeight->"Bold"], 
         StyleBox["\[IndentingNewLine]",
          FontWeight->"Bold"], 
         RowBox[{
          StyleBox["{",
           FontWeight->"Bold"], 
          RowBox[{"ListPlot", "[", 
           RowBox[{
            StyleBox[
             RowBox[{"fittingResult", "[", 
              RowBox[{"All", ",", 
               RowBox[{"{", 
                RowBox[{"\"\<dpm\>\"", ",", "\"\<dpmEst\>\""}], "}"}]}], "]"}],
             FontWeight->"Bold"], 
            StyleBox[",",
             FontWeight->"Bold"], 
            StyleBox["\[IndentingNewLine]",
             FontWeight->"Bold"], 
            RowBox[{"AxesLabel", "->", 
             RowBox[{"{", 
              RowBox[{"\"\<actual\>\"", ",", "\"\<fitted\>\""}], "}"}]}], ",",
             "\[IndentingNewLine]", 
            RowBox[{"PlotLabel", "\[Rule]", 
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"\"\<Actual vs Fitted (deaths/million) using \>\"", "<>", 
                RowBox[{
                 RowBox[{"Information", "[", "y1Predictor", "]"}], "[", 
                 "\"\<Method\>\"", "]"}], "<>", "\"\< \>\"", "<>", 
                "owidAsOf"}], ",", "Bold"}], "]"}]}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"ImageSize", "->", "Large"}]}], 
           StyleBox["]",
            FontWeight->"Bold"]}], 
          StyleBox["}",
           FontWeight->"Bold"]}], 
         StyleBox[",",
          FontWeight->"Bold"], 
         StyleBox["\[IndentingNewLine]",
          FontWeight->"Bold"], 
         RowBox[{
          StyleBox["{",
           FontWeight->"Bold"], 
          RowBox[{"fittingResult", "[", "locationsToWatch", "]"}], "}"}]}], 
        StyleBox["}",
         FontWeight->"Bold"]}], 
       StyleBox[",",
        FontWeight->"Bold"], 
       StyleBox[
        RowBox[{"Frame", "->", "All"}],
        FontWeight->"Bold"]}], 
      StyleBox["]",
       FontWeight->"Bold"]}]}]}], 
   StyleBox["]",
    FontWeight->"Bold"]}]}]], "Input",
 CellChangeTimes->{{3.841016411637246*^9, 3.8410165290037627`*^9}, {
   3.8410165842541018`*^9, 3.8410165874710016`*^9}, {3.841016619902969*^9, 
   3.841016724704054*^9}, {3.8410218043726425`*^9, 3.841021805484637*^9}, 
   3.8410218359475656`*^9, {3.841021880695533*^9, 3.8410219169644866`*^9}, {
   3.8410219787114286`*^9, 3.8410219821843996`*^9}, {3.841022422285349*^9, 
   3.8410224857238755`*^9}, {3.841023025862857*^9, 3.8410231151719007`*^9}, {
   3.841023163328748*^9, 3.8410232209828634`*^9}, {3.841109084632512*^9, 
   3.8411090890872774`*^9}, {3.8411091291995773`*^9, 
   3.8411091296154976`*^9}, {3.8411091814414673`*^9, 3.841109272872631*^9}, {
   3.8411093068735*^9, 3.8411093123395915`*^9}, {3.841109356119726*^9, 
   3.841109370376108*^9}, {3.841109714345254*^9, 3.8411097217593575`*^9}, {
   3.841109791808688*^9, 3.841109799073612*^9}, {3.841109864914198*^9, 
   3.841110013110256*^9}, {3.8411314962477255`*^9, 3.8411315137746077`*^9}, {
   3.841131705438532*^9, 3.8411317516785126`*^9}, 3.841542810118396*^9, {
   3.841628607787348*^9, 3.841628672155399*^9}, {3.841628799780675*^9, 
   3.8416288024888372`*^9}, {3.8416288694085274`*^9, 3.841628921738305*^9}, {
   3.8416290128863564`*^9, 3.8416291006573253`*^9}, {3.841629264158636*^9, 
   3.8416292780857506`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->
  "In[107]:=",ExpressionUUID->"e716d53e-d05c-4527-a929-03e3724b4d9e"],

Cell[BoxData[
 StyleBox[
  RowBox[{"viewCovidIncidenceActualVsBaselineFit", "[", "]"}],
  FontWeight->"Bold"]], "Input",
 CellChangeTimes->{{3.841016411637246*^9, 3.8410165290037627`*^9}, {
   3.8410165842541018`*^9, 3.8410165874710016`*^9}, {3.841016619902969*^9, 
   3.841016724704054*^9}, {3.8410218043726425`*^9, 3.841021805484637*^9}, 
   3.8410218359475656`*^9, {3.841021880695533*^9, 3.8410219169644866`*^9}, {
   3.8410219787114286`*^9, 3.8410219821843996`*^9}, {3.841022422285349*^9, 
   3.8410224857238755`*^9}, {3.841023025862857*^9, 3.8410231151719007`*^9}, {
   3.841023163328748*^9, 3.8410232209828634`*^9}, {3.841109084632512*^9, 
   3.8411090890872774`*^9}, {3.841109124837511*^9, 3.841109125315516*^9}, {
   3.8411092650476604`*^9, 3.8411092785574512`*^9}},
 Background->RGBColor[0.87, 0.94, 1],
 CellLabel->
  "In[108]:=",ExpressionUUID->"abea9dca-1dd2-470d-aa09-d5463edaed48"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{960, 485},
WindowMargins->{{Automatic, -5.5}, {-5.5, Automatic}},
DockedCells->{},
PrintingCopies->1,
PrintingPageRange->{32000, 32000},
PrintingOptions->{"Magnification"->1.,
"PaperOrientation"->"Portrait",
"PaperSize"->{595.2755905511812, 841.8897637795276}},
Magnification:>0.8 Inherited,
FrontEndVersion->"12.3 for Microsoft Windows (64-bit) (June 19, 2021)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"f2b602a3-5829-490b-9ba8-4324474b9c2c"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 230, 4, 78, "Title",ExpressionUUID->"4b08d1b7-baee-41da-84c4-98cb53ace530"],
Cell[CellGroupData[{
Cell[1765, 43, 202, 4, 54, "Section",ExpressionUUID->"f7eab793-ddbd-48e5-b6aa-6ea59d29e0ea"],
Cell[CellGroupData[{
Cell[1992, 51, 206, 3, 38, "Item",ExpressionUUID->"78c0ec4b-702d-44b1-8a05-161510d9a7cb"],
Cell[2201, 56, 997, 21, 66, "Input",ExpressionUUID->"dc74b1ab-2f12-41e3-8fb5-5a4e64bb4f05"],
Cell[3201, 79, 595, 14, 35, "Input",ExpressionUUID->"7a38ed0f-f488-4531-8cb8-06e9bdb9959b"],
Cell[3799, 95, 444, 8, 35, "Input",ExpressionUUID->"130f87ca-ec33-4dc6-be98-34a4b61c668f"],
Cell[4246, 105, 1296, 21, 35, "Input",ExpressionUUID->"2694128d-cba8-4406-ab3f-e8f20602fe68"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5579, 131, 199, 3, 38, "Item",ExpressionUUID->"d508106c-0d6e-4f87-a9f1-3fdb3f69e377"],
Cell[5781, 136, 1355, 31, 35, "Input",ExpressionUUID->"04ec1797-8fb6-4b7e-8532-794bc3b40166"],
Cell[7139, 169, 938, 17, 130, "Input",ExpressionUUID->"d3f3dfc5-4531-4d32-8199-bae4127854e7"],
Cell[8080, 188, 2054, 32, 130, "Input",ExpressionUUID->"dd094783-ee2e-41a7-85d7-d6d1af03abc1"],
Cell[10137, 222, 1710, 36, 82, "Input",ExpressionUUID->"ace933db-7b91-490c-8b41-010144c5721e"],
Cell[11850, 260, 1109, 20, 35, "Input",ExpressionUUID->"f3f887e1-2a3a-49bc-be01-f8f057b1e873"],
Cell[12962, 282, 1088, 20, 35, "Input",ExpressionUUID->"11bb180c-9b80-445a-8fe4-df3ff935c4c7"],
Cell[14053, 304, 1666, 29, 51, "Input",ExpressionUUID->"74f10966-0db3-4b94-92c1-57be754ecc09"],
Cell[15722, 335, 1750, 34, 66, "Input",ExpressionUUID->"e86f917c-3620-43ea-963f-8b02c4e45f61"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17509, 374, 303, 5, 38, "Item",ExpressionUUID->"b488d9e2-8b2a-4ef6-a9da-f6a47368c91b"],
Cell[17815, 381, 4302, 87, 189, "Input",ExpressionUUID->"7b09876e-2e78-427c-8b01-f691f5649e6a"],
Cell[22120, 470, 1831, 27, 35, "Input",ExpressionUUID->"c5405ca2-9f98-4187-b7ff-c4acadb55b39"]
}, Open  ]],
Cell[CellGroupData[{
Cell[23988, 502, 405, 6, 38, "Item",ExpressionUUID->"73c21664-d1f9-4c18-985f-9239c6a2ae67"],
Cell[24396, 510, 3321, 85, 158, "Input",ExpressionUUID->"1560c5d8-8b0f-4479-99b2-069d1b7ddce6"],
Cell[27720, 597, 1108, 18, 35, "Input",ExpressionUUID->"ee701593-e3d6-4b15-98ff-71399b1512a2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[28865, 620, 456, 7, 38, "Item",ExpressionUUID->"d2a3702c-828a-49b3-917d-74b27f1ada82"],
Cell[29324, 629, 783, 14, 35, "Input",ExpressionUUID->"917d004b-00fc-4c58-9198-e1bc3d95ed36"],
Cell[30110, 645, 3238, 69, 204, "Input",ExpressionUUID->"5d31c754-367c-43b0-92f1-6fc3a46b478f"],
Cell[33351, 716, 368, 6, 35, "Input",ExpressionUUID->"a0834401-c470-4239-a0cc-85282a03df6c"],
Cell[33722, 724, 1288, 23, 114, "Input",ExpressionUUID->"b6da17e2-20bc-4a70-a1d6-44a617da3659"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[35059, 753, 253, 4, 54, "Section",ExpressionUUID->"19357831-dfcb-4ab6-ac50-cfbfc6d0efef"],
Cell[CellGroupData[{
Cell[35337, 761, 378, 5, 38, "Item",ExpressionUUID->"75bfaf80-d57c-4a44-99c1-dfa6588bc017"],
Cell[35718, 768, 1803, 39, 97, "Input",ExpressionUUID->"9d6d8aa2-eb11-43cb-b2e3-992256fae5b7"],
Cell[37524, 809, 1475, 34, 97, "Input",ExpressionUUID->"b17786f2-e02b-4b24-a6d9-6771ffca397a"],
Cell[39002, 845, 3695, 113, 189, "Input",ExpressionUUID->"c0e98675-157f-4871-b080-8ea962d1f59b"],
Cell[42700, 960, 525, 9, 35, "Input",ExpressionUUID->"5209caad-571c-4b0d-a793-1d197ea05e04"],
Cell[43228, 971, 3974, 83, 267, "Input",ExpressionUUID->"b661ebd6-26f3-4f48-be13-e293421e44aa"],
Cell[47205, 1056, 1015, 14, 35, "Input",ExpressionUUID->"273c620b-ef2f-4e5a-94cc-aa4c1b760dae"]
}, Open  ]],
Cell[CellGroupData[{
Cell[48257, 1075, 340, 5, 38, "Item",ExpressionUUID->"16c4e1f4-2135-41cc-9085-4865d175041c"],
Cell[48600, 1082, 1069, 21, 51, "Input",ExpressionUUID->"8e6b6e99-a398-443d-bc57-888a7f8fb230"],
Cell[49672, 1105, 6007, 144, 234, "Input",ExpressionUUID->"2d453e6d-8a7c-49b7-8e28-2e73689be8cc"],
Cell[55682, 1251, 1814, 27, 35, "Input",ExpressionUUID->"ee2b898a-2bfa-430d-bae8-80ac2b0ade8a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[57533, 1283, 334, 5, 38, "Item",ExpressionUUID->"bead3a71-11ec-432b-bb6f-1e7a5c6f3f65"],
Cell[57870, 1290, 718, 14, 39, "Input",ExpressionUUID->"149b44d2-8071-49ae-87ab-02d3d17436a4"],
Cell[58591, 1306, 10343, 249, 545, "Input",ExpressionUUID->"e716d53e-d05c-4527-a929-03e3724b4d9e"],
Cell[68937, 1557, 895, 15, 35, "Input",ExpressionUUID->"abea9dca-1dd2-470d-aa09-d5463edaed48"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 7up5cQDXZb7p4AwnXgIQMPOp *)
