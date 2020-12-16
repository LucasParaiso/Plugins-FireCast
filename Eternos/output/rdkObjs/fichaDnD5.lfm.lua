require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_ETERNOS_NOME()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setDataType("ETERNOS_FICHA");
    obj:setFormType("sheetTemplate");
    obj:setTitle("Eternos");
    obj:setName("ETERNOS_NOME");
    obj:setTheme("dark");

    obj.pgcPrincipal = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.pgcPrincipal:setParent(obj);
    obj.pgcPrincipal:setAlign("client");
    obj.pgcPrincipal:setName("pgcPrincipal");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.pgcPrincipal);
    obj.tab1:setTitle("Frente");
    obj.tab1:setName("tab1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.tab1);
    obj.rectangle1:setName("rectangle1");
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("#40000000");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.rectangle1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.fraFrenteLayout = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraFrenteLayout:setParent(obj.scrollBox1);
    obj.fraFrenteLayout:setAlign("top");
    obj.fraFrenteLayout:setHeight(500);
    obj.fraFrenteLayout:setMargins({left=10, right=10, top=10});
    obj.fraFrenteLayout:setAutoHeight(true);
    obj.fraFrenteLayout:setHorzAlign("center");
    obj.fraFrenteLayout:setLineSpacing(2);
    obj.fraFrenteLayout:setName("fraFrenteLayout");
    obj.fraFrenteLayout:setStepSizes({310, 420, 640, 760, 1150});
    obj.fraFrenteLayout:setMinScaledWidth(300);
    obj.fraFrenteLayout:setVertAlign("leading");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.fraFrenteLayout);
    obj.flowLayout1:setAutoHeight(true);
    obj.flowLayout1:setMinScaledWidth(290);
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");
    obj.flowLayout1:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout1:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout1:setVertAlign("leading");

    obj.flwNome1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flwNome1:setParent(obj.flowLayout1);
    obj.flwNome1:setName("flwNome1");
    obj.flwNome1:setMinWidth(320);
    obj.flwNome1:setMaxWidth(1600);
    obj.flwNome1:setFrameStyle("frames/banner/dragon.xml");
    obj.flwNome1:setHeight(175);
    obj.flwNome1:setVertAlign("center");
    obj.flwNome1:setAvoidScale(true);
    obj.flwNome1:setMargins({left=1, right=1, top=2, bottom=2});

    obj.layNomeHolderFrente = GUI.fromHandle(_obj_newObject("layout"));
    obj.layNomeHolderFrente:setParent(obj.flwNome1);
    obj.layNomeHolderFrente:setAlign("client");
    obj.layNomeHolderFrente:setName("layNomeHolderFrente");

    obj.edtNome1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtNome1:setParent(obj.layNomeHolderFrente);
    obj.edtNome1:setName("edtNome1");
    obj.edtNome1:setField("nome");
    obj.edtNome1:setFontSize(17);
    obj.edtNome1:setAlign("client");
    obj.edtNome1:setFontColor("white");
    obj.edtNome1:setVertTextAlign("center");
    obj.edtNome1:setTransparent(true);

    obj.labNome1 = GUI.fromHandle(_obj_newObject("label"));
    obj.labNome1:setParent(obj.layNomeHolderFrente);
    obj.labNome1:setMargins({left=3});
    obj.labNome1:setName("labNome1");
    obj.labNome1:setAlign("bottom");
    obj.labNome1:setText("NOME DO PERSONAGEM");
    obj.labNome1:setAutoSize(true);
    obj.labNome1:setFontSize(12);
    obj.labNome1:setFontColor("#D0D0D0");

    obj.fraUpperGridFrente = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraUpperGridFrente:setParent(obj.flowLayout1);
    obj.fraUpperGridFrente:setMinWidth(320);
    obj.fraUpperGridFrente:setMaxWidth(1600);
    obj.fraUpperGridFrente:setName("fraUpperGridFrente");
    obj.fraUpperGridFrente:setAvoidScale(true);
    obj.fraUpperGridFrente:setFrameStyle("frames/upperInfoGrid/frame.xml");
    obj.fraUpperGridFrente:setAutoHeight(true);
    obj.fraUpperGridFrente:setVertAlign("trailing");
    obj.fraUpperGridFrente:setMaxControlsPerLine(3);
    obj.fraUpperGridFrente:setMargins({left=1, right=1, top=2, bottom=2});

    obj.UpperGridCampo1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo1:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo1:setHeight(50);
    obj.UpperGridCampo1:setMinScaledWidth(100);
    obj.UpperGridCampo1:setMinWidth(100);
    obj.UpperGridCampo1:setMaxWidth(233);
    obj.UpperGridCampo1:setMaxScaledWidth(233);
    obj.UpperGridCampo1:setAvoidScale(true);
    obj.UpperGridCampo1:setName("UpperGridCampo1");
    obj.UpperGridCampo1:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo1:setVertAlign("leading");

    obj.edtUpperGridCampo1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo1:setParent(obj.UpperGridCampo1);
    obj.edtUpperGridCampo1:setName("edtUpperGridCampo1");
    obj.edtUpperGridCampo1:setAlign("top");
    obj.edtUpperGridCampo1:setField("classeENivel");
    obj.edtUpperGridCampo1:setFontSize(13);
    obj.edtUpperGridCampo1:setHeight(30);
    obj.edtUpperGridCampo1:setTransparent(true);
    obj.edtUpperGridCampo1:setVertTextAlign("trailing");
    obj.edtUpperGridCampo1:setWidth(195);
    obj.edtUpperGridCampo1:setFontColor("white");

    obj.linUpperGridCampo1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo1:setParent(obj.UpperGridCampo1);
    obj.linUpperGridCampo1:setName("linUpperGridCampo1");
    obj.linUpperGridCampo1:setAlign("top");
    obj.linUpperGridCampo1:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo1:setStrokeSize(1);

    obj.labUpperGridCampo1 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo1:setParent(obj.UpperGridCampo1);
    obj.labUpperGridCampo1:setName("labUpperGridCampo1");
    obj.labUpperGridCampo1:setAlign("top");
    obj.labUpperGridCampo1:setText("CLASSE E NIVEL");
    obj.labUpperGridCampo1:setVertTextAlign("leading");
    obj.labUpperGridCampo1:setWordWrap(true);
    obj.labUpperGridCampo1:setTextTrimming("none");
    obj.labUpperGridCampo1:setFontSize(12);
    obj.labUpperGridCampo1:setFontColor("#D0D0D0");

    self.UpperGridCampo1:setHeight(self.edtUpperGridCampo1:getHeight() + self.labUpperGridCampo1:getHeight() + self.linUpperGridCampo1:getHeight());


    obj.UpperGridCampo2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo2:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo2:setHeight(50);
    obj.UpperGridCampo2:setMinScaledWidth(100);
    obj.UpperGridCampo2:setMinWidth(100);
    obj.UpperGridCampo2:setMaxWidth(233);
    obj.UpperGridCampo2:setMaxScaledWidth(233);
    obj.UpperGridCampo2:setAvoidScale(true);
    obj.UpperGridCampo2:setName("UpperGridCampo2");
    obj.UpperGridCampo2:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo2:setVertAlign("leading");

    obj.edtUpperGridCampo2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo2:setParent(obj.UpperGridCampo2);
    obj.edtUpperGridCampo2:setName("edtUpperGridCampo2");
    obj.edtUpperGridCampo2:setAlign("top");
    obj.edtUpperGridCampo2:setField("antecedentes");
    obj.edtUpperGridCampo2:setFontSize(13);
    obj.edtUpperGridCampo2:setHeight(30);
    obj.edtUpperGridCampo2:setTransparent(true);
    obj.edtUpperGridCampo2:setVertTextAlign("trailing");
    obj.edtUpperGridCampo2:setWidth(195);
    obj.edtUpperGridCampo2:setFontColor("white");

    obj.linUpperGridCampo2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo2:setParent(obj.UpperGridCampo2);
    obj.linUpperGridCampo2:setName("linUpperGridCampo2");
    obj.linUpperGridCampo2:setAlign("top");
    obj.linUpperGridCampo2:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo2:setStrokeSize(1);

    obj.labUpperGridCampo2 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo2:setParent(obj.UpperGridCampo2);
    obj.labUpperGridCampo2:setName("labUpperGridCampo2");
    obj.labUpperGridCampo2:setAlign("top");
    obj.labUpperGridCampo2:setText("ANTECEDENTES");
    obj.labUpperGridCampo2:setVertTextAlign("leading");
    obj.labUpperGridCampo2:setWordWrap(true);
    obj.labUpperGridCampo2:setTextTrimming("none");
    obj.labUpperGridCampo2:setFontSize(12);
    obj.labUpperGridCampo2:setFontColor("#D0D0D0");

    self.UpperGridCampo2:setHeight(self.edtUpperGridCampo2:getHeight() + self.labUpperGridCampo2:getHeight() + self.linUpperGridCampo2:getHeight());


    obj.UpperGridCampo3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo3:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo3:setHeight(50);
    obj.UpperGridCampo3:setMinScaledWidth(100);
    obj.UpperGridCampo3:setMinWidth(100);
    obj.UpperGridCampo3:setMaxWidth(233);
    obj.UpperGridCampo3:setMaxScaledWidth(233);
    obj.UpperGridCampo3:setAvoidScale(true);
    obj.UpperGridCampo3:setName("UpperGridCampo3");
    obj.UpperGridCampo3:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo3:setVertAlign("leading");

    obj.edtUpperGridCampo3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo3:setParent(obj.UpperGridCampo3);
    obj.edtUpperGridCampo3:setName("edtUpperGridCampo3");
    obj.edtUpperGridCampo3:setAlign("top");
    obj.edtUpperGridCampo3:setField("nomeDoJogador");
    obj.edtUpperGridCampo3:setFontSize(13);
    obj.edtUpperGridCampo3:setHeight(30);
    obj.edtUpperGridCampo3:setTransparent(true);
    obj.edtUpperGridCampo3:setVertTextAlign("trailing");
    obj.edtUpperGridCampo3:setWidth(195);
    obj.edtUpperGridCampo3:setFontColor("white");

    obj.linUpperGridCampo3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo3:setParent(obj.UpperGridCampo3);
    obj.linUpperGridCampo3:setName("linUpperGridCampo3");
    obj.linUpperGridCampo3:setAlign("top");
    obj.linUpperGridCampo3:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo3:setStrokeSize(1);

    obj.labUpperGridCampo3 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo3:setParent(obj.UpperGridCampo3);
    obj.labUpperGridCampo3:setName("labUpperGridCampo3");
    obj.labUpperGridCampo3:setAlign("top");
    obj.labUpperGridCampo3:setText("JOGADOR");
    obj.labUpperGridCampo3:setVertTextAlign("leading");
    obj.labUpperGridCampo3:setWordWrap(true);
    obj.labUpperGridCampo3:setTextTrimming("none");
    obj.labUpperGridCampo3:setFontSize(12);
    obj.labUpperGridCampo3:setFontColor("#D0D0D0");

    self.UpperGridCampo3:setHeight(self.edtUpperGridCampo3:getHeight() + self.labUpperGridCampo3:getHeight() + self.linUpperGridCampo3:getHeight());


    obj.UpperGridCampo4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo4:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo4:setHeight(50);
    obj.UpperGridCampo4:setMinScaledWidth(100);
    obj.UpperGridCampo4:setMinWidth(100);
    obj.UpperGridCampo4:setMaxWidth(233);
    obj.UpperGridCampo4:setMaxScaledWidth(233);
    obj.UpperGridCampo4:setAvoidScale(true);
    obj.UpperGridCampo4:setName("UpperGridCampo4");
    obj.UpperGridCampo4:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo4:setVertAlign("leading");

    obj.edtUpperGridCampo4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo4:setParent(obj.UpperGridCampo4);
    obj.edtUpperGridCampo4:setName("edtUpperGridCampo4");
    obj.edtUpperGridCampo4:setAlign("top");
    obj.edtUpperGridCampo4:setField("raca");
    obj.edtUpperGridCampo4:setFontSize(13);
    obj.edtUpperGridCampo4:setHeight(30);
    obj.edtUpperGridCampo4:setTransparent(true);
    obj.edtUpperGridCampo4:setVertTextAlign("trailing");
    obj.edtUpperGridCampo4:setWidth(195);
    obj.edtUpperGridCampo4:setFontColor("white");

    obj.linUpperGridCampo4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo4:setParent(obj.UpperGridCampo4);
    obj.linUpperGridCampo4:setName("linUpperGridCampo4");
    obj.linUpperGridCampo4:setAlign("top");
    obj.linUpperGridCampo4:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo4:setStrokeSize(1);

    obj.labUpperGridCampo4 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo4:setParent(obj.UpperGridCampo4);
    obj.labUpperGridCampo4:setName("labUpperGridCampo4");
    obj.labUpperGridCampo4:setAlign("top");
    obj.labUpperGridCampo4:setText("RAÇA");
    obj.labUpperGridCampo4:setVertTextAlign("leading");
    obj.labUpperGridCampo4:setWordWrap(true);
    obj.labUpperGridCampo4:setTextTrimming("none");
    obj.labUpperGridCampo4:setFontSize(12);
    obj.labUpperGridCampo4:setFontColor("#D0D0D0");

    self.UpperGridCampo4:setHeight(self.edtUpperGridCampo4:getHeight() + self.labUpperGridCampo4:getHeight() + self.linUpperGridCampo4:getHeight());


    obj.UpperGridCampo5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo5:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo5:setHeight(50);
    obj.UpperGridCampo5:setMinScaledWidth(100);
    obj.UpperGridCampo5:setMinWidth(100);
    obj.UpperGridCampo5:setMaxWidth(233);
    obj.UpperGridCampo5:setMaxScaledWidth(233);
    obj.UpperGridCampo5:setAvoidScale(true);
    obj.UpperGridCampo5:setName("UpperGridCampo5");
    obj.UpperGridCampo5:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo5:setVertAlign("leading");

    obj.edtUpperGridCampo5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo5:setParent(obj.UpperGridCampo5);
    obj.edtUpperGridCampo5:setName("edtUpperGridCampo5");
    obj.edtUpperGridCampo5:setAlign("top");
    obj.edtUpperGridCampo5:setField("tendencia");
    obj.edtUpperGridCampo5:setFontSize(13);
    obj.edtUpperGridCampo5:setHeight(30);
    obj.edtUpperGridCampo5:setTransparent(true);
    obj.edtUpperGridCampo5:setVertTextAlign("trailing");
    obj.edtUpperGridCampo5:setWidth(195);
    obj.edtUpperGridCampo5:setFontColor("white");

    obj.linUpperGridCampo5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo5:setParent(obj.UpperGridCampo5);
    obj.linUpperGridCampo5:setName("linUpperGridCampo5");
    obj.linUpperGridCampo5:setAlign("top");
    obj.linUpperGridCampo5:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo5:setStrokeSize(1);

    obj.labUpperGridCampo5 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo5:setParent(obj.UpperGridCampo5);
    obj.labUpperGridCampo5:setName("labUpperGridCampo5");
    obj.labUpperGridCampo5:setAlign("top");
    obj.labUpperGridCampo5:setText("TENDÊNCIA");
    obj.labUpperGridCampo5:setVertTextAlign("leading");
    obj.labUpperGridCampo5:setWordWrap(true);
    obj.labUpperGridCampo5:setTextTrimming("none");
    obj.labUpperGridCampo5:setFontSize(12);
    obj.labUpperGridCampo5:setFontColor("#D0D0D0");

    self.UpperGridCampo5:setHeight(self.edtUpperGridCampo5:getHeight() + self.labUpperGridCampo5:getHeight() + self.linUpperGridCampo5:getHeight());


    obj.UpperGridCampo6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo6:setParent(obj.fraUpperGridFrente);
    obj.UpperGridCampo6:setHeight(50);
    obj.UpperGridCampo6:setMinScaledWidth(100);
    obj.UpperGridCampo6:setMinWidth(100);
    obj.UpperGridCampo6:setMaxWidth(233);
    obj.UpperGridCampo6:setMaxScaledWidth(233);
    obj.UpperGridCampo6:setAvoidScale(true);
    obj.UpperGridCampo6:setName("UpperGridCampo6");
    obj.UpperGridCampo6:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo6:setVertAlign("leading");

    obj.edtUpperGridCampo6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo6:setParent(obj.UpperGridCampo6);
    obj.edtUpperGridCampo6:setName("edtUpperGridCampo6");
    obj.edtUpperGridCampo6:setAlign("top");
    obj.edtUpperGridCampo6:setField("experiencia.valor");
    obj.edtUpperGridCampo6:setFontSize(13);
    obj.edtUpperGridCampo6:setHeight(30);
    obj.edtUpperGridCampo6:setTransparent(true);
    obj.edtUpperGridCampo6:setVertTextAlign("trailing");
    obj.edtUpperGridCampo6:setWidth(195);
    obj.edtUpperGridCampo6:setFontColor("white");

    obj.linUpperGridCampo6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo6:setParent(obj.UpperGridCampo6);
    obj.linUpperGridCampo6:setName("linUpperGridCampo6");
    obj.linUpperGridCampo6:setAlign("top");
    obj.linUpperGridCampo6:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo6:setStrokeSize(1);

    obj.labUpperGridCampo6 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo6:setParent(obj.UpperGridCampo6);
    obj.labUpperGridCampo6:setName("labUpperGridCampo6");
    obj.labUpperGridCampo6:setAlign("top");
    obj.labUpperGridCampo6:setText("EXPERIÊNCIA");
    obj.labUpperGridCampo6:setVertTextAlign("leading");
    obj.labUpperGridCampo6:setWordWrap(true);
    obj.labUpperGridCampo6:setTextTrimming("none");
    obj.labUpperGridCampo6:setFontSize(12);
    obj.labUpperGridCampo6:setFontColor("#D0D0D0");

    self.UpperGridCampo6:setHeight(self.edtUpperGridCampo6:getHeight() + self.labUpperGridCampo6:getHeight() + self.linUpperGridCampo6:getHeight());


    obj.flowLineBreak1 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak1:setParent(obj.fraFrenteLayout);
    obj.flowLineBreak1:setName("flowLineBreak1");

    obj.flowLayout2 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout2:setParent(obj.fraFrenteLayout);
    obj.flowLayout2:setHorzAlign("justify");
    obj.flowLayout2:setAutoHeight(true);
    obj.flowLayout2:setAvoidScale(true);
    obj.flowLayout2:setName("flowLayout2");
    obj.flowLayout2:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout2:setMinScaledWidth(300);
    obj.flowLayout2:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout2:setVertAlign("leading");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout2);
    obj.flowPart1:setMinWidth(280);
    obj.flowPart1:setMaxWidth(800);
    obj.flowPart1:setHeight(64);
    obj.flowPart1:setFrameStyle("frames/posCaptionEdit1/frame.xml");
    obj.flowPart1:setName("flowPart1");
    obj.flowPart1:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart1:setVertAlign("leading");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.flowPart1);
    obj.edit1:setAlign("left");
    obj.edit1:setField("inspiracao");
    obj.edit1:setWidth(65);
    obj.edit1:setName("edit1");
    obj.edit1:setTransparent(true);
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setFontSize(15);
    obj.edit1:setFontColor("white");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.flowPart1);
    obj.label1:setAlign("client");
    obj.label1:setText("INSPIRAÇÃO");
    obj.label1:setMargins({left=10});
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");
    obj.label1:setFontSize(12);
    obj.label1:setFontColor("#D0D0D0");

    obj.flowPart2 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart2:setParent(obj.flowLayout2);
    obj.flowPart2:setMinWidth(280);
    obj.flowPart2:setMaxWidth(800);
    obj.flowPart2:setHeight(64);
    obj.flowPart2:setFrameStyle("frames/posCaptionEdit2/frame.xml");
    obj.flowPart2:setName("flowPart2");
    obj.flowPart2:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart2:setVertAlign("leading");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.flowPart2);
    obj.edit2:setAlign("left");
    obj.edit2:setField("bonusProficiencia");
    obj.edit2:setWidth(70);
    obj.edit2:setName("edit2");
    obj.edit2:setTransparent(true);
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setFontSize(15);
    obj.edit2:setFontColor("white");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.flowPart2);
    obj.label2:setAlign("client");
    obj.label2:setText("BONUS DE PROFICIÊNCIA");
    obj.label2:setMargins({left=10});
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");
    obj.label2:setFontSize(12);
    obj.label2:setFontColor("#D0D0D0");

    obj.flowPart3 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart3:setParent(obj.flowLayout2);
    obj.flowPart3:setMinWidth(280);
    obj.flowPart3:setMaxWidth(800);
    obj.flowPart3:setHeight(64);
    obj.flowPart3:setFrameStyle("frames/posCaptionEdit2/frame.xml");
    obj.flowPart3:setName("flowPart3");
    obj.flowPart3:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart3:setVertAlign("leading");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.flowPart3);
    obj.edit3:setAlign("left");
    obj.edit3:setField("sabedoriaPassiva");
    obj.edit3:setWidth(70);
    obj.edit3:setName("edit3");
    obj.edit3:setTransparent(true);
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontSize(15);
    obj.edit3:setFontColor("white");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.flowPart3);
    obj.label3:setAlign("client");
    obj.label3:setText("SABEDORIA PASSIVA (PERCEPÇÃO)");
    obj.label3:setTextTrimming("none");
    obj.label3:setWordWrap(true);
    obj.label3:setMargins({left=10});
    obj.label3:setHorzTextAlign("center");
    obj.label3:setName("label3");
    obj.label3:setFontSize(12);
    obj.label3:setFontColor("#D0D0D0");

    obj.flowLineBreak2 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak2:setParent(obj.fraFrenteLayout);
    obj.flowLineBreak2:setName("flowLineBreak2");

    obj.flowLayout3 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout3:setParent(obj.fraFrenteLayout);
    obj.flowLayout3:setAutoHeight(true);
    obj.flowLayout3:setMinScaledWidth(290);
    obj.flowLayout3:setHorzAlign("center");
    obj.flowLayout3:setName("flowLayout3");
    obj.flowLayout3:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowLayout3:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout3:setVertAlign("leading");

    obj.fraLayAtributos = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraLayAtributos:setParent(obj.flowLayout3);
    obj.fraLayAtributos:setName("fraLayAtributos");
    obj.fraLayAtributos:setVertAlign("leading");
    obj.fraLayAtributos:setAutoHeight(true);
    obj.fraLayAtributos:setMinScaledWidth(290);
    obj.fraLayAtributos:setMaxControlsPerLine(3);
    obj.fraLayAtributos:setHorzAlign("center");
    obj.fraLayAtributos:setLineSpacing(10);
    obj.fraLayAtributos:setFrameStyle("frames/panel1/frame.xml");
    obj.fraLayAtributos:setMargins({left=2, top=2, right=16, bottom=4});
    obj.fraLayAtributos:setAvoidScale(true);
    obj.fraLayAtributos:setStepSizes({310, 420, 640, 760, 1150});

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.fraLayAtributos);
    obj.dataLink1:setField("atributos.forca");
    obj.dataLink1:setName("dataLink1");

    obj.flowPart4 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart4:setParent(obj.fraLayAtributos);
    obj.flowPart4:setHeight(140);
    obj.flowPart4:setMinWidth(320);
    obj.flowPart4:setMaxWidth(420);
    obj.flowPart4:setMinScaledWidth(305);
    obj.flowPart4:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart4:setName("flowPart4");
    obj.flowPart4:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart4:setVertAlign("leading");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.flowPart4);
    obj.layout1:setLeft(6);
    obj.layout1:setTop(12);
    obj.layout1:setWidth(116);
    obj.layout1:setHeight(115);
    obj.layout1:setName("layout1");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setAlign("top");
    obj.edit4:setMargins({left=30, right=30});
    obj.edit4:setField("atributos.forca");
    obj.edit4:setHeight(30);
    obj.edit4:setType("number");
    obj.edit4:setMin(0);
    obj.edit4:setMax(99);
    obj.edit4:setName("edit4");
    obj.edit4:setTransparent(true);
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setFontSize(15);
    obj.edit4:setFontColor("white");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.flowPart4);
    obj.label4:setFrameRegion("modificador");
    obj.label4:setField("atributos.modforcastr");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setVertTextAlign("center");
    obj.label4:setFontSize(46);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setName("label4");
    obj.label4:setFontColor("white");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.flowPart4);
    obj.label5:setFrameRegion("titulo");
    obj.label5:setText("FORÇA");
    obj.label5:setVertTextAlign("center");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");
    obj.label5:setFontColor("white");

    obj.flowLayout4 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout4:setParent(obj.flowPart4);
    obj.flowLayout4:setFrameRegion("RegiaoDePericias");
    obj.flowLayout4:setAutoHeight(true);
    obj.flowLayout4:setLineSpacing(0);
    obj.flowLayout4:setHorzAlign("leading");
    obj.flowLayout4:setName("flowLayout4");
    obj.flowLayout4:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout4:setVertAlign("leading");

    obj.flowPart5 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart5:setParent(obj.flowLayout4);
    obj.flowPart5:setMinWidth(206);
    obj.flowPart5:setMaxWidth(250);
    obj.flowPart5:setHeight(17);
    obj.flowPart5:setName("flowPart5");
    obj.flowPart5:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart5:setVertAlign("leading");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.flowPart5);
    obj.imageCheckBox1:setAlign("left");
    obj.imageCheckBox1:setWidth(20);
    obj.imageCheckBox1:setMargins({});
    obj.imageCheckBox1:setField("resistencias.forca");
    obj.imageCheckBox1:setOptimize(false);
    obj.imageCheckBox1:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox1:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox1:setName("imageCheckBox1");
    obj.imageCheckBox1:setHeight(20);

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.flowPart5);
    obj.layout2:setAlign("left");
    obj.layout2:setWidth(26);
    obj.layout2:setMargins({left=2});
    obj.layout2:setName("layout2");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout2);
    obj.label6:setField("resistencias.bonusforcastr");
    obj.label6:setAlign("client");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setVertTextAlign("trailing");
    obj.label6:setTextTrimming("none");
    obj.label6:setName("label6");
    obj.label6:setFontColor("white");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.layout2);
    obj.horzLine1:setStrokeColor("white");
    obj.horzLine1:setStrokeSize(1);
    obj.horzLine1:setAlign("bottom");
    obj.horzLine1:setName("horzLine1");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.flowPart5);
    obj.label7:setAlign("client");
    obj.label7:setText("Teste de Resistência");
    obj.label7:setVertTextAlign("trailing");
    obj.label7:setMargins({left=5});
    obj.label7:setAutoSize(true);
    obj.label7:setWordWrap(false);
    obj.label7:setName("label7");
    obj.label7:setFontColor("white");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.flowLayout4);
    obj.dataLink2:setFields({'atributos.modforca', 'bonusProficiencia', 'resistencias.forca'});
    obj.dataLink2:setName("dataLink2");

    obj.flowPart6 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart6:setParent(obj.flowLayout4);
    obj.flowPart6:setMinWidth(206);
    obj.flowPart6:setMaxWidth(250);
    obj.flowPart6:setHeight(17);
    obj.flowPart6:setName("flowPart6");
    obj.flowPart6:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart6:setVertAlign("leading");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.flowPart6);
    obj.imageCheckBox2:setAlign("left");
    obj.imageCheckBox2:setWidth(20);
    obj.imageCheckBox2:setMargins({});
    obj.imageCheckBox2:setField("pericias.atletismo");
    obj.imageCheckBox2:setOptimize(false);
    obj.imageCheckBox2:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox2:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox2:setName("imageCheckBox2");
    obj.imageCheckBox2:setHeight(20);

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.flowPart6);
    obj.layout3:setAlign("left");
    obj.layout3:setWidth(26);
    obj.layout3:setMargins({left=2});
    obj.layout3:setName("layout3");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout3);
    obj.label8:setField("pericias.bonusatletismostr");
    obj.label8:setAlign("client");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setVertTextAlign("trailing");
    obj.label8:setTextTrimming("none");
    obj.label8:setName("label8");
    obj.label8:setFontColor("white");

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.layout3);
    obj.horzLine2:setStrokeColor("white");
    obj.horzLine2:setStrokeSize(1);
    obj.horzLine2:setAlign("bottom");
    obj.horzLine2:setName("horzLine2");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.flowPart6);
    obj.label9:setAlign("client");
    obj.label9:setText("Atletismo");
    obj.label9:setVertTextAlign("trailing");
    obj.label9:setMargins({left=5});
    obj.label9:setAutoSize(true);
    obj.label9:setWordWrap(false);
    obj.label9:setName("label9");
    obj.label9:setFontColor("white");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.flowLayout4);
    obj.dataLink3:setFields({'atributos.modforca', 'bonusProficiencia', 'pericias.atletismo'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.fraLayAtributos);
    obj.dataLink4:setField("atributos.destreza");
    obj.dataLink4:setName("dataLink4");

    obj.flowPart7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart7:setParent(obj.fraLayAtributos);
    obj.flowPart7:setHeight(140);
    obj.flowPart7:setMinWidth(320);
    obj.flowPart7:setMaxWidth(420);
    obj.flowPart7:setMinScaledWidth(305);
    obj.flowPart7:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart7:setName("flowPart7");
    obj.flowPart7:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart7:setVertAlign("leading");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.flowPart7);
    obj.layout4:setLeft(6);
    obj.layout4:setTop(12);
    obj.layout4:setWidth(116);
    obj.layout4:setHeight(115);
    obj.layout4:setName("layout4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout4);
    obj.edit5:setAlign("top");
    obj.edit5:setMargins({left=30, right=30});
    obj.edit5:setField("atributos.destreza");
    obj.edit5:setHeight(30);
    obj.edit5:setType("number");
    obj.edit5:setMin(0);
    obj.edit5:setMax(99);
    obj.edit5:setName("edit5");
    obj.edit5:setTransparent(true);
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setFontSize(15);
    obj.edit5:setFontColor("white");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.flowPart7);
    obj.label10:setFrameRegion("modificador");
    obj.label10:setField("atributos.moddestrezastr");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setVertTextAlign("center");
    obj.label10:setFontSize(46);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setName("label10");
    obj.label10:setFontColor("white");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.flowPart7);
    obj.label11:setFrameRegion("titulo");
    obj.label11:setText("DESTREZA");
    obj.label11:setVertTextAlign("center");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setName("label11");
    obj.label11:setFontColor("white");

    obj.flowLayout5 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout5:setParent(obj.flowPart7);
    obj.flowLayout5:setFrameRegion("RegiaoDePericias");
    obj.flowLayout5:setAutoHeight(true);
    obj.flowLayout5:setLineSpacing(0);
    obj.flowLayout5:setHorzAlign("leading");
    obj.flowLayout5:setName("flowLayout5");
    obj.flowLayout5:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout5:setVertAlign("leading");

    obj.flowPart8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart8:setParent(obj.flowLayout5);
    obj.flowPart8:setMinWidth(206);
    obj.flowPart8:setMaxWidth(250);
    obj.flowPart8:setHeight(17);
    obj.flowPart8:setName("flowPart8");
    obj.flowPart8:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart8:setVertAlign("leading");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.flowPart8);
    obj.imageCheckBox3:setAlign("left");
    obj.imageCheckBox3:setWidth(20);
    obj.imageCheckBox3:setMargins({});
    obj.imageCheckBox3:setField("resistencias.destreza");
    obj.imageCheckBox3:setOptimize(false);
    obj.imageCheckBox3:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox3:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox3:setName("imageCheckBox3");
    obj.imageCheckBox3:setHeight(20);

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.flowPart8);
    obj.layout5:setAlign("left");
    obj.layout5:setWidth(26);
    obj.layout5:setMargins({left=2});
    obj.layout5:setName("layout5");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout5);
    obj.label12:setField("resistencias.bonusdestrezastr");
    obj.label12:setAlign("client");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setVertTextAlign("trailing");
    obj.label12:setTextTrimming("none");
    obj.label12:setName("label12");
    obj.label12:setFontColor("white");

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.layout5);
    obj.horzLine3:setStrokeColor("white");
    obj.horzLine3:setStrokeSize(1);
    obj.horzLine3:setAlign("bottom");
    obj.horzLine3:setName("horzLine3");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.flowPart8);
    obj.label13:setAlign("client");
    obj.label13:setText("Teste de Resistência");
    obj.label13:setVertTextAlign("trailing");
    obj.label13:setMargins({left=5});
    obj.label13:setAutoSize(true);
    obj.label13:setWordWrap(false);
    obj.label13:setName("label13");
    obj.label13:setFontColor("white");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.flowLayout5);
    obj.dataLink5:setFields({'atributos.moddestreza', 'bonusProficiencia', 'resistencias.destreza'});
    obj.dataLink5:setName("dataLink5");

    obj.flowPart9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart9:setParent(obj.flowLayout5);
    obj.flowPart9:setMinWidth(206);
    obj.flowPart9:setMaxWidth(250);
    obj.flowPart9:setHeight(17);
    obj.flowPart9:setName("flowPart9");
    obj.flowPart9:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart9:setVertAlign("leading");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.flowPart9);
    obj.imageCheckBox4:setAlign("left");
    obj.imageCheckBox4:setWidth(20);
    obj.imageCheckBox4:setMargins({});
    obj.imageCheckBox4:setField("pericias.acrobacia");
    obj.imageCheckBox4:setOptimize(false);
    obj.imageCheckBox4:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox4:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox4:setName("imageCheckBox4");
    obj.imageCheckBox4:setHeight(20);

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.flowPart9);
    obj.layout6:setAlign("left");
    obj.layout6:setWidth(26);
    obj.layout6:setMargins({left=2});
    obj.layout6:setName("layout6");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout6);
    obj.label14:setField("pericias.bonusacrobaciastr");
    obj.label14:setAlign("client");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setVertTextAlign("trailing");
    obj.label14:setTextTrimming("none");
    obj.label14:setName("label14");
    obj.label14:setFontColor("white");

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.layout6);
    obj.horzLine4:setStrokeColor("white");
    obj.horzLine4:setStrokeSize(1);
    obj.horzLine4:setAlign("bottom");
    obj.horzLine4:setName("horzLine4");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.flowPart9);
    obj.label15:setAlign("client");
    obj.label15:setText("Acrobacia");
    obj.label15:setVertTextAlign("trailing");
    obj.label15:setMargins({left=5});
    obj.label15:setAutoSize(true);
    obj.label15:setWordWrap(false);
    obj.label15:setName("label15");
    obj.label15:setFontColor("white");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.flowLayout5);
    obj.dataLink6:setFields({'atributos.moddestreza', 'bonusProficiencia', 'pericias.acrobacia'});
    obj.dataLink6:setName("dataLink6");

    obj.flowPart10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart10:setParent(obj.flowLayout5);
    obj.flowPart10:setMinWidth(206);
    obj.flowPart10:setMaxWidth(250);
    obj.flowPart10:setHeight(17);
    obj.flowPart10:setName("flowPart10");
    obj.flowPart10:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart10:setVertAlign("leading");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.flowPart10);
    obj.imageCheckBox5:setAlign("left");
    obj.imageCheckBox5:setWidth(20);
    obj.imageCheckBox5:setMargins({});
    obj.imageCheckBox5:setField("pericias.furtividade");
    obj.imageCheckBox5:setOptimize(false);
    obj.imageCheckBox5:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox5:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox5:setName("imageCheckBox5");
    obj.imageCheckBox5:setHeight(20);

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.flowPart10);
    obj.layout7:setAlign("left");
    obj.layout7:setWidth(26);
    obj.layout7:setMargins({left=2});
    obj.layout7:setName("layout7");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout7);
    obj.label16:setField("pericias.bonusfurtividadestr");
    obj.label16:setAlign("client");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setVertTextAlign("trailing");
    obj.label16:setTextTrimming("none");
    obj.label16:setName("label16");
    obj.label16:setFontColor("white");

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.layout7);
    obj.horzLine5:setStrokeColor("white");
    obj.horzLine5:setStrokeSize(1);
    obj.horzLine5:setAlign("bottom");
    obj.horzLine5:setName("horzLine5");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.flowPart10);
    obj.label17:setAlign("client");
    obj.label17:setText("Furtividade");
    obj.label17:setVertTextAlign("trailing");
    obj.label17:setMargins({left=5});
    obj.label17:setAutoSize(true);
    obj.label17:setWordWrap(false);
    obj.label17:setName("label17");
    obj.label17:setFontColor("white");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.flowLayout5);
    obj.dataLink7:setFields({'atributos.moddestreza', 'bonusProficiencia', 'pericias.furtividade'});
    obj.dataLink7:setName("dataLink7");

    obj.flowPart11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart11:setParent(obj.flowLayout5);
    obj.flowPart11:setMinWidth(206);
    obj.flowPart11:setMaxWidth(250);
    obj.flowPart11:setHeight(17);
    obj.flowPart11:setName("flowPart11");
    obj.flowPart11:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart11:setVertAlign("leading");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.flowPart11);
    obj.imageCheckBox6:setAlign("left");
    obj.imageCheckBox6:setWidth(20);
    obj.imageCheckBox6:setMargins({});
    obj.imageCheckBox6:setField("pericias.prestidigitacao");
    obj.imageCheckBox6:setOptimize(false);
    obj.imageCheckBox6:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox6:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox6:setName("imageCheckBox6");
    obj.imageCheckBox6:setHeight(20);

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.flowPart11);
    obj.layout8:setAlign("left");
    obj.layout8:setWidth(26);
    obj.layout8:setMargins({left=2});
    obj.layout8:setName("layout8");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout8);
    obj.label18:setField("pericias.bonusprestidigitacaostr");
    obj.label18:setAlign("client");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setVertTextAlign("trailing");
    obj.label18:setTextTrimming("none");
    obj.label18:setName("label18");
    obj.label18:setFontColor("white");

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.layout8);
    obj.horzLine6:setStrokeColor("white");
    obj.horzLine6:setStrokeSize(1);
    obj.horzLine6:setAlign("bottom");
    obj.horzLine6:setName("horzLine6");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.flowPart11);
    obj.label19:setAlign("client");
    obj.label19:setText("Prestidigitação");
    obj.label19:setVertTextAlign("trailing");
    obj.label19:setMargins({left=5});
    obj.label19:setAutoSize(true);
    obj.label19:setWordWrap(false);
    obj.label19:setName("label19");
    obj.label19:setFontColor("white");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.flowLayout5);
    obj.dataLink8:setFields({'atributos.moddestreza', 'bonusProficiencia', 'pericias.prestidigitacao'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.fraLayAtributos);
    obj.dataLink9:setField("atributos.constituicao");
    obj.dataLink9:setName("dataLink9");

    obj.flowPart12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart12:setParent(obj.fraLayAtributos);
    obj.flowPart12:setHeight(140);
    obj.flowPart12:setMinWidth(320);
    obj.flowPart12:setMaxWidth(420);
    obj.flowPart12:setMinScaledWidth(305);
    obj.flowPart12:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart12:setName("flowPart12");
    obj.flowPart12:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart12:setVertAlign("leading");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.flowPart12);
    obj.layout9:setLeft(6);
    obj.layout9:setTop(12);
    obj.layout9:setWidth(116);
    obj.layout9:setHeight(115);
    obj.layout9:setName("layout9");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout9);
    obj.edit6:setAlign("top");
    obj.edit6:setMargins({left=30, right=30});
    obj.edit6:setField("atributos.constituicao");
    obj.edit6:setHeight(30);
    obj.edit6:setType("number");
    obj.edit6:setMin(0);
    obj.edit6:setMax(99);
    obj.edit6:setName("edit6");
    obj.edit6:setTransparent(true);
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setFontSize(15);
    obj.edit6:setFontColor("white");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.flowPart12);
    obj.label20:setFrameRegion("modificador");
    obj.label20:setField("atributos.modconstituicaostr");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setVertTextAlign("center");
    obj.label20:setFontSize(46);
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setName("label20");
    obj.label20:setFontColor("white");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.flowPart12);
    obj.label21:setFrameRegion("titulo");
    obj.label21:setText("CONSTITUIÇÃO");
    obj.label21:setVertTextAlign("center");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");
    obj.label21:setFontColor("white");

    obj.flowLayout6 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout6:setParent(obj.flowPart12);
    obj.flowLayout6:setFrameRegion("RegiaoDePericias");
    obj.flowLayout6:setAutoHeight(true);
    obj.flowLayout6:setLineSpacing(0);
    obj.flowLayout6:setHorzAlign("leading");
    obj.flowLayout6:setName("flowLayout6");
    obj.flowLayout6:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout6:setVertAlign("leading");

    obj.flowPart13 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart13:setParent(obj.flowLayout6);
    obj.flowPart13:setMinWidth(206);
    obj.flowPart13:setMaxWidth(250);
    obj.flowPart13:setHeight(17);
    obj.flowPart13:setName("flowPart13");
    obj.flowPart13:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart13:setVertAlign("leading");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.flowPart13);
    obj.imageCheckBox7:setAlign("left");
    obj.imageCheckBox7:setWidth(20);
    obj.imageCheckBox7:setMargins({});
    obj.imageCheckBox7:setField("resistencias.constituicao");
    obj.imageCheckBox7:setOptimize(false);
    obj.imageCheckBox7:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox7:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox7:setName("imageCheckBox7");
    obj.imageCheckBox7:setHeight(20);

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.flowPart13);
    obj.layout10:setAlign("left");
    obj.layout10:setWidth(26);
    obj.layout10:setMargins({left=2});
    obj.layout10:setName("layout10");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout10);
    obj.label22:setField("resistencias.bonusconstituicaostr");
    obj.label22:setAlign("client");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setVertTextAlign("trailing");
    obj.label22:setTextTrimming("none");
    obj.label22:setName("label22");
    obj.label22:setFontColor("white");

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.layout10);
    obj.horzLine7:setStrokeColor("white");
    obj.horzLine7:setStrokeSize(1);
    obj.horzLine7:setAlign("bottom");
    obj.horzLine7:setName("horzLine7");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.flowPart13);
    obj.label23:setAlign("client");
    obj.label23:setText("Teste de Resistência");
    obj.label23:setVertTextAlign("trailing");
    obj.label23:setMargins({left=5});
    obj.label23:setAutoSize(true);
    obj.label23:setWordWrap(false);
    obj.label23:setName("label23");
    obj.label23:setFontColor("white");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.flowLayout6);
    obj.dataLink10:setFields({'atributos.modconstituicao', 'bonusProficiencia', 'resistencias.constituicao'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.fraLayAtributos);
    obj.dataLink11:setField("atributos.inteligencia");
    obj.dataLink11:setName("dataLink11");

    obj.flowPart14 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart14:setParent(obj.fraLayAtributos);
    obj.flowPart14:setHeight(140);
    obj.flowPart14:setMinWidth(320);
    obj.flowPart14:setMaxWidth(420);
    obj.flowPart14:setMinScaledWidth(305);
    obj.flowPart14:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart14:setName("flowPart14");
    obj.flowPart14:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart14:setVertAlign("leading");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.flowPart14);
    obj.layout11:setLeft(6);
    obj.layout11:setTop(12);
    obj.layout11:setWidth(116);
    obj.layout11:setHeight(115);
    obj.layout11:setName("layout11");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout11);
    obj.edit7:setAlign("top");
    obj.edit7:setMargins({left=30, right=30});
    obj.edit7:setField("atributos.inteligencia");
    obj.edit7:setHeight(30);
    obj.edit7:setType("number");
    obj.edit7:setMin(0);
    obj.edit7:setMax(99);
    obj.edit7:setName("edit7");
    obj.edit7:setTransparent(true);
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setFontSize(15);
    obj.edit7:setFontColor("white");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.flowPart14);
    obj.label24:setFrameRegion("modificador");
    obj.label24:setField("atributos.modinteligenciastr");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setVertTextAlign("center");
    obj.label24:setFontSize(46);
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setName("label24");
    obj.label24:setFontColor("white");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.flowPart14);
    obj.label25:setFrameRegion("titulo");
    obj.label25:setText("INTELIGÊNCIA");
    obj.label25:setVertTextAlign("center");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");
    obj.label25:setFontColor("white");

    obj.flowLayout7 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout7:setParent(obj.flowPart14);
    obj.flowLayout7:setFrameRegion("RegiaoDePericias");
    obj.flowLayout7:setAutoHeight(true);
    obj.flowLayout7:setLineSpacing(0);
    obj.flowLayout7:setHorzAlign("leading");
    obj.flowLayout7:setName("flowLayout7");
    obj.flowLayout7:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout7:setVertAlign("leading");

    obj.flowPart15 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart15:setParent(obj.flowLayout7);
    obj.flowPart15:setMinWidth(206);
    obj.flowPart15:setMaxWidth(250);
    obj.flowPart15:setHeight(17);
    obj.flowPart15:setName("flowPart15");
    obj.flowPart15:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart15:setVertAlign("leading");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.flowPart15);
    obj.imageCheckBox8:setAlign("left");
    obj.imageCheckBox8:setWidth(20);
    obj.imageCheckBox8:setMargins({});
    obj.imageCheckBox8:setField("resistencias.inteligencia");
    obj.imageCheckBox8:setOptimize(false);
    obj.imageCheckBox8:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox8:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox8:setName("imageCheckBox8");
    obj.imageCheckBox8:setHeight(20);

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.flowPart15);
    obj.layout12:setAlign("left");
    obj.layout12:setWidth(26);
    obj.layout12:setMargins({left=2});
    obj.layout12:setName("layout12");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout12);
    obj.label26:setField("resistencias.bonusinteligenciastr");
    obj.label26:setAlign("client");
    obj.label26:setHorzTextAlign("center");
    obj.label26:setVertTextAlign("trailing");
    obj.label26:setTextTrimming("none");
    obj.label26:setName("label26");
    obj.label26:setFontColor("white");

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.layout12);
    obj.horzLine8:setStrokeColor("white");
    obj.horzLine8:setStrokeSize(1);
    obj.horzLine8:setAlign("bottom");
    obj.horzLine8:setName("horzLine8");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.flowPart15);
    obj.label27:setAlign("client");
    obj.label27:setText("Teste de Resistência");
    obj.label27:setVertTextAlign("trailing");
    obj.label27:setMargins({left=5});
    obj.label27:setAutoSize(true);
    obj.label27:setWordWrap(false);
    obj.label27:setName("label27");
    obj.label27:setFontColor("white");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.flowLayout7);
    obj.dataLink12:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'resistencias.inteligencia'});
    obj.dataLink12:setName("dataLink12");

    obj.flowPart16 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart16:setParent(obj.flowLayout7);
    obj.flowPart16:setMinWidth(206);
    obj.flowPart16:setMaxWidth(250);
    obj.flowPart16:setHeight(17);
    obj.flowPart16:setName("flowPart16");
    obj.flowPart16:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart16:setVertAlign("leading");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.flowPart16);
    obj.imageCheckBox9:setAlign("left");
    obj.imageCheckBox9:setWidth(20);
    obj.imageCheckBox9:setMargins({});
    obj.imageCheckBox9:setField("pericias.arcanismo");
    obj.imageCheckBox9:setOptimize(false);
    obj.imageCheckBox9:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox9:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox9:setName("imageCheckBox9");
    obj.imageCheckBox9:setHeight(20);

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.flowPart16);
    obj.layout13:setAlign("left");
    obj.layout13:setWidth(26);
    obj.layout13:setMargins({left=2});
    obj.layout13:setName("layout13");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout13);
    obj.label28:setField("pericias.bonusarcanismostr");
    obj.label28:setAlign("client");
    obj.label28:setHorzTextAlign("center");
    obj.label28:setVertTextAlign("trailing");
    obj.label28:setTextTrimming("none");
    obj.label28:setName("label28");
    obj.label28:setFontColor("white");

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.layout13);
    obj.horzLine9:setStrokeColor("white");
    obj.horzLine9:setStrokeSize(1);
    obj.horzLine9:setAlign("bottom");
    obj.horzLine9:setName("horzLine9");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.flowPart16);
    obj.label29:setAlign("client");
    obj.label29:setText("Arcanismo");
    obj.label29:setVertTextAlign("trailing");
    obj.label29:setMargins({left=5});
    obj.label29:setAutoSize(true);
    obj.label29:setWordWrap(false);
    obj.label29:setName("label29");
    obj.label29:setFontColor("white");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.flowLayout7);
    obj.dataLink13:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.arcanismo'});
    obj.dataLink13:setName("dataLink13");

    obj.flowPart17 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart17:setParent(obj.flowLayout7);
    obj.flowPart17:setMinWidth(206);
    obj.flowPart17:setMaxWidth(250);
    obj.flowPart17:setHeight(17);
    obj.flowPart17:setName("flowPart17");
    obj.flowPart17:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart17:setVertAlign("leading");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.flowPart17);
    obj.imageCheckBox10:setAlign("left");
    obj.imageCheckBox10:setWidth(20);
    obj.imageCheckBox10:setMargins({});
    obj.imageCheckBox10:setField("pericias.historia");
    obj.imageCheckBox10:setOptimize(false);
    obj.imageCheckBox10:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox10:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox10:setName("imageCheckBox10");
    obj.imageCheckBox10:setHeight(20);

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.flowPart17);
    obj.layout14:setAlign("left");
    obj.layout14:setWidth(26);
    obj.layout14:setMargins({left=2});
    obj.layout14:setName("layout14");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout14);
    obj.label30:setField("pericias.bonushistoriastr");
    obj.label30:setAlign("client");
    obj.label30:setHorzTextAlign("center");
    obj.label30:setVertTextAlign("trailing");
    obj.label30:setTextTrimming("none");
    obj.label30:setName("label30");
    obj.label30:setFontColor("white");

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.layout14);
    obj.horzLine10:setStrokeColor("white");
    obj.horzLine10:setStrokeSize(1);
    obj.horzLine10:setAlign("bottom");
    obj.horzLine10:setName("horzLine10");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.flowPart17);
    obj.label31:setAlign("client");
    obj.label31:setText("História");
    obj.label31:setVertTextAlign("trailing");
    obj.label31:setMargins({left=5});
    obj.label31:setAutoSize(true);
    obj.label31:setWordWrap(false);
    obj.label31:setName("label31");
    obj.label31:setFontColor("white");

    obj.dataLink14 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.flowLayout7);
    obj.dataLink14:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.historia'});
    obj.dataLink14:setName("dataLink14");

    obj.flowPart18 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart18:setParent(obj.flowLayout7);
    obj.flowPart18:setMinWidth(206);
    obj.flowPart18:setMaxWidth(250);
    obj.flowPart18:setHeight(17);
    obj.flowPart18:setName("flowPart18");
    obj.flowPart18:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart18:setVertAlign("leading");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.flowPart18);
    obj.imageCheckBox11:setAlign("left");
    obj.imageCheckBox11:setWidth(20);
    obj.imageCheckBox11:setMargins({});
    obj.imageCheckBox11:setField("pericias.investigacao");
    obj.imageCheckBox11:setOptimize(false);
    obj.imageCheckBox11:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox11:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox11:setName("imageCheckBox11");
    obj.imageCheckBox11:setHeight(20);

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.flowPart18);
    obj.layout15:setAlign("left");
    obj.layout15:setWidth(26);
    obj.layout15:setMargins({left=2});
    obj.layout15:setName("layout15");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout15);
    obj.label32:setField("pericias.bonusinvestigacaostr");
    obj.label32:setAlign("client");
    obj.label32:setHorzTextAlign("center");
    obj.label32:setVertTextAlign("trailing");
    obj.label32:setTextTrimming("none");
    obj.label32:setName("label32");
    obj.label32:setFontColor("white");

    obj.horzLine11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine11:setParent(obj.layout15);
    obj.horzLine11:setStrokeColor("white");
    obj.horzLine11:setStrokeSize(1);
    obj.horzLine11:setAlign("bottom");
    obj.horzLine11:setName("horzLine11");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.flowPart18);
    obj.label33:setAlign("client");
    obj.label33:setText("Investigação");
    obj.label33:setVertTextAlign("trailing");
    obj.label33:setMargins({left=5});
    obj.label33:setAutoSize(true);
    obj.label33:setWordWrap(false);
    obj.label33:setName("label33");
    obj.label33:setFontColor("white");

    obj.dataLink15 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.flowLayout7);
    obj.dataLink15:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.investigacao'});
    obj.dataLink15:setName("dataLink15");

    obj.flowPart19 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart19:setParent(obj.flowLayout7);
    obj.flowPart19:setMinWidth(206);
    obj.flowPart19:setMaxWidth(250);
    obj.flowPart19:setHeight(17);
    obj.flowPart19:setName("flowPart19");
    obj.flowPart19:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart19:setVertAlign("leading");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.flowPart19);
    obj.imageCheckBox12:setAlign("left");
    obj.imageCheckBox12:setWidth(20);
    obj.imageCheckBox12:setMargins({});
    obj.imageCheckBox12:setField("pericias.natureza");
    obj.imageCheckBox12:setOptimize(false);
    obj.imageCheckBox12:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox12:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox12:setName("imageCheckBox12");
    obj.imageCheckBox12:setHeight(20);

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.flowPart19);
    obj.layout16:setAlign("left");
    obj.layout16:setWidth(26);
    obj.layout16:setMargins({left=2});
    obj.layout16:setName("layout16");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout16);
    obj.label34:setField("pericias.bonusnaturezastr");
    obj.label34:setAlign("client");
    obj.label34:setHorzTextAlign("center");
    obj.label34:setVertTextAlign("trailing");
    obj.label34:setTextTrimming("none");
    obj.label34:setName("label34");
    obj.label34:setFontColor("white");

    obj.horzLine12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine12:setParent(obj.layout16);
    obj.horzLine12:setStrokeColor("white");
    obj.horzLine12:setStrokeSize(1);
    obj.horzLine12:setAlign("bottom");
    obj.horzLine12:setName("horzLine12");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.flowPart19);
    obj.label35:setAlign("client");
    obj.label35:setText("Natureza");
    obj.label35:setVertTextAlign("trailing");
    obj.label35:setMargins({left=5});
    obj.label35:setAutoSize(true);
    obj.label35:setWordWrap(false);
    obj.label35:setName("label35");
    obj.label35:setFontColor("white");

    obj.dataLink16 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.flowLayout7);
    obj.dataLink16:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.natureza'});
    obj.dataLink16:setName("dataLink16");

    obj.flowPart20 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart20:setParent(obj.flowLayout7);
    obj.flowPart20:setMinWidth(206);
    obj.flowPart20:setMaxWidth(250);
    obj.flowPart20:setHeight(17);
    obj.flowPart20:setName("flowPart20");
    obj.flowPart20:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart20:setVertAlign("leading");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.flowPart20);
    obj.imageCheckBox13:setAlign("left");
    obj.imageCheckBox13:setWidth(20);
    obj.imageCheckBox13:setMargins({});
    obj.imageCheckBox13:setField("pericias.religiao");
    obj.imageCheckBox13:setOptimize(false);
    obj.imageCheckBox13:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox13:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox13:setName("imageCheckBox13");
    obj.imageCheckBox13:setHeight(20);

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.flowPart20);
    obj.layout17:setAlign("left");
    obj.layout17:setWidth(26);
    obj.layout17:setMargins({left=2});
    obj.layout17:setName("layout17");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout17);
    obj.label36:setField("pericias.bonusreligiaostr");
    obj.label36:setAlign("client");
    obj.label36:setHorzTextAlign("center");
    obj.label36:setVertTextAlign("trailing");
    obj.label36:setTextTrimming("none");
    obj.label36:setName("label36");
    obj.label36:setFontColor("white");

    obj.horzLine13 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine13:setParent(obj.layout17);
    obj.horzLine13:setStrokeColor("white");
    obj.horzLine13:setStrokeSize(1);
    obj.horzLine13:setAlign("bottom");
    obj.horzLine13:setName("horzLine13");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.flowPart20);
    obj.label37:setAlign("client");
    obj.label37:setText("Religião");
    obj.label37:setVertTextAlign("trailing");
    obj.label37:setMargins({left=5});
    obj.label37:setAutoSize(true);
    obj.label37:setWordWrap(false);
    obj.label37:setName("label37");
    obj.label37:setFontColor("white");

    obj.dataLink17 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.flowLayout7);
    obj.dataLink17:setFields({'atributos.modinteligencia', 'bonusProficiencia', 'pericias.religiao'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.fraLayAtributos);
    obj.dataLink18:setField("atributos.sabedoria");
    obj.dataLink18:setName("dataLink18");

    obj.flowPart21 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart21:setParent(obj.fraLayAtributos);
    obj.flowPart21:setHeight(140);
    obj.flowPart21:setMinWidth(320);
    obj.flowPart21:setMaxWidth(420);
    obj.flowPart21:setMinScaledWidth(305);
    obj.flowPart21:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart21:setName("flowPart21");
    obj.flowPart21:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart21:setVertAlign("leading");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.flowPart21);
    obj.layout18:setLeft(6);
    obj.layout18:setTop(12);
    obj.layout18:setWidth(116);
    obj.layout18:setHeight(115);
    obj.layout18:setName("layout18");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout18);
    obj.edit8:setAlign("top");
    obj.edit8:setMargins({left=30, right=30});
    obj.edit8:setField("atributos.sabedoria");
    obj.edit8:setHeight(30);
    obj.edit8:setType("number");
    obj.edit8:setMin(0);
    obj.edit8:setMax(99);
    obj.edit8:setName("edit8");
    obj.edit8:setTransparent(true);
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setFontSize(15);
    obj.edit8:setFontColor("white");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.flowPart21);
    obj.label38:setFrameRegion("modificador");
    obj.label38:setField("atributos.modsabedoriastr");
    obj.label38:setHorzTextAlign("center");
    obj.label38:setVertTextAlign("center");
    obj.label38:setFontSize(46);
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");
    obj.label38:setName("label38");
    obj.label38:setFontColor("white");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.flowPart21);
    obj.label39:setFrameRegion("titulo");
    obj.label39:setText("SABEDORIA");
    obj.label39:setVertTextAlign("center");
    obj.label39:setHorzTextAlign("center");
    obj.label39:setName("label39");
    obj.label39:setFontColor("white");

    obj.flowLayout8 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout8:setParent(obj.flowPart21);
    obj.flowLayout8:setFrameRegion("RegiaoDePericias");
    obj.flowLayout8:setAutoHeight(true);
    obj.flowLayout8:setLineSpacing(0);
    obj.flowLayout8:setHorzAlign("leading");
    obj.flowLayout8:setName("flowLayout8");
    obj.flowLayout8:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout8:setVertAlign("leading");

    obj.flowPart22 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart22:setParent(obj.flowLayout8);
    obj.flowPart22:setMinWidth(206);
    obj.flowPart22:setMaxWidth(250);
    obj.flowPart22:setHeight(17);
    obj.flowPart22:setName("flowPart22");
    obj.flowPart22:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart22:setVertAlign("leading");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.flowPart22);
    obj.imageCheckBox14:setAlign("left");
    obj.imageCheckBox14:setWidth(20);
    obj.imageCheckBox14:setMargins({});
    obj.imageCheckBox14:setField("resistencias.sabedoria");
    obj.imageCheckBox14:setOptimize(false);
    obj.imageCheckBox14:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox14:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox14:setName("imageCheckBox14");
    obj.imageCheckBox14:setHeight(20);

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.flowPart22);
    obj.layout19:setAlign("left");
    obj.layout19:setWidth(26);
    obj.layout19:setMargins({left=2});
    obj.layout19:setName("layout19");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout19);
    obj.label40:setField("resistencias.bonussabedoriastr");
    obj.label40:setAlign("client");
    obj.label40:setHorzTextAlign("center");
    obj.label40:setVertTextAlign("trailing");
    obj.label40:setTextTrimming("none");
    obj.label40:setName("label40");
    obj.label40:setFontColor("white");

    obj.horzLine14 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine14:setParent(obj.layout19);
    obj.horzLine14:setStrokeColor("white");
    obj.horzLine14:setStrokeSize(1);
    obj.horzLine14:setAlign("bottom");
    obj.horzLine14:setName("horzLine14");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.flowPart22);
    obj.label41:setAlign("client");
    obj.label41:setText("Teste de Resistência");
    obj.label41:setVertTextAlign("trailing");
    obj.label41:setMargins({left=5});
    obj.label41:setAutoSize(true);
    obj.label41:setWordWrap(false);
    obj.label41:setName("label41");
    obj.label41:setFontColor("white");

    obj.dataLink19 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.flowLayout8);
    obj.dataLink19:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'resistencias.sabedoria'});
    obj.dataLink19:setName("dataLink19");

    obj.flowPart23 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart23:setParent(obj.flowLayout8);
    obj.flowPart23:setMinWidth(206);
    obj.flowPart23:setMaxWidth(250);
    obj.flowPart23:setHeight(17);
    obj.flowPart23:setName("flowPart23");
    obj.flowPart23:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart23:setVertAlign("leading");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.flowPart23);
    obj.imageCheckBox15:setAlign("left");
    obj.imageCheckBox15:setWidth(20);
    obj.imageCheckBox15:setMargins({});
    obj.imageCheckBox15:setField("pericias.adestrarAnimais");
    obj.imageCheckBox15:setOptimize(false);
    obj.imageCheckBox15:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox15:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox15:setName("imageCheckBox15");
    obj.imageCheckBox15:setHeight(20);

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.flowPart23);
    obj.layout20:setAlign("left");
    obj.layout20:setWidth(26);
    obj.layout20:setMargins({left=2});
    obj.layout20:setName("layout20");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout20);
    obj.label42:setField("pericias.bonusadestrarAnimaisstr");
    obj.label42:setAlign("client");
    obj.label42:setHorzTextAlign("center");
    obj.label42:setVertTextAlign("trailing");
    obj.label42:setTextTrimming("none");
    obj.label42:setName("label42");
    obj.label42:setFontColor("white");

    obj.horzLine15 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine15:setParent(obj.layout20);
    obj.horzLine15:setStrokeColor("white");
    obj.horzLine15:setStrokeSize(1);
    obj.horzLine15:setAlign("bottom");
    obj.horzLine15:setName("horzLine15");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.flowPart23);
    obj.label43:setAlign("client");
    obj.label43:setText("Adestrar Animais");
    obj.label43:setVertTextAlign("trailing");
    obj.label43:setMargins({left=5});
    obj.label43:setAutoSize(true);
    obj.label43:setWordWrap(false);
    obj.label43:setName("label43");
    obj.label43:setFontColor("white");

    obj.dataLink20 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.flowLayout8);
    obj.dataLink20:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.adestrarAnimais'});
    obj.dataLink20:setName("dataLink20");

    obj.flowPart24 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart24:setParent(obj.flowLayout8);
    obj.flowPart24:setMinWidth(206);
    obj.flowPart24:setMaxWidth(250);
    obj.flowPart24:setHeight(17);
    obj.flowPart24:setName("flowPart24");
    obj.flowPart24:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart24:setVertAlign("leading");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.flowPart24);
    obj.imageCheckBox16:setAlign("left");
    obj.imageCheckBox16:setWidth(20);
    obj.imageCheckBox16:setMargins({});
    obj.imageCheckBox16:setField("pericias.intuicao");
    obj.imageCheckBox16:setOptimize(false);
    obj.imageCheckBox16:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox16:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox16:setName("imageCheckBox16");
    obj.imageCheckBox16:setHeight(20);

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.flowPart24);
    obj.layout21:setAlign("left");
    obj.layout21:setWidth(26);
    obj.layout21:setMargins({left=2});
    obj.layout21:setName("layout21");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout21);
    obj.label44:setField("pericias.bonusintuicaostr");
    obj.label44:setAlign("client");
    obj.label44:setHorzTextAlign("center");
    obj.label44:setVertTextAlign("trailing");
    obj.label44:setTextTrimming("none");
    obj.label44:setName("label44");
    obj.label44:setFontColor("white");

    obj.horzLine16 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine16:setParent(obj.layout21);
    obj.horzLine16:setStrokeColor("white");
    obj.horzLine16:setStrokeSize(1);
    obj.horzLine16:setAlign("bottom");
    obj.horzLine16:setName("horzLine16");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.flowPart24);
    obj.label45:setAlign("client");
    obj.label45:setText("Intuição");
    obj.label45:setVertTextAlign("trailing");
    obj.label45:setMargins({left=5});
    obj.label45:setAutoSize(true);
    obj.label45:setWordWrap(false);
    obj.label45:setName("label45");
    obj.label45:setFontColor("white");

    obj.dataLink21 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.flowLayout8);
    obj.dataLink21:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.intuicao'});
    obj.dataLink21:setName("dataLink21");

    obj.flowPart25 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart25:setParent(obj.flowLayout8);
    obj.flowPart25:setMinWidth(206);
    obj.flowPart25:setMaxWidth(250);
    obj.flowPart25:setHeight(17);
    obj.flowPart25:setName("flowPart25");
    obj.flowPart25:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart25:setVertAlign("leading");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.flowPart25);
    obj.imageCheckBox17:setAlign("left");
    obj.imageCheckBox17:setWidth(20);
    obj.imageCheckBox17:setMargins({});
    obj.imageCheckBox17:setField("pericias.medicina");
    obj.imageCheckBox17:setOptimize(false);
    obj.imageCheckBox17:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox17:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox17:setName("imageCheckBox17");
    obj.imageCheckBox17:setHeight(20);

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.flowPart25);
    obj.layout22:setAlign("left");
    obj.layout22:setWidth(26);
    obj.layout22:setMargins({left=2});
    obj.layout22:setName("layout22");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout22);
    obj.label46:setField("pericias.bonusmedicinastr");
    obj.label46:setAlign("client");
    obj.label46:setHorzTextAlign("center");
    obj.label46:setVertTextAlign("trailing");
    obj.label46:setTextTrimming("none");
    obj.label46:setName("label46");
    obj.label46:setFontColor("white");

    obj.horzLine17 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine17:setParent(obj.layout22);
    obj.horzLine17:setStrokeColor("white");
    obj.horzLine17:setStrokeSize(1);
    obj.horzLine17:setAlign("bottom");
    obj.horzLine17:setName("horzLine17");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.flowPart25);
    obj.label47:setAlign("client");
    obj.label47:setText("Medicina");
    obj.label47:setVertTextAlign("trailing");
    obj.label47:setMargins({left=5});
    obj.label47:setAutoSize(true);
    obj.label47:setWordWrap(false);
    obj.label47:setName("label47");
    obj.label47:setFontColor("white");

    obj.dataLink22 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.flowLayout8);
    obj.dataLink22:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.medicina'});
    obj.dataLink22:setName("dataLink22");

    obj.flowPart26 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart26:setParent(obj.flowLayout8);
    obj.flowPart26:setMinWidth(206);
    obj.flowPart26:setMaxWidth(250);
    obj.flowPart26:setHeight(17);
    obj.flowPart26:setName("flowPart26");
    obj.flowPart26:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart26:setVertAlign("leading");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.flowPart26);
    obj.imageCheckBox18:setAlign("left");
    obj.imageCheckBox18:setWidth(20);
    obj.imageCheckBox18:setMargins({});
    obj.imageCheckBox18:setField("pericias.percepcao");
    obj.imageCheckBox18:setOptimize(false);
    obj.imageCheckBox18:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox18:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox18:setName("imageCheckBox18");
    obj.imageCheckBox18:setHeight(20);

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.flowPart26);
    obj.layout23:setAlign("left");
    obj.layout23:setWidth(26);
    obj.layout23:setMargins({left=2});
    obj.layout23:setName("layout23");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout23);
    obj.label48:setField("pericias.bonuspercepcaostr");
    obj.label48:setAlign("client");
    obj.label48:setHorzTextAlign("center");
    obj.label48:setVertTextAlign("trailing");
    obj.label48:setTextTrimming("none");
    obj.label48:setName("label48");
    obj.label48:setFontColor("white");

    obj.horzLine18 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine18:setParent(obj.layout23);
    obj.horzLine18:setStrokeColor("white");
    obj.horzLine18:setStrokeSize(1);
    obj.horzLine18:setAlign("bottom");
    obj.horzLine18:setName("horzLine18");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.flowPart26);
    obj.label49:setAlign("client");
    obj.label49:setText("Percepção");
    obj.label49:setVertTextAlign("trailing");
    obj.label49:setMargins({left=5});
    obj.label49:setAutoSize(true);
    obj.label49:setWordWrap(false);
    obj.label49:setName("label49");
    obj.label49:setFontColor("white");

    obj.dataLink23 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.flowLayout8);
    obj.dataLink23:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.percepcao'});
    obj.dataLink23:setName("dataLink23");

    obj.flowPart27 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart27:setParent(obj.flowLayout8);
    obj.flowPart27:setMinWidth(206);
    obj.flowPart27:setMaxWidth(250);
    obj.flowPart27:setHeight(17);
    obj.flowPart27:setName("flowPart27");
    obj.flowPart27:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart27:setVertAlign("leading");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.flowPart27);
    obj.imageCheckBox19:setAlign("left");
    obj.imageCheckBox19:setWidth(20);
    obj.imageCheckBox19:setMargins({});
    obj.imageCheckBox19:setField("pericias.sobrevivencia");
    obj.imageCheckBox19:setOptimize(false);
    obj.imageCheckBox19:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox19:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox19:setName("imageCheckBox19");
    obj.imageCheckBox19:setHeight(20);

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.flowPart27);
    obj.layout24:setAlign("left");
    obj.layout24:setWidth(26);
    obj.layout24:setMargins({left=2});
    obj.layout24:setName("layout24");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout24);
    obj.label50:setField("pericias.bonussobrevivenciastr");
    obj.label50:setAlign("client");
    obj.label50:setHorzTextAlign("center");
    obj.label50:setVertTextAlign("trailing");
    obj.label50:setTextTrimming("none");
    obj.label50:setName("label50");
    obj.label50:setFontColor("white");

    obj.horzLine19 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine19:setParent(obj.layout24);
    obj.horzLine19:setStrokeColor("white");
    obj.horzLine19:setStrokeSize(1);
    obj.horzLine19:setAlign("bottom");
    obj.horzLine19:setName("horzLine19");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.flowPart27);
    obj.label51:setAlign("client");
    obj.label51:setText("Sobrevivência");
    obj.label51:setVertTextAlign("trailing");
    obj.label51:setMargins({left=5});
    obj.label51:setAutoSize(true);
    obj.label51:setWordWrap(false);
    obj.label51:setName("label51");
    obj.label51:setFontColor("white");

    obj.dataLink24 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.flowLayout8);
    obj.dataLink24:setFields({'atributos.modsabedoria', 'bonusProficiencia', 'pericias.sobrevivencia'});
    obj.dataLink24:setName("dataLink24");

    obj.dataLink25 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.fraLayAtributos);
    obj.dataLink25:setField("atributos.carisma");
    obj.dataLink25:setName("dataLink25");

    obj.flowPart28 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart28:setParent(obj.fraLayAtributos);
    obj.flowPart28:setHeight(140);
    obj.flowPart28:setMinWidth(320);
    obj.flowPart28:setMaxWidth(420);
    obj.flowPart28:setMinScaledWidth(305);
    obj.flowPart28:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart28:setName("flowPart28");
    obj.flowPart28:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart28:setVertAlign("leading");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.flowPart28);
    obj.layout25:setLeft(6);
    obj.layout25:setTop(12);
    obj.layout25:setWidth(116);
    obj.layout25:setHeight(115);
    obj.layout25:setName("layout25");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout25);
    obj.edit9:setAlign("top");
    obj.edit9:setMargins({left=30, right=30});
    obj.edit9:setField("atributos.carisma");
    obj.edit9:setHeight(30);
    obj.edit9:setType("number");
    obj.edit9:setMin(0);
    obj.edit9:setMax(99);
    obj.edit9:setName("edit9");
    obj.edit9:setTransparent(true);
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setFontSize(15);
    obj.edit9:setFontColor("white");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.flowPart28);
    obj.label52:setFrameRegion("modificador");
    obj.label52:setField("atributos.modcarismastr");
    obj.label52:setHorzTextAlign("center");
    obj.label52:setVertTextAlign("center");
    obj.label52:setFontSize(46);
    lfm_setPropAsString(obj.label52, "fontStyle",  "bold");
    obj.label52:setName("label52");
    obj.label52:setFontColor("white");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.flowPart28);
    obj.label53:setFrameRegion("titulo");
    obj.label53:setText("CARISMA");
    obj.label53:setVertTextAlign("center");
    obj.label53:setHorzTextAlign("center");
    obj.label53:setName("label53");
    obj.label53:setFontColor("white");

    obj.flowLayout9 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout9:setParent(obj.flowPart28);
    obj.flowLayout9:setFrameRegion("RegiaoDePericias");
    obj.flowLayout9:setAutoHeight(true);
    obj.flowLayout9:setLineSpacing(0);
    obj.flowLayout9:setHorzAlign("leading");
    obj.flowLayout9:setName("flowLayout9");
    obj.flowLayout9:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout9:setVertAlign("leading");

    obj.flowPart29 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart29:setParent(obj.flowLayout9);
    obj.flowPart29:setMinWidth(206);
    obj.flowPart29:setMaxWidth(250);
    obj.flowPart29:setHeight(17);
    obj.flowPart29:setName("flowPart29");
    obj.flowPart29:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart29:setVertAlign("leading");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.flowPart29);
    obj.imageCheckBox20:setAlign("left");
    obj.imageCheckBox20:setWidth(20);
    obj.imageCheckBox20:setMargins({});
    obj.imageCheckBox20:setField("resistencias.carisma");
    obj.imageCheckBox20:setOptimize(false);
    obj.imageCheckBox20:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox20:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox20:setName("imageCheckBox20");
    obj.imageCheckBox20:setHeight(20);

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.flowPart29);
    obj.layout26:setAlign("left");
    obj.layout26:setWidth(26);
    obj.layout26:setMargins({left=2});
    obj.layout26:setName("layout26");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout26);
    obj.label54:setField("resistencias.bonuscarismastr");
    obj.label54:setAlign("client");
    obj.label54:setHorzTextAlign("center");
    obj.label54:setVertTextAlign("trailing");
    obj.label54:setTextTrimming("none");
    obj.label54:setName("label54");
    obj.label54:setFontColor("white");

    obj.horzLine20 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine20:setParent(obj.layout26);
    obj.horzLine20:setStrokeColor("white");
    obj.horzLine20:setStrokeSize(1);
    obj.horzLine20:setAlign("bottom");
    obj.horzLine20:setName("horzLine20");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.flowPart29);
    obj.label55:setAlign("client");
    obj.label55:setText("Teste de Resistência");
    obj.label55:setVertTextAlign("trailing");
    obj.label55:setMargins({left=5});
    obj.label55:setAutoSize(true);
    obj.label55:setWordWrap(false);
    obj.label55:setName("label55");
    obj.label55:setFontColor("white");

    obj.dataLink26 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.flowLayout9);
    obj.dataLink26:setFields({'atributos.modcarisma', 'bonusProficiencia', 'resistencias.carisma'});
    obj.dataLink26:setName("dataLink26");

    obj.flowPart30 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart30:setParent(obj.flowLayout9);
    obj.flowPart30:setMinWidth(206);
    obj.flowPart30:setMaxWidth(250);
    obj.flowPart30:setHeight(17);
    obj.flowPart30:setName("flowPart30");
    obj.flowPart30:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart30:setVertAlign("leading");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.flowPart30);
    obj.imageCheckBox21:setAlign("left");
    obj.imageCheckBox21:setWidth(20);
    obj.imageCheckBox21:setMargins({});
    obj.imageCheckBox21:setField("pericias.atuacao");
    obj.imageCheckBox21:setOptimize(false);
    obj.imageCheckBox21:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox21:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox21:setName("imageCheckBox21");
    obj.imageCheckBox21:setHeight(20);

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.flowPart30);
    obj.layout27:setAlign("left");
    obj.layout27:setWidth(26);
    obj.layout27:setMargins({left=2});
    obj.layout27:setName("layout27");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout27);
    obj.label56:setField("pericias.bonusatuacaostr");
    obj.label56:setAlign("client");
    obj.label56:setHorzTextAlign("center");
    obj.label56:setVertTextAlign("trailing");
    obj.label56:setTextTrimming("none");
    obj.label56:setName("label56");
    obj.label56:setFontColor("white");

    obj.horzLine21 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine21:setParent(obj.layout27);
    obj.horzLine21:setStrokeColor("white");
    obj.horzLine21:setStrokeSize(1);
    obj.horzLine21:setAlign("bottom");
    obj.horzLine21:setName("horzLine21");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.flowPart30);
    obj.label57:setAlign("client");
    obj.label57:setText("Atuação");
    obj.label57:setVertTextAlign("trailing");
    obj.label57:setMargins({left=5});
    obj.label57:setAutoSize(true);
    obj.label57:setWordWrap(false);
    obj.label57:setName("label57");
    obj.label57:setFontColor("white");

    obj.dataLink27 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.flowLayout9);
    obj.dataLink27:setFields({'atributos.modcarisma', 'bonusProficiencia', 'pericias.atuacao'});
    obj.dataLink27:setName("dataLink27");

    obj.flowPart31 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart31:setParent(obj.flowLayout9);
    obj.flowPart31:setMinWidth(206);
    obj.flowPart31:setMaxWidth(250);
    obj.flowPart31:setHeight(17);
    obj.flowPart31:setName("flowPart31");
    obj.flowPart31:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart31:setVertAlign("leading");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.flowPart31);
    obj.imageCheckBox22:setAlign("left");
    obj.imageCheckBox22:setWidth(20);
    obj.imageCheckBox22:setMargins({});
    obj.imageCheckBox22:setField("pericias.enganacao");
    obj.imageCheckBox22:setOptimize(false);
    obj.imageCheckBox22:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox22:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox22:setName("imageCheckBox22");
    obj.imageCheckBox22:setHeight(20);

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.flowPart31);
    obj.layout28:setAlign("left");
    obj.layout28:setWidth(26);
    obj.layout28:setMargins({left=2});
    obj.layout28:setName("layout28");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout28);
    obj.label58:setField("pericias.bonusenganacaostr");
    obj.label58:setAlign("client");
    obj.label58:setHorzTextAlign("center");
    obj.label58:setVertTextAlign("trailing");
    obj.label58:setTextTrimming("none");
    obj.label58:setName("label58");
    obj.label58:setFontColor("white");

    obj.horzLine22 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine22:setParent(obj.layout28);
    obj.horzLine22:setStrokeColor("white");
    obj.horzLine22:setStrokeSize(1);
    obj.horzLine22:setAlign("bottom");
    obj.horzLine22:setName("horzLine22");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.flowPart31);
    obj.label59:setAlign("client");
    obj.label59:setText("Enganação");
    obj.label59:setVertTextAlign("trailing");
    obj.label59:setMargins({left=5});
    obj.label59:setAutoSize(true);
    obj.label59:setWordWrap(false);
    obj.label59:setName("label59");
    obj.label59:setFontColor("white");

    obj.dataLink28 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.flowLayout9);
    obj.dataLink28:setFields({'atributos.modcarisma', 'bonusProficiencia', 'pericias.enganacao'});
    obj.dataLink28:setName("dataLink28");

    obj.flowPart32 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart32:setParent(obj.flowLayout9);
    obj.flowPart32:setMinWidth(206);
    obj.flowPart32:setMaxWidth(250);
    obj.flowPart32:setHeight(17);
    obj.flowPart32:setName("flowPart32");
    obj.flowPart32:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart32:setVertAlign("leading");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.flowPart32);
    obj.imageCheckBox23:setAlign("left");
    obj.imageCheckBox23:setWidth(20);
    obj.imageCheckBox23:setMargins({});
    obj.imageCheckBox23:setField("pericias.intimidacao");
    obj.imageCheckBox23:setOptimize(false);
    obj.imageCheckBox23:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox23:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox23:setName("imageCheckBox23");
    obj.imageCheckBox23:setHeight(20);

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.flowPart32);
    obj.layout29:setAlign("left");
    obj.layout29:setWidth(26);
    obj.layout29:setMargins({left=2});
    obj.layout29:setName("layout29");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout29);
    obj.label60:setField("pericias.bonusintimidacaostr");
    obj.label60:setAlign("client");
    obj.label60:setHorzTextAlign("center");
    obj.label60:setVertTextAlign("trailing");
    obj.label60:setTextTrimming("none");
    obj.label60:setName("label60");
    obj.label60:setFontColor("white");

    obj.horzLine23 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine23:setParent(obj.layout29);
    obj.horzLine23:setStrokeColor("white");
    obj.horzLine23:setStrokeSize(1);
    obj.horzLine23:setAlign("bottom");
    obj.horzLine23:setName("horzLine23");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.flowPart32);
    obj.label61:setAlign("client");
    obj.label61:setText("Intimidação");
    obj.label61:setVertTextAlign("trailing");
    obj.label61:setMargins({left=5});
    obj.label61:setAutoSize(true);
    obj.label61:setWordWrap(false);
    obj.label61:setName("label61");
    obj.label61:setFontColor("white");

    obj.dataLink29 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.flowLayout9);
    obj.dataLink29:setFields({'atributos.modcarisma', 'bonusProficiencia', 'pericias.intimidacao'});
    obj.dataLink29:setName("dataLink29");

    obj.flowPart33 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart33:setParent(obj.flowLayout9);
    obj.flowPart33:setMinWidth(206);
    obj.flowPart33:setMaxWidth(250);
    obj.flowPart33:setHeight(17);
    obj.flowPart33:setName("flowPart33");
    obj.flowPart33:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart33:setVertAlign("leading");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.flowPart33);
    obj.imageCheckBox24:setAlign("left");
    obj.imageCheckBox24:setWidth(20);
    obj.imageCheckBox24:setMargins({});
    obj.imageCheckBox24:setField("pericias.persuasao");
    obj.imageCheckBox24:setOptimize(false);
    obj.imageCheckBox24:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox24:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox24:setName("imageCheckBox24");
    obj.imageCheckBox24:setHeight(20);

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.flowPart33);
    obj.layout30:setAlign("left");
    obj.layout30:setWidth(26);
    obj.layout30:setMargins({left=2});
    obj.layout30:setName("layout30");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout30);
    obj.label62:setField("pericias.bonuspersuasaostr");
    obj.label62:setAlign("client");
    obj.label62:setHorzTextAlign("center");
    obj.label62:setVertTextAlign("trailing");
    obj.label62:setTextTrimming("none");
    obj.label62:setName("label62");
    obj.label62:setFontColor("white");

    obj.horzLine24 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine24:setParent(obj.layout30);
    obj.horzLine24:setStrokeColor("white");
    obj.horzLine24:setStrokeSize(1);
    obj.horzLine24:setAlign("bottom");
    obj.horzLine24:setName("horzLine24");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.flowPart33);
    obj.label63:setAlign("client");
    obj.label63:setText("Persuasão");
    obj.label63:setVertTextAlign("trailing");
    obj.label63:setMargins({left=5});
    obj.label63:setAutoSize(true);
    obj.label63:setWordWrap(false);
    obj.label63:setName("label63");
    obj.label63:setFontColor("white");

    obj.dataLink30 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.flowLayout9);
    obj.dataLink30:setFields({'atributos.modcarisma', 'bonusProficiencia', 'pericias.persuasao'});
    obj.dataLink30:setName("dataLink30");

    obj.dataLink31 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.fraLayAtributos);
    obj.dataLink31:setField("atributos.adivinhacao");
    obj.dataLink31:setName("dataLink31");

    obj.flowPart34 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart34:setParent(obj.fraLayAtributos);
    obj.flowPart34:setHeight(140);
    obj.flowPart34:setMinWidth(320);
    obj.flowPart34:setMaxWidth(420);
    obj.flowPart34:setMinScaledWidth(305);
    obj.flowPart34:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart34:setName("flowPart34");
    obj.flowPart34:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart34:setVertAlign("leading");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.flowPart34);
    obj.layout31:setLeft(6);
    obj.layout31:setTop(12);
    obj.layout31:setWidth(116);
    obj.layout31:setHeight(115);
    obj.layout31:setName("layout31");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout31);
    obj.edit10:setAlign("top");
    obj.edit10:setMargins({left=30, right=30});
    obj.edit10:setField("atributos.adivinhacao");
    obj.edit10:setHeight(30);
    obj.edit10:setType("number");
    obj.edit10:setMin(0);
    obj.edit10:setMax(99);
    obj.edit10:setName("edit10");
    obj.edit10:setTransparent(true);
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setFontSize(15);
    obj.edit10:setFontColor("white");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.flowPart34);
    obj.label64:setFrameRegion("modificador");
    obj.label64:setField("atributos.modadivinhacaostr");
    obj.label64:setHorzTextAlign("center");
    obj.label64:setVertTextAlign("center");
    obj.label64:setFontSize(46);
    lfm_setPropAsString(obj.label64, "fontStyle",  "bold");
    obj.label64:setName("label64");
    obj.label64:setFontColor("white");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.flowPart34);
    obj.label65:setFrameRegion("titulo");
    obj.label65:setText("ADIVINHAÇÃO");
    obj.label65:setVertTextAlign("center");
    obj.label65:setHorzTextAlign("center");
    obj.label65:setName("label65");
    obj.label65:setFontColor("white");

    obj.flowLayout10 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout10:setParent(obj.flowPart34);
    obj.flowLayout10:setFrameRegion("RegiaoDePericias");
    obj.flowLayout10:setAutoHeight(true);
    obj.flowLayout10:setLineSpacing(0);
    obj.flowLayout10:setHorzAlign("leading");
    obj.flowLayout10:setName("flowLayout10");
    obj.flowLayout10:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout10:setVertAlign("leading");

    obj.flowPart35 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart35:setParent(obj.flowLayout10);
    obj.flowPart35:setMinWidth(206);
    obj.flowPart35:setMaxWidth(250);
    obj.flowPart35:setHeight(17);
    obj.flowPart35:setName("flowPart35");
    obj.flowPart35:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart35:setVertAlign("leading");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.flowPart35);
    obj.imageCheckBox25:setAlign("left");
    obj.imageCheckBox25:setWidth(20);
    obj.imageCheckBox25:setMargins({});
    obj.imageCheckBox25:setField("resistencias.adivinhacao");
    obj.imageCheckBox25:setOptimize(false);
    obj.imageCheckBox25:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox25:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox25:setName("imageCheckBox25");
    obj.imageCheckBox25:setHeight(20);

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.flowPart35);
    obj.layout32:setAlign("left");
    obj.layout32:setWidth(26);
    obj.layout32:setMargins({left=2});
    obj.layout32:setName("layout32");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout32);
    obj.label66:setField("resistencias.bonusadivinhacaostr");
    obj.label66:setAlign("client");
    obj.label66:setHorzTextAlign("center");
    obj.label66:setVertTextAlign("trailing");
    obj.label66:setTextTrimming("none");
    obj.label66:setName("label66");
    obj.label66:setFontColor("white");

    obj.horzLine25 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine25:setParent(obj.layout32);
    obj.horzLine25:setStrokeColor("white");
    obj.horzLine25:setStrokeSize(1);
    obj.horzLine25:setAlign("bottom");
    obj.horzLine25:setName("horzLine25");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.flowPart35);
    obj.label67:setAlign("client");
    obj.label67:setText("Teste de Resistência");
    obj.label67:setVertTextAlign("trailing");
    obj.label67:setMargins({left=5});
    obj.label67:setAutoSize(true);
    obj.label67:setWordWrap(false);
    obj.label67:setName("label67");
    obj.label67:setFontColor("white");

    obj.dataLink32 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.flowLayout10);
    obj.dataLink32:setFields({'atributos.modadivinhacao', 'bonusProficiencia', 'resistencias.adivinhacao'});
    obj.dataLink32:setName("dataLink32");

    obj.dataLink33 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.fraLayAtributos);
    obj.dataLink33:setField("atributos.quadribol");
    obj.dataLink33:setName("dataLink33");

    obj.flowPart36 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart36:setParent(obj.fraLayAtributos);
    obj.flowPart36:setHeight(140);
    obj.flowPart36:setMinWidth(320);
    obj.flowPart36:setMaxWidth(420);
    obj.flowPart36:setMinScaledWidth(305);
    obj.flowPart36:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart36:setName("flowPart36");
    obj.flowPart36:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart36:setVertAlign("leading");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.flowPart36);
    obj.layout33:setLeft(6);
    obj.layout33:setTop(12);
    obj.layout33:setWidth(116);
    obj.layout33:setHeight(115);
    obj.layout33:setName("layout33");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout33);
    obj.edit11:setAlign("top");
    obj.edit11:setMargins({left=30, right=30});
    obj.edit11:setField("atributos.quadribol");
    obj.edit11:setHeight(30);
    obj.edit11:setType("number");
    obj.edit11:setMin(0);
    obj.edit11:setMax(99);
    obj.edit11:setName("edit11");
    obj.edit11:setTransparent(true);
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setFontSize(15);
    obj.edit11:setFontColor("white");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.flowPart36);
    obj.label68:setFrameRegion("modificador");
    obj.label68:setField("atributos.modquadribolstr");
    obj.label68:setHorzTextAlign("center");
    obj.label68:setVertTextAlign("center");
    obj.label68:setFontSize(46);
    lfm_setPropAsString(obj.label68, "fontStyle",  "bold");
    obj.label68:setName("label68");
    obj.label68:setFontColor("white");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.flowPart36);
    obj.label69:setFrameRegion("titulo");
    obj.label69:setText("QUADRIBOL");
    obj.label69:setVertTextAlign("center");
    obj.label69:setHorzTextAlign("center");
    obj.label69:setName("label69");
    obj.label69:setFontColor("white");

    obj.flowLayout11 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout11:setParent(obj.flowPart36);
    obj.flowLayout11:setFrameRegion("RegiaoDePericias");
    obj.flowLayout11:setAutoHeight(true);
    obj.flowLayout11:setLineSpacing(0);
    obj.flowLayout11:setHorzAlign("leading");
    obj.flowLayout11:setName("flowLayout11");
    obj.flowLayout11:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout11:setVertAlign("leading");

    obj.flowPart37 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart37:setParent(obj.flowLayout11);
    obj.flowPart37:setMinWidth(206);
    obj.flowPart37:setMaxWidth(250);
    obj.flowPart37:setHeight(17);
    obj.flowPart37:setName("flowPart37");
    obj.flowPart37:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart37:setVertAlign("leading");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.flowPart37);
    obj.imageCheckBox26:setAlign("left");
    obj.imageCheckBox26:setWidth(20);
    obj.imageCheckBox26:setMargins({});
    obj.imageCheckBox26:setField("resistencias.quadribol");
    obj.imageCheckBox26:setOptimize(false);
    obj.imageCheckBox26:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox26:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox26:setName("imageCheckBox26");
    obj.imageCheckBox26:setHeight(20);

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.flowPart37);
    obj.layout34:setAlign("left");
    obj.layout34:setWidth(26);
    obj.layout34:setMargins({left=2});
    obj.layout34:setName("layout34");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout34);
    obj.label70:setField("resistencias.bonusquadribolstr");
    obj.label70:setAlign("client");
    obj.label70:setHorzTextAlign("center");
    obj.label70:setVertTextAlign("trailing");
    obj.label70:setTextTrimming("none");
    obj.label70:setName("label70");
    obj.label70:setFontColor("white");

    obj.horzLine26 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine26:setParent(obj.layout34);
    obj.horzLine26:setStrokeColor("white");
    obj.horzLine26:setStrokeSize(1);
    obj.horzLine26:setAlign("bottom");
    obj.horzLine26:setName("horzLine26");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.flowPart37);
    obj.label71:setAlign("client");
    obj.label71:setText("Teste de Resistência");
    obj.label71:setVertTextAlign("trailing");
    obj.label71:setMargins({left=5});
    obj.label71:setAutoSize(true);
    obj.label71:setWordWrap(false);
    obj.label71:setName("label71");
    obj.label71:setFontColor("white");

    obj.dataLink34 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.flowLayout11);
    obj.dataLink34:setFields({'atributos.modquadribol', 'bonusProficiencia', 'resistencias.quadribol'});
    obj.dataLink34:setName("dataLink34");

    obj.dataLink35 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.fraLayAtributos);
    obj.dataLink35:setField("atributos.pocoes");
    obj.dataLink35:setName("dataLink35");

    obj.flowPart38 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart38:setParent(obj.fraLayAtributos);
    obj.flowPart38:setHeight(140);
    obj.flowPart38:setMinWidth(320);
    obj.flowPart38:setMaxWidth(420);
    obj.flowPart38:setMinScaledWidth(305);
    obj.flowPart38:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart38:setName("flowPart38");
    obj.flowPart38:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart38:setVertAlign("leading");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.flowPart38);
    obj.layout35:setLeft(6);
    obj.layout35:setTop(12);
    obj.layout35:setWidth(116);
    obj.layout35:setHeight(115);
    obj.layout35:setName("layout35");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout35);
    obj.edit12:setAlign("top");
    obj.edit12:setMargins({left=30, right=30});
    obj.edit12:setField("atributos.pocoes");
    obj.edit12:setHeight(30);
    obj.edit12:setType("number");
    obj.edit12:setMin(0);
    obj.edit12:setMax(99);
    obj.edit12:setName("edit12");
    obj.edit12:setTransparent(true);
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setFontSize(15);
    obj.edit12:setFontColor("white");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.flowPart38);
    obj.label72:setFrameRegion("modificador");
    obj.label72:setField("atributos.modpocoesstr");
    obj.label72:setHorzTextAlign("center");
    obj.label72:setVertTextAlign("center");
    obj.label72:setFontSize(46);
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");
    obj.label72:setName("label72");
    obj.label72:setFontColor("white");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.flowPart38);
    obj.label73:setFrameRegion("titulo");
    obj.label73:setText("POÇÕES");
    obj.label73:setVertTextAlign("center");
    obj.label73:setHorzTextAlign("center");
    obj.label73:setName("label73");
    obj.label73:setFontColor("white");

    obj.flowLayout12 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout12:setParent(obj.flowPart38);
    obj.flowLayout12:setFrameRegion("RegiaoDePericias");
    obj.flowLayout12:setAutoHeight(true);
    obj.flowLayout12:setLineSpacing(0);
    obj.flowLayout12:setHorzAlign("leading");
    obj.flowLayout12:setName("flowLayout12");
    obj.flowLayout12:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout12:setVertAlign("leading");

    obj.flowPart39 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart39:setParent(obj.flowLayout12);
    obj.flowPart39:setMinWidth(206);
    obj.flowPart39:setMaxWidth(250);
    obj.flowPart39:setHeight(17);
    obj.flowPart39:setName("flowPart39");
    obj.flowPart39:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart39:setVertAlign("leading");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.flowPart39);
    obj.imageCheckBox27:setAlign("left");
    obj.imageCheckBox27:setWidth(20);
    obj.imageCheckBox27:setMargins({});
    obj.imageCheckBox27:setField("resistencias.pocoes");
    obj.imageCheckBox27:setOptimize(false);
    obj.imageCheckBox27:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox27:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox27:setName("imageCheckBox27");
    obj.imageCheckBox27:setHeight(20);

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.flowPart39);
    obj.layout36:setAlign("left");
    obj.layout36:setWidth(26);
    obj.layout36:setMargins({left=2});
    obj.layout36:setName("layout36");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout36);
    obj.label74:setField("resistencias.bonuspocoesstr");
    obj.label74:setAlign("client");
    obj.label74:setHorzTextAlign("center");
    obj.label74:setVertTextAlign("trailing");
    obj.label74:setTextTrimming("none");
    obj.label74:setName("label74");
    obj.label74:setFontColor("white");

    obj.horzLine27 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine27:setParent(obj.layout36);
    obj.horzLine27:setStrokeColor("white");
    obj.horzLine27:setStrokeSize(1);
    obj.horzLine27:setAlign("bottom");
    obj.horzLine27:setName("horzLine27");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.flowPart39);
    obj.label75:setAlign("client");
    obj.label75:setText("Teste de Resistência");
    obj.label75:setVertTextAlign("trailing");
    obj.label75:setMargins({left=5});
    obj.label75:setAutoSize(true);
    obj.label75:setWordWrap(false);
    obj.label75:setName("label75");
    obj.label75:setFontColor("white");

    obj.dataLink36 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.flowLayout12);
    obj.dataLink36:setFields({'atributos.modpocoes', 'bonusProficiencia', 'resistencias.pocoes'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.fraLayAtributos);
    obj.dataLink37:setField("atributos.avaracao");
    obj.dataLink37:setName("dataLink37");

    obj.flowPart40 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart40:setParent(obj.fraLayAtributos);
    obj.flowPart40:setHeight(140);
    obj.flowPart40:setMinWidth(320);
    obj.flowPart40:setMaxWidth(420);
    obj.flowPart40:setMinScaledWidth(305);
    obj.flowPart40:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart40:setName("flowPart40");
    obj.flowPart40:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart40:setVertAlign("leading");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.flowPart40);
    obj.layout37:setLeft(6);
    obj.layout37:setTop(12);
    obj.layout37:setWidth(116);
    obj.layout37:setHeight(115);
    obj.layout37:setName("layout37");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout37);
    obj.edit13:setAlign("top");
    obj.edit13:setMargins({left=30, right=30});
    obj.edit13:setField("atributos.avaracao");
    obj.edit13:setHeight(30);
    obj.edit13:setType("number");
    obj.edit13:setMin(0);
    obj.edit13:setMax(99);
    obj.edit13:setName("edit13");
    obj.edit13:setTransparent(true);
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setFontSize(15);
    obj.edit13:setFontColor("white");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.flowPart40);
    obj.label76:setFrameRegion("modificador");
    obj.label76:setField("atributos.modavaracaostr");
    obj.label76:setHorzTextAlign("center");
    obj.label76:setVertTextAlign("center");
    obj.label76:setFontSize(46);
    lfm_setPropAsString(obj.label76, "fontStyle",  "bold");
    obj.label76:setName("label76");
    obj.label76:setFontColor("white");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.flowPart40);
    obj.label77:setFrameRegion("titulo");
    obj.label77:setText("AVARAÇÃO");
    obj.label77:setVertTextAlign("center");
    obj.label77:setHorzTextAlign("center");
    obj.label77:setName("label77");
    obj.label77:setFontColor("white");

    obj.flowLayout13 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout13:setParent(obj.flowPart40);
    obj.flowLayout13:setFrameRegion("RegiaoDePericias");
    obj.flowLayout13:setAutoHeight(true);
    obj.flowLayout13:setLineSpacing(0);
    obj.flowLayout13:setHorzAlign("leading");
    obj.flowLayout13:setName("flowLayout13");
    obj.flowLayout13:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout13:setVertAlign("leading");

    obj.flowPart41 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart41:setParent(obj.flowLayout13);
    obj.flowPart41:setMinWidth(206);
    obj.flowPart41:setMaxWidth(250);
    obj.flowPart41:setHeight(17);
    obj.flowPart41:setName("flowPart41");
    obj.flowPart41:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart41:setVertAlign("leading");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.flowPart41);
    obj.imageCheckBox28:setAlign("left");
    obj.imageCheckBox28:setWidth(20);
    obj.imageCheckBox28:setMargins({});
    obj.imageCheckBox28:setField("resistencias.avaracao");
    obj.imageCheckBox28:setOptimize(false);
    obj.imageCheckBox28:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox28:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox28:setName("imageCheckBox28");
    obj.imageCheckBox28:setHeight(20);

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.flowPart41);
    obj.layout38:setAlign("left");
    obj.layout38:setWidth(26);
    obj.layout38:setMargins({left=2});
    obj.layout38:setName("layout38");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout38);
    obj.label78:setField("resistencias.bonusavaracaostr");
    obj.label78:setAlign("client");
    obj.label78:setHorzTextAlign("center");
    obj.label78:setVertTextAlign("trailing");
    obj.label78:setTextTrimming("none");
    obj.label78:setName("label78");
    obj.label78:setFontColor("white");

    obj.horzLine28 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine28:setParent(obj.layout38);
    obj.horzLine28:setStrokeColor("white");
    obj.horzLine28:setStrokeSize(1);
    obj.horzLine28:setAlign("bottom");
    obj.horzLine28:setName("horzLine28");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.flowPart41);
    obj.label79:setAlign("client");
    obj.label79:setText("Teste de Resistência");
    obj.label79:setVertTextAlign("trailing");
    obj.label79:setMargins({left=5});
    obj.label79:setAutoSize(true);
    obj.label79:setWordWrap(false);
    obj.label79:setName("label79");
    obj.label79:setFontColor("white");

    obj.dataLink38 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.flowLayout13);
    obj.dataLink38:setFields({'atributos.modavaracao', 'bonusProficiencia', 'resistencias.avaracao'});
    obj.dataLink38:setName("dataLink38");

    obj.dataLink39 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.fraLayAtributos);
    obj.dataLink39:setField("atributos.runas");
    obj.dataLink39:setName("dataLink39");

    obj.flowPart42 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart42:setParent(obj.fraLayAtributos);
    obj.flowPart42:setHeight(140);
    obj.flowPart42:setMinWidth(320);
    obj.flowPart42:setMaxWidth(420);
    obj.flowPart42:setMinScaledWidth(305);
    obj.flowPart42:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart42:setName("flowPart42");
    obj.flowPart42:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart42:setVertAlign("leading");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.flowPart42);
    obj.layout39:setLeft(6);
    obj.layout39:setTop(12);
    obj.layout39:setWidth(116);
    obj.layout39:setHeight(115);
    obj.layout39:setName("layout39");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout39);
    obj.edit14:setAlign("top");
    obj.edit14:setMargins({left=30, right=30});
    obj.edit14:setField("atributos.runas");
    obj.edit14:setHeight(30);
    obj.edit14:setType("number");
    obj.edit14:setMin(0);
    obj.edit14:setMax(99);
    obj.edit14:setName("edit14");
    obj.edit14:setTransparent(true);
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontSize(15);
    obj.edit14:setFontColor("white");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.flowPart42);
    obj.label80:setFrameRegion("modificador");
    obj.label80:setField("atributos.modrunasstr");
    obj.label80:setHorzTextAlign("center");
    obj.label80:setVertTextAlign("center");
    obj.label80:setFontSize(46);
    lfm_setPropAsString(obj.label80, "fontStyle",  "bold");
    obj.label80:setName("label80");
    obj.label80:setFontColor("white");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.flowPart42);
    obj.label81:setFrameRegion("titulo");
    obj.label81:setText("RUNAS");
    obj.label81:setVertTextAlign("center");
    obj.label81:setHorzTextAlign("center");
    obj.label81:setName("label81");
    obj.label81:setFontColor("white");

    obj.flowLayout14 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout14:setParent(obj.flowPart42);
    obj.flowLayout14:setFrameRegion("RegiaoDePericias");
    obj.flowLayout14:setAutoHeight(true);
    obj.flowLayout14:setLineSpacing(0);
    obj.flowLayout14:setHorzAlign("leading");
    obj.flowLayout14:setName("flowLayout14");
    obj.flowLayout14:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout14:setVertAlign("leading");

    obj.flowPart43 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart43:setParent(obj.flowLayout14);
    obj.flowPart43:setMinWidth(206);
    obj.flowPart43:setMaxWidth(250);
    obj.flowPart43:setHeight(17);
    obj.flowPart43:setName("flowPart43");
    obj.flowPart43:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart43:setVertAlign("leading");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.flowPart43);
    obj.imageCheckBox29:setAlign("left");
    obj.imageCheckBox29:setWidth(20);
    obj.imageCheckBox29:setMargins({});
    obj.imageCheckBox29:setField("resistencias.runas");
    obj.imageCheckBox29:setOptimize(false);
    obj.imageCheckBox29:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox29:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox29:setName("imageCheckBox29");
    obj.imageCheckBox29:setHeight(20);

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.flowPart43);
    obj.layout40:setAlign("left");
    obj.layout40:setWidth(26);
    obj.layout40:setMargins({left=2});
    obj.layout40:setName("layout40");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout40);
    obj.label82:setField("resistencias.bonusrunasstr");
    obj.label82:setAlign("client");
    obj.label82:setHorzTextAlign("center");
    obj.label82:setVertTextAlign("trailing");
    obj.label82:setTextTrimming("none");
    obj.label82:setName("label82");
    obj.label82:setFontColor("white");

    obj.horzLine29 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine29:setParent(obj.layout40);
    obj.horzLine29:setStrokeColor("white");
    obj.horzLine29:setStrokeSize(1);
    obj.horzLine29:setAlign("bottom");
    obj.horzLine29:setName("horzLine29");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.flowPart43);
    obj.label83:setAlign("client");
    obj.label83:setText("Teste de Resistência");
    obj.label83:setVertTextAlign("trailing");
    obj.label83:setMargins({left=5});
    obj.label83:setAutoSize(true);
    obj.label83:setWordWrap(false);
    obj.label83:setName("label83");
    obj.label83:setFontColor("white");

    obj.dataLink40 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.flowLayout14);
    obj.dataLink40:setFields({'atributos.modrunas', 'bonusProficiencia', 'resistencias.runas'});
    obj.dataLink40:setName("dataLink40");

    obj.dataLink41 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.fraLayAtributos);
    obj.dataLink41:setField("atributos.herbologia");
    obj.dataLink41:setName("dataLink41");

    obj.flowPart44 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart44:setParent(obj.fraLayAtributos);
    obj.flowPart44:setHeight(140);
    obj.flowPart44:setMinWidth(320);
    obj.flowPart44:setMaxWidth(420);
    obj.flowPart44:setMinScaledWidth(305);
    obj.flowPart44:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart44:setName("flowPart44");
    obj.flowPart44:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart44:setVertAlign("leading");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.flowPart44);
    obj.layout41:setLeft(6);
    obj.layout41:setTop(12);
    obj.layout41:setWidth(116);
    obj.layout41:setHeight(115);
    obj.layout41:setName("layout41");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout41);
    obj.edit15:setAlign("top");
    obj.edit15:setMargins({left=30, right=30});
    obj.edit15:setField("atributos.herbologia");
    obj.edit15:setHeight(30);
    obj.edit15:setType("number");
    obj.edit15:setMin(0);
    obj.edit15:setMax(99);
    obj.edit15:setName("edit15");
    obj.edit15:setTransparent(true);
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setFontSize(15);
    obj.edit15:setFontColor("white");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.flowPart44);
    obj.label84:setFrameRegion("modificador");
    obj.label84:setField("atributos.modherbologiastr");
    obj.label84:setHorzTextAlign("center");
    obj.label84:setVertTextAlign("center");
    obj.label84:setFontSize(46);
    lfm_setPropAsString(obj.label84, "fontStyle",  "bold");
    obj.label84:setName("label84");
    obj.label84:setFontColor("white");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.flowPart44);
    obj.label85:setFrameRegion("titulo");
    obj.label85:setText("HERBOLOGIA");
    obj.label85:setVertTextAlign("center");
    obj.label85:setHorzTextAlign("center");
    obj.label85:setName("label85");
    obj.label85:setFontColor("white");

    obj.flowLayout15 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout15:setParent(obj.flowPart44);
    obj.flowLayout15:setFrameRegion("RegiaoDePericias");
    obj.flowLayout15:setAutoHeight(true);
    obj.flowLayout15:setLineSpacing(0);
    obj.flowLayout15:setHorzAlign("leading");
    obj.flowLayout15:setName("flowLayout15");
    obj.flowLayout15:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout15:setVertAlign("leading");

    obj.flowPart45 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart45:setParent(obj.flowLayout15);
    obj.flowPart45:setMinWidth(206);
    obj.flowPart45:setMaxWidth(250);
    obj.flowPart45:setHeight(17);
    obj.flowPart45:setName("flowPart45");
    obj.flowPart45:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart45:setVertAlign("leading");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.flowPart45);
    obj.imageCheckBox30:setAlign("left");
    obj.imageCheckBox30:setWidth(20);
    obj.imageCheckBox30:setMargins({});
    obj.imageCheckBox30:setField("resistencias.herbologia");
    obj.imageCheckBox30:setOptimize(false);
    obj.imageCheckBox30:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox30:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox30:setName("imageCheckBox30");
    obj.imageCheckBox30:setHeight(20);

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.flowPart45);
    obj.layout42:setAlign("left");
    obj.layout42:setWidth(26);
    obj.layout42:setMargins({left=2});
    obj.layout42:setName("layout42");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout42);
    obj.label86:setField("resistencias.bonusherbologiastr");
    obj.label86:setAlign("client");
    obj.label86:setHorzTextAlign("center");
    obj.label86:setVertTextAlign("trailing");
    obj.label86:setTextTrimming("none");
    obj.label86:setName("label86");
    obj.label86:setFontColor("white");

    obj.horzLine30 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine30:setParent(obj.layout42);
    obj.horzLine30:setStrokeColor("white");
    obj.horzLine30:setStrokeSize(1);
    obj.horzLine30:setAlign("bottom");
    obj.horzLine30:setName("horzLine30");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.flowPart45);
    obj.label87:setAlign("client");
    obj.label87:setText("Teste de Resistência");
    obj.label87:setVertTextAlign("trailing");
    obj.label87:setMargins({left=5});
    obj.label87:setAutoSize(true);
    obj.label87:setWordWrap(false);
    obj.label87:setName("label87");
    obj.label87:setFontColor("white");

    obj.dataLink42 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.flowLayout15);
    obj.dataLink42:setFields({'atributos.modherbologia', 'bonusProficiencia', 'resistencias.herbologia'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.fraLayAtributos);
    obj.dataLink43:setField("atributos.aritmancia");
    obj.dataLink43:setName("dataLink43");

    obj.flowPart46 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart46:setParent(obj.fraLayAtributos);
    obj.flowPart46:setHeight(140);
    obj.flowPart46:setMinWidth(320);
    obj.flowPart46:setMaxWidth(420);
    obj.flowPart46:setMinScaledWidth(305);
    obj.flowPart46:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart46:setName("flowPart46");
    obj.flowPart46:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart46:setVertAlign("leading");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.flowPart46);
    obj.layout43:setLeft(6);
    obj.layout43:setTop(12);
    obj.layout43:setWidth(116);
    obj.layout43:setHeight(115);
    obj.layout43:setName("layout43");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout43);
    obj.edit16:setAlign("top");
    obj.edit16:setMargins({left=30, right=30});
    obj.edit16:setField("atributos.aritmancia");
    obj.edit16:setHeight(30);
    obj.edit16:setType("number");
    obj.edit16:setMin(0);
    obj.edit16:setMax(99);
    obj.edit16:setName("edit16");
    obj.edit16:setTransparent(true);
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setFontSize(15);
    obj.edit16:setFontColor("white");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.flowPart46);
    obj.label88:setFrameRegion("modificador");
    obj.label88:setField("atributos.modaritmanciastr");
    obj.label88:setHorzTextAlign("center");
    obj.label88:setVertTextAlign("center");
    obj.label88:setFontSize(46);
    lfm_setPropAsString(obj.label88, "fontStyle",  "bold");
    obj.label88:setName("label88");
    obj.label88:setFontColor("white");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.flowPart46);
    obj.label89:setFrameRegion("titulo");
    obj.label89:setText("ARITMÂNCIA");
    obj.label89:setVertTextAlign("center");
    obj.label89:setHorzTextAlign("center");
    obj.label89:setName("label89");
    obj.label89:setFontColor("white");

    obj.flowLayout16 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout16:setParent(obj.flowPart46);
    obj.flowLayout16:setFrameRegion("RegiaoDePericias");
    obj.flowLayout16:setAutoHeight(true);
    obj.flowLayout16:setLineSpacing(0);
    obj.flowLayout16:setHorzAlign("leading");
    obj.flowLayout16:setName("flowLayout16");
    obj.flowLayout16:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout16:setVertAlign("leading");

    obj.flowPart47 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart47:setParent(obj.flowLayout16);
    obj.flowPart47:setMinWidth(206);
    obj.flowPart47:setMaxWidth(250);
    obj.flowPart47:setHeight(17);
    obj.flowPart47:setName("flowPart47");
    obj.flowPart47:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart47:setVertAlign("leading");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.flowPart47);
    obj.imageCheckBox31:setAlign("left");
    obj.imageCheckBox31:setWidth(20);
    obj.imageCheckBox31:setMargins({});
    obj.imageCheckBox31:setField("resistencias.aritmancia");
    obj.imageCheckBox31:setOptimize(false);
    obj.imageCheckBox31:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox31:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox31:setName("imageCheckBox31");
    obj.imageCheckBox31:setHeight(20);

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.flowPart47);
    obj.layout44:setAlign("left");
    obj.layout44:setWidth(26);
    obj.layout44:setMargins({left=2});
    obj.layout44:setName("layout44");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout44);
    obj.label90:setField("resistencias.bonusaritmanciastr");
    obj.label90:setAlign("client");
    obj.label90:setHorzTextAlign("center");
    obj.label90:setVertTextAlign("trailing");
    obj.label90:setTextTrimming("none");
    obj.label90:setName("label90");
    obj.label90:setFontColor("white");

    obj.horzLine31 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine31:setParent(obj.layout44);
    obj.horzLine31:setStrokeColor("white");
    obj.horzLine31:setStrokeSize(1);
    obj.horzLine31:setAlign("bottom");
    obj.horzLine31:setName("horzLine31");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.flowPart47);
    obj.label91:setAlign("client");
    obj.label91:setText("Teste de Resistência");
    obj.label91:setVertTextAlign("trailing");
    obj.label91:setMargins({left=5});
    obj.label91:setAutoSize(true);
    obj.label91:setWordWrap(false);
    obj.label91:setName("label91");
    obj.label91:setFontColor("white");

    obj.dataLink44 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.flowLayout16);
    obj.dataLink44:setFields({'atributos.modaritmancia', 'bonusProficiencia', 'resistencias.aritmancia'});
    obj.dataLink44:setName("dataLink44");

    obj.dataLink45 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.fraLayAtributos);
    obj.dataLink45:setField("atributos.oclumencia");
    obj.dataLink45:setName("dataLink45");

    obj.flowPart48 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart48:setParent(obj.fraLayAtributos);
    obj.flowPart48:setHeight(140);
    obj.flowPart48:setMinWidth(320);
    obj.flowPart48:setMaxWidth(420);
    obj.flowPart48:setMinScaledWidth(305);
    obj.flowPart48:setFrameStyle("frames/atributeFrame2/frame.xml");
    obj.flowPart48:setName("flowPart48");
    obj.flowPart48:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart48:setVertAlign("leading");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.flowPart48);
    obj.layout45:setLeft(6);
    obj.layout45:setTop(12);
    obj.layout45:setWidth(116);
    obj.layout45:setHeight(115);
    obj.layout45:setName("layout45");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout45);
    obj.edit17:setAlign("top");
    obj.edit17:setMargins({left=30, right=30});
    obj.edit17:setField("atributos.oclumencia");
    obj.edit17:setHeight(30);
    obj.edit17:setType("number");
    obj.edit17:setMin(0);
    obj.edit17:setMax(99);
    obj.edit17:setName("edit17");
    obj.edit17:setTransparent(true);
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setFontSize(15);
    obj.edit17:setFontColor("white");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.flowPart48);
    obj.label92:setFrameRegion("modificador");
    obj.label92:setField("atributos.modoclumenciastr");
    obj.label92:setHorzTextAlign("center");
    obj.label92:setVertTextAlign("center");
    obj.label92:setFontSize(46);
    lfm_setPropAsString(obj.label92, "fontStyle",  "bold");
    obj.label92:setName("label92");
    obj.label92:setFontColor("white");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.flowPart48);
    obj.label93:setFrameRegion("titulo");
    obj.label93:setText("OCLUMÊNCIA");
    obj.label93:setVertTextAlign("center");
    obj.label93:setHorzTextAlign("center");
    obj.label93:setName("label93");
    obj.label93:setFontColor("white");

    obj.flowLayout17 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout17:setParent(obj.flowPart48);
    obj.flowLayout17:setFrameRegion("RegiaoDePericias");
    obj.flowLayout17:setAutoHeight(true);
    obj.flowLayout17:setLineSpacing(0);
    obj.flowLayout17:setHorzAlign("leading");
    obj.flowLayout17:setName("flowLayout17");
    obj.flowLayout17:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout17:setVertAlign("leading");

    obj.flowPart49 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart49:setParent(obj.flowLayout17);
    obj.flowPart49:setMinWidth(206);
    obj.flowPart49:setMaxWidth(250);
    obj.flowPart49:setHeight(17);
    obj.flowPart49:setName("flowPart49");
    obj.flowPart49:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart49:setVertAlign("leading");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.flowPart49);
    obj.imageCheckBox32:setAlign("left");
    obj.imageCheckBox32:setWidth(20);
    obj.imageCheckBox32:setMargins({});
    obj.imageCheckBox32:setField("resistencias.oclumencia");
    obj.imageCheckBox32:setOptimize(false);
    obj.imageCheckBox32:setImageChecked("images/checkbox2_checked.png");
    obj.imageCheckBox32:setImageUnchecked("images/checkbox2_unchecked.png");
    obj.imageCheckBox32:setName("imageCheckBox32");
    obj.imageCheckBox32:setHeight(20);

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.flowPart49);
    obj.layout46:setAlign("left");
    obj.layout46:setWidth(26);
    obj.layout46:setMargins({left=2});
    obj.layout46:setName("layout46");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout46);
    obj.label94:setField("resistencias.bonusoclumenciastr");
    obj.label94:setAlign("client");
    obj.label94:setHorzTextAlign("center");
    obj.label94:setVertTextAlign("trailing");
    obj.label94:setTextTrimming("none");
    obj.label94:setName("label94");
    obj.label94:setFontColor("white");

    obj.horzLine32 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine32:setParent(obj.layout46);
    obj.horzLine32:setStrokeColor("white");
    obj.horzLine32:setStrokeSize(1);
    obj.horzLine32:setAlign("bottom");
    obj.horzLine32:setName("horzLine32");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.flowPart49);
    obj.label95:setAlign("client");
    obj.label95:setText("Teste de Resistência");
    obj.label95:setVertTextAlign("trailing");
    obj.label95:setMargins({left=5});
    obj.label95:setAutoSize(true);
    obj.label95:setWordWrap(false);
    obj.label95:setName("label95");
    obj.label95:setFontColor("white");

    obj.dataLink46 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.flowLayout17);
    obj.dataLink46:setFields({'atributos.modoclumencia', 'bonusProficiencia', 'resistencias.oclumencia'});
    obj.dataLink46:setName("dataLink46");

    obj.flowLayout18 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout18:setParent(obj.flowLayout3);
    obj.flowLayout18:setAutoHeight(true);
    obj.flowLayout18:setHorzAlign("center");
    obj.flowLayout18:setVertAlign("leading");
    obj.flowLayout18:setMaxControlsPerLine(1);
    obj.flowLayout18:setName("flowLayout18");
    obj.flowLayout18:setStepSizes({310, 360});
    obj.flowLayout18:setMinScaledWidth(300);
    obj.flowLayout18:setMaxScaledWidth(340);
    obj.flowLayout18:setAvoidScale(true);
    obj.flowLayout18:setMargins({left=1, right=1, top=2, bottom=2});

    obj.flowLayout19 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout19:setParent(obj.flowLayout18);
    obj.flowLayout19:setMinWidth(235);
    obj.flowLayout19:setMaxWidth(475);
    obj.flowLayout19:setAutoHeight(true);
    obj.flowLayout19:setAvoidScale(false);
    obj.flowLayout19:setVertAlign("center");
    obj.flowLayout19:setHorzAlign("justify");
    obj.flowLayout19:setName("flowLayout19");
    obj.flowLayout19:setMargins({left=1, right=1, top=2, bottom=2});

    obj.flowPart50 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart50:setParent(obj.flowLayout19);
    obj.flowPart50:setStepSizes({105});
    obj.flowPart50:setMinScaledWidth(75);
    obj.flowPart50:setHeight(120);
    obj.flowPart50:setFrameStyle("frames/shield/frame.xml");
    obj.flowPart50:setName("flowPart50");
    obj.flowPart50:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart50:setVertAlign("leading");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.flowPart50);
    obj.label96:setAlign("top");
    obj.label96:setText("CLASSE DE ARMADURA");
    obj.label96:setHeight(20);
    obj.label96:setFontSize(9);
    obj.label96:setWordWrap(true);
    obj.label96:setHorzTextAlign("center");
    obj.label96:setTextTrimming("none");
    obj.label96:setName("label96");
    obj.label96:setFontColor("white");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.flowPart50);
    obj.edit18:setAlign("client");
    obj.edit18:setField("CA");
    obj.edit18:setFontSize(30);
    obj.edit18:setName("edit18");
    obj.edit18:setTransparent(true);
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setFontColor("white");

    obj.flowPart51 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart51:setParent(obj.flowLayout19);
    obj.flowPart51:setStepSizes({105});
    obj.flowPart51:setMinScaledWidth(75);
    obj.flowPart51:setHeight(120);
    obj.flowPart51:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart51:setName("flowPart51");
    obj.flowPart51:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart51:setVertAlign("leading");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.flowPart51);
    obj.label97:setAlign("top");
    obj.label97:setText("INICIATIVA");
    obj.label97:setHeight(20);
    obj.label97:setFontSize(9);
    obj.label97:setWordWrap(true);
    obj.label97:setHorzTextAlign("center");
    obj.label97:setTextTrimming("none");
    obj.label97:setName("label97");
    obj.label97:setFontColor("white");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.flowPart51);
    obj.edit19:setAlign("client");
    obj.edit19:setField("iniciativa");
    obj.edit19:setFontSize(30);
    obj.edit19:setName("edit19");
    obj.edit19:setTransparent(true);
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setFontColor("white");

    obj.flowPart52 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart52:setParent(obj.flowLayout19);
    obj.flowPart52:setStepSizes({105});
    obj.flowPart52:setMinScaledWidth(75);
    obj.flowPart52:setHeight(120);
    obj.flowPart52:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart52:setName("flowPart52");
    obj.flowPart52:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart52:setVertAlign("leading");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.flowPart52);
    obj.label98:setAlign("top");
    obj.label98:setText("DESLOCAMENTO");
    obj.label98:setHeight(20);
    obj.label98:setFontSize(9);
    obj.label98:setWordWrap(true);
    obj.label98:setHorzTextAlign("center");
    obj.label98:setTextTrimming("none");
    obj.label98:setName("label98");
    obj.label98:setFontColor("white");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.flowPart52);
    obj.edit20:setAlign("client");
    obj.edit20:setField("deslocamento");
    obj.edit20:setFontSize(30);
    obj.edit20:setName("edit20");
    obj.edit20:setTransparent(true);
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setFontColor("white");

    obj.flowPart53 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart53:setParent(obj.flowLayout18);
    obj.flowPart53:setMinWidth(235);
    obj.flowPart53:setMaxWidth(475);
    obj.flowPart53:setMinScaledWidth(200);
    obj.flowPart53:setHeight(175);
    obj.flowPart53:setMargins({left=2, right=2, top=4, bottom=8});
    obj.flowPart53:setName("flowPart53");
    obj.flowPart53:setVertAlign("leading");

    obj.frame1 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame1:setParent(obj.flowPart53);
    obj.frame1:setAlign("client");
    obj.frame1:setFrameStyle("frames/panel5/topPanel.xml");
    obj.frame1:setMargins({left = 4, right = 4, bottom=4});
    obj.frame1:setName("frame1");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.frame1);
    obj.layout47:setAlign("top");
    obj.layout47:setHeight(25);
    obj.layout47:setName("layout47");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout47);
    obj.label99:setAlign("left");
    obj.label99:setAutoSize(true);
    obj.label99:setText("PONTOS DE VIDA MÁXIMO:");
    obj.label99:setTextTrimming("none");
    obj.label99:setWordWrap(false);
    obj.label99:setFontSize(12);
    obj.label99:setHorzTextAlign("trailing");
    obj.label99:setName("label99");
    obj.label99:setFontColor("#D0D0D0");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.layout47);
    obj.layout48:setAlign("client");
    obj.layout48:setMargins({left=5, right=3});
    obj.layout48:setName("layout48");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout48);
    obj.edit21:setAlign("client");
    obj.edit21:setField("PVMax");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setName("edit21");
    obj.edit21:setFontSize(15);
    obj.edit21:setFontColor("white");
    obj.edit21:setTransparent(true);

    obj.horzLine33 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine33:setParent(obj.layout48);
    obj.horzLine33:setAlign("bottom");
    obj.horzLine33:setStrokeColor("gray");
    obj.horzLine33:setName("horzLine33");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.frame1);
    obj.edit22:setAlign("client");
    obj.edit22:setField("PV");
    obj.edit22:setMargins({top=2});
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setFontSize(36);
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setName("edit22");
    obj.edit22:setFontColor("white");
    obj.edit22:setTransparent(true);

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.frame1);
    obj.label100:setAlign("bottom");
    obj.label100:setAutoSize(true);
    obj.label100:setText("PONTOS DE VIDA ATUAL");
    obj.label100:setFontSize(11);
    obj.label100:setVertTextAlign("center");
    obj.label100:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label100, "fontStyle",  "bold");
    obj.label100:setName("label100");
    obj.label100:setFontColor("white");

    obj.frame2 = GUI.fromHandle(_obj_newObject("frame"));
    obj.frame2:setParent(obj.flowPart53);
    obj.frame2:setAlign("bottom");
    obj.frame2:setHeight(70);
    obj.frame2:setFrameStyle("frames/panel5/bottomPanel.xml");
    obj.frame2:setMargins({left = 4, right = 4});
    obj.frame2:setName("frame2");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.frame2);
    obj.edit23:setAlign("client");
    obj.edit23:setField("PVTemporario");
    obj.edit23:setMargins({top=2});
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setFontSize(36);
    lfm_setPropAsString(obj.edit23, "fontStyle",  "bold");
    obj.edit23:setName("edit23");
    obj.edit23:setFontColor("white");
    obj.edit23:setTransparent(true);

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.frame2);
    obj.label101:setAlign("bottom");
    obj.label101:setAutoSize(true);
    obj.label101:setText("PONTOS DE VIDA TEMPORÁRIOS");
    obj.label101:setFontSize(11);
    obj.label101:setVertTextAlign("center");
    obj.label101:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label101, "fontStyle",  "bold");
    obj.label101:setName("label101");
    obj.label101:setFontColor("white");

    obj.flowLayout20 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout20:setParent(obj.flowLayout18);
    obj.flowLayout20:setAutoHeight(true);
    obj.flowLayout20:setMinWidth(235);
    obj.flowLayout20:setMaxWidth(475);
    obj.flowLayout20:setMinScaledWidth(235);
    obj.flowLayout20:setHorzAlign("justify");
    obj.flowLayout20:setName("flowLayout20");
    obj.flowLayout20:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout20:setVertAlign("leading");

    obj.flowPart54 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart54:setParent(obj.flowLayout20);
    obj.flowPart54:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart54:setStepSizes({130, 150, 160});
    obj.flowPart54:setHeight(100);
    obj.flowPart54:setName("flowPart54");
    obj.flowPart54:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart54:setVertAlign("leading");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.flowPart54);
    obj.layout49:setAlign("top");
    obj.layout49:setHeight(25);
    obj.layout49:setName("layout49");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout49);
    obj.label102:setAlign("left");
    obj.label102:setAutoSize(true);
    obj.label102:setText("TOTAL:");
    obj.label102:setTextTrimming("none");
    obj.label102:setWordWrap(false);
    obj.label102:setFontSize(10);
    obj.label102:setHorzTextAlign("trailing");
    obj.label102:setName("label102");
    obj.label102:setFontColor("#D0D0D0");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.layout49);
    obj.layout50:setAlign("client");
    obj.layout50:setMargins({left=5, right=3});
    obj.layout50:setName("layout50");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout50);
    obj.edit24:setAlign("client");
    obj.edit24:setField("DadosDeVidaTotal");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setName("edit24");
    obj.edit24:setFontSize(15);
    obj.edit24:setFontColor("white");
    obj.edit24:setTransparent(true);

    obj.horzLine34 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine34:setParent(obj.layout50);
    obj.horzLine34:setAlign("bottom");
    obj.horzLine34:setStrokeColor("gray");
    obj.horzLine34:setName("horzLine34");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.flowPart54);
    obj.edit25:setAlign("client");
    obj.edit25:setField("DadosDeVida");
    obj.edit25:setMargins({top=2});
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setFontSize(21);
    obj.edit25:setName("edit25");
    obj.edit25:setFontColor("white");
    obj.edit25:setTransparent(true);

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.flowPart54);
    obj.label103:setAlign("bottom");
    obj.label103:setAutoSize(true);
    obj.label103:setText("DADOS DE VIDA");
    obj.label103:setFontSize(11);
    obj.label103:setVertTextAlign("center");
    obj.label103:setHorzTextAlign("center");
    obj.label103:setName("label103");
    obj.label103:setFontColor("white");

    obj.flowPart55 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart55:setParent(obj.flowLayout20);
    obj.flowPart55:setFrameStyle("frames/panel4transp/frame.xml");
    obj.flowPart55:setStepSizes({170, 170});
    obj.flowPart55:setHeight(100);
    obj.flowPart55:setName("flowPart55");
    obj.flowPart55:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart55:setVertAlign("leading");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.flowPart55);
    obj.layout51:setAlign("top");
    obj.layout51:setHeight(25);
    obj.layout51:setMargins({left=2});
    obj.layout51:setName("layout51");

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout51);
    obj.label104:setAlign("client");
    obj.label104:setAutoSize(true);
    obj.label104:setFontSize(10);
    obj.label104:setText("SUCESSOS");
    obj.label104:setWordWrap(false);
    obj.label104:setVertTextAlign("center");
    obj.label104:setHorzTextAlign("trailing");
    obj.label104:setMargins({right=6});
    obj.label104:setName("label104");
    obj.label104:setFontColor("white");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout51);
    obj.imageCheckBox33:setAlign("right");
    obj.imageCheckBox33:setWidth(25);
    obj.imageCheckBox33:setMargins({right=2});
    obj.imageCheckBox33:setField("testesContraMorte.s0");
    obj.imageCheckBox33:setOptimize(false);
    obj.imageCheckBox33:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox33:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox33:setName("imageCheckBox33");
    obj.imageCheckBox33:setHeight(20);

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout51);
    obj.imageCheckBox34:setAlign("right");
    obj.imageCheckBox34:setWidth(25);
    obj.imageCheckBox34:setMargins({right=2});
    obj.imageCheckBox34:setField("testesContraMorte.s1");
    obj.imageCheckBox34:setOptimize(false);
    obj.imageCheckBox34:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox34:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox34:setName("imageCheckBox34");
    obj.imageCheckBox34:setHeight(20);

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout51);
    obj.imageCheckBox35:setAlign("right");
    obj.imageCheckBox35:setWidth(25);
    obj.imageCheckBox35:setMargins({right=6});
    obj.imageCheckBox35:setField("testesContraMorte.s2");
    obj.imageCheckBox35:setOptimize(false);
    obj.imageCheckBox35:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox35:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox35:setName("imageCheckBox35");
    obj.imageCheckBox35:setHeight(20);

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.flowPart55);
    obj.layout52:setAlign("top");
    obj.layout52:setHeight(25);
    obj.layout52:setMargins({left=2, top = 4});
    obj.layout52:setName("layout52");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout52);
    obj.label105:setAlign("client");
    obj.label105:setAutoSize(true);
    obj.label105:setFontSize(10);
    obj.label105:setText("FALHAS");
    obj.label105:setVertTextAlign("center");
    obj.label105:setHorzTextAlign("trailing");
    obj.label105:setMargins({right=6});
    obj.label105:setName("label105");
    obj.label105:setFontColor("white");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout52);
    obj.imageCheckBox36:setAlign("right");
    obj.imageCheckBox36:setWidth(25);
    obj.imageCheckBox36:setMargins({right=2});
    obj.imageCheckBox36:setField("testesContraMorte.f0");
    obj.imageCheckBox36:setOptimize(false);
    obj.imageCheckBox36:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox36:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox36:setName("imageCheckBox36");
    obj.imageCheckBox36:setHeight(20);

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout52);
    obj.imageCheckBox37:setAlign("right");
    obj.imageCheckBox37:setWidth(25);
    obj.imageCheckBox37:setMargins({right=2});
    obj.imageCheckBox37:setField("testesContraMorte.f1");
    obj.imageCheckBox37:setOptimize(false);
    obj.imageCheckBox37:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox37:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox37:setName("imageCheckBox37");
    obj.imageCheckBox37:setHeight(20);

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout52);
    obj.imageCheckBox38:setAlign("right");
    obj.imageCheckBox38:setWidth(25);
    obj.imageCheckBox38:setMargins({right=6});
    obj.imageCheckBox38:setField("testesContraMorte.f2");
    obj.imageCheckBox38:setOptimize(false);
    obj.imageCheckBox38:setImageChecked("images/checkbox1_checked.png");
    obj.imageCheckBox38:setImageUnchecked("images/checkbox1_unchecked.png");
    obj.imageCheckBox38:setName("imageCheckBox38");
    obj.imageCheckBox38:setHeight(20);

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.flowPart55);
    obj.label106:setAlign("bottom");
    obj.label106:setAutoSize(true);
    obj.label106:setText("TESTE CONTRA MORTE");
    obj.label106:setFontSize(11);
    obj.label106:setVertTextAlign("center");
    obj.label106:setHorzTextAlign("center");
    obj.label106:setName("label106");
    obj.label106:setFontColor("white");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.pgcPrincipal);
    obj.tab2:setTitle("Caracteristicas");
    obj.tab2:setName("tab2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.tab2);
    obj.rectangle2:setName("rectangle2");
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("#40000000");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.rectangle2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.fraCaracteristicasLayout = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraCaracteristicasLayout:setParent(obj.scrollBox2);
    obj.fraCaracteristicasLayout:setAlign("top");
    obj.fraCaracteristicasLayout:setHeight(500);
    obj.fraCaracteristicasLayout:setMargins({left=10, right=10, top=10});
    obj.fraCaracteristicasLayout:setAutoHeight(true);
    obj.fraCaracteristicasLayout:setHorzAlign("center");
    obj.fraCaracteristicasLayout:setLineSpacing(3);
    obj.fraCaracteristicasLayout:setName("fraCaracteristicasLayout");
    obj.fraCaracteristicasLayout:setStepSizes({310, 420, 640, 760, 1150});
    obj.fraCaracteristicasLayout:setMinScaledWidth(300);
    obj.fraCaracteristicasLayout:setVertAlign("leading");

    obj.flowLayout21 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout21:setParent(obj.fraCaracteristicasLayout);
    obj.flowLayout21:setAutoHeight(true);
    obj.flowLayout21:setMinScaledWidth(290);
    obj.flowLayout21:setHorzAlign("center");
    obj.flowLayout21:setName("flowLayout21");
    obj.flowLayout21:setStepSizes({310, 420, 640, 760, 860, 960, 1150, 1200, 1600});
    obj.flowLayout21:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout21:setVertAlign("leading");

    obj.flowPart56 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart56:setParent(obj.flowLayout21);
    obj.flowPart56:setMinWidth(320);
    obj.flowPart56:setMaxWidth(1600);
    obj.flowPart56:setFrameStyle("frames/banner/heroGroup.xml");
    obj.flowPart56:setHeight(175);
    obj.flowPart56:setVertAlign("center");
    obj.flowPart56:setAvoidScale(true);
    obj.flowPart56:setName("flowPart56");
    obj.flowPart56:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowPart56:setMinScaledWidth(300);
    obj.flowPart56:setMargins({left=1, right=1, top=2, bottom=2});

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.flowPart56);
    obj.layout53:setAlign("client");
    obj.layout53:setName("layout53");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout53);
    obj.edit26:setField("nome");
    obj.edit26:setFontSize(17);
    obj.edit26:setAlign("client");
    obj.edit26:setName("edit26");
    obj.edit26:setFontColor("white");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setTransparent(true);

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.layout53);
    obj.label107:setAlign("bottom");
    obj.label107:setText("NOME DO PERSONAGEM");
    obj.label107:setAutoSize(true);
    obj.label107:setMargins({left=3});
    obj.label107:setName("label107");
    obj.label107:setFontSize(12);
    obj.label107:setFontColor("#D0D0D0");

    obj.fraUpperGridCaracteristicas = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraUpperGridCaracteristicas:setParent(obj.flowLayout21);
    obj.fraUpperGridCaracteristicas:setMinWidth(320);
    obj.fraUpperGridCaracteristicas:setMaxWidth(1600);
    obj.fraUpperGridCaracteristicas:setName("fraUpperGridCaracteristicas");
    obj.fraUpperGridCaracteristicas:setAvoidScale(true);
    obj.fraUpperGridCaracteristicas:setFrameStyle("frames/upperInfoGrid/frame.xml");
    obj.fraUpperGridCaracteristicas:setAutoHeight(true);
    obj.fraUpperGridCaracteristicas:setVertAlign("trailing");
    obj.fraUpperGridCaracteristicas:setMaxControlsPerLine(3);
    obj.fraUpperGridCaracteristicas:setStepSizes({310, 420, 640, 760, 1150});
    obj.fraUpperGridCaracteristicas:setMinScaledWidth(300);
    obj.fraUpperGridCaracteristicas:setMargins({left=1, right=1, top=2, bottom=2});

    obj.UpperGridCampo7 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo7:setParent(obj.fraUpperGridCaracteristicas);
    obj.UpperGridCampo7:setHeight(50);
    obj.UpperGridCampo7:setMinScaledWidth(100);
    obj.UpperGridCampo7:setMinWidth(100);
    obj.UpperGridCampo7:setMaxWidth(233);
    obj.UpperGridCampo7:setMaxScaledWidth(233);
    obj.UpperGridCampo7:setAvoidScale(true);
    obj.UpperGridCampo7:setName("UpperGridCampo7");
    obj.UpperGridCampo7:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo7:setVertAlign("leading");

    obj.edtUpperGridCampo7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo7:setParent(obj.UpperGridCampo7);
    obj.edtUpperGridCampo7:setName("edtUpperGridCampo7");
    obj.edtUpperGridCampo7:setAlign("top");
    obj.edtUpperGridCampo7:setField("caracteristicas.idade");
    obj.edtUpperGridCampo7:setFontSize(13);
    obj.edtUpperGridCampo7:setHeight(30);
    obj.edtUpperGridCampo7:setTransparent(true);
    obj.edtUpperGridCampo7:setVertTextAlign("trailing");
    obj.edtUpperGridCampo7:setWidth(195);
    obj.edtUpperGridCampo7:setFontColor("white");

    obj.linUpperGridCampo7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo7:setParent(obj.UpperGridCampo7);
    obj.linUpperGridCampo7:setName("linUpperGridCampo7");
    obj.linUpperGridCampo7:setAlign("top");
    obj.linUpperGridCampo7:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo7:setStrokeSize(1);

    obj.labUpperGridCampo7 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo7:setParent(obj.UpperGridCampo7);
    obj.labUpperGridCampo7:setName("labUpperGridCampo7");
    obj.labUpperGridCampo7:setAlign("top");
    obj.labUpperGridCampo7:setText("IDADE");
    obj.labUpperGridCampo7:setVertTextAlign("leading");
    obj.labUpperGridCampo7:setWordWrap(true);
    obj.labUpperGridCampo7:setTextTrimming("none");
    obj.labUpperGridCampo7:setFontSize(12);
    obj.labUpperGridCampo7:setFontColor("#D0D0D0");

    self.UpperGridCampo7:setHeight(self.edtUpperGridCampo7:getHeight() + self.labUpperGridCampo7:getHeight() + self.linUpperGridCampo7:getHeight());


    obj.UpperGridCampo8 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo8:setParent(obj.fraUpperGridCaracteristicas);
    obj.UpperGridCampo8:setHeight(50);
    obj.UpperGridCampo8:setMinScaledWidth(100);
    obj.UpperGridCampo8:setMinWidth(100);
    obj.UpperGridCampo8:setMaxWidth(233);
    obj.UpperGridCampo8:setMaxScaledWidth(233);
    obj.UpperGridCampo8:setAvoidScale(true);
    obj.UpperGridCampo8:setName("UpperGridCampo8");
    obj.UpperGridCampo8:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo8:setVertAlign("leading");

    obj.edtUpperGridCampo8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo8:setParent(obj.UpperGridCampo8);
    obj.edtUpperGridCampo8:setName("edtUpperGridCampo8");
    obj.edtUpperGridCampo8:setAlign("top");
    obj.edtUpperGridCampo8:setField("caracteristicas.altura");
    obj.edtUpperGridCampo8:setFontSize(13);
    obj.edtUpperGridCampo8:setHeight(30);
    obj.edtUpperGridCampo8:setTransparent(true);
    obj.edtUpperGridCampo8:setVertTextAlign("trailing");
    obj.edtUpperGridCampo8:setWidth(195);
    obj.edtUpperGridCampo8:setFontColor("white");

    obj.linUpperGridCampo8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo8:setParent(obj.UpperGridCampo8);
    obj.linUpperGridCampo8:setName("linUpperGridCampo8");
    obj.linUpperGridCampo8:setAlign("top");
    obj.linUpperGridCampo8:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo8:setStrokeSize(1);

    obj.labUpperGridCampo8 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo8:setParent(obj.UpperGridCampo8);
    obj.labUpperGridCampo8:setName("labUpperGridCampo8");
    obj.labUpperGridCampo8:setAlign("top");
    obj.labUpperGridCampo8:setText("ALTURA");
    obj.labUpperGridCampo8:setVertTextAlign("leading");
    obj.labUpperGridCampo8:setWordWrap(true);
    obj.labUpperGridCampo8:setTextTrimming("none");
    obj.labUpperGridCampo8:setFontSize(12);
    obj.labUpperGridCampo8:setFontColor("#D0D0D0");

    self.UpperGridCampo8:setHeight(self.edtUpperGridCampo8:getHeight() + self.labUpperGridCampo8:getHeight() + self.linUpperGridCampo8:getHeight());


    obj.UpperGridCampo9 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo9:setParent(obj.fraUpperGridCaracteristicas);
    obj.UpperGridCampo9:setHeight(50);
    obj.UpperGridCampo9:setMinScaledWidth(100);
    obj.UpperGridCampo9:setMinWidth(100);
    obj.UpperGridCampo9:setMaxWidth(233);
    obj.UpperGridCampo9:setMaxScaledWidth(233);
    obj.UpperGridCampo9:setAvoidScale(true);
    obj.UpperGridCampo9:setName("UpperGridCampo9");
    obj.UpperGridCampo9:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo9:setVertAlign("leading");

    obj.edtUpperGridCampo9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo9:setParent(obj.UpperGridCampo9);
    obj.edtUpperGridCampo9:setName("edtUpperGridCampo9");
    obj.edtUpperGridCampo9:setAlign("top");
    obj.edtUpperGridCampo9:setField("caracteristicas.peso");
    obj.edtUpperGridCampo9:setFontSize(13);
    obj.edtUpperGridCampo9:setHeight(30);
    obj.edtUpperGridCampo9:setTransparent(true);
    obj.edtUpperGridCampo9:setVertTextAlign("trailing");
    obj.edtUpperGridCampo9:setWidth(195);
    obj.edtUpperGridCampo9:setFontColor("white");

    obj.linUpperGridCampo9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo9:setParent(obj.UpperGridCampo9);
    obj.linUpperGridCampo9:setName("linUpperGridCampo9");
    obj.linUpperGridCampo9:setAlign("top");
    obj.linUpperGridCampo9:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo9:setStrokeSize(1);

    obj.labUpperGridCampo9 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo9:setParent(obj.UpperGridCampo9);
    obj.labUpperGridCampo9:setName("labUpperGridCampo9");
    obj.labUpperGridCampo9:setAlign("top");
    obj.labUpperGridCampo9:setText("PESO");
    obj.labUpperGridCampo9:setVertTextAlign("leading");
    obj.labUpperGridCampo9:setWordWrap(true);
    obj.labUpperGridCampo9:setTextTrimming("none");
    obj.labUpperGridCampo9:setFontSize(12);
    obj.labUpperGridCampo9:setFontColor("#D0D0D0");

    self.UpperGridCampo9:setHeight(self.edtUpperGridCampo9:getHeight() + self.labUpperGridCampo9:getHeight() + self.linUpperGridCampo9:getHeight());


    obj.UpperGridCampo10 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo10:setParent(obj.fraUpperGridCaracteristicas);
    obj.UpperGridCampo10:setHeight(50);
    obj.UpperGridCampo10:setMinScaledWidth(100);
    obj.UpperGridCampo10:setMinWidth(100);
    obj.UpperGridCampo10:setMaxWidth(233);
    obj.UpperGridCampo10:setMaxScaledWidth(233);
    obj.UpperGridCampo10:setAvoidScale(true);
    obj.UpperGridCampo10:setName("UpperGridCampo10");
    obj.UpperGridCampo10:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo10:setVertAlign("leading");

    obj.edtUpperGridCampo10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo10:setParent(obj.UpperGridCampo10);
    obj.edtUpperGridCampo10:setName("edtUpperGridCampo10");
    obj.edtUpperGridCampo10:setAlign("top");
    obj.edtUpperGridCampo10:setField("caracteristicas.olhos");
    obj.edtUpperGridCampo10:setFontSize(13);
    obj.edtUpperGridCampo10:setHeight(30);
    obj.edtUpperGridCampo10:setTransparent(true);
    obj.edtUpperGridCampo10:setVertTextAlign("trailing");
    obj.edtUpperGridCampo10:setWidth(195);
    obj.edtUpperGridCampo10:setFontColor("white");

    obj.linUpperGridCampo10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo10:setParent(obj.UpperGridCampo10);
    obj.linUpperGridCampo10:setName("linUpperGridCampo10");
    obj.linUpperGridCampo10:setAlign("top");
    obj.linUpperGridCampo10:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo10:setStrokeSize(1);

    obj.labUpperGridCampo10 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo10:setParent(obj.UpperGridCampo10);
    obj.labUpperGridCampo10:setName("labUpperGridCampo10");
    obj.labUpperGridCampo10:setAlign("top");
    obj.labUpperGridCampo10:setText("OLHOS");
    obj.labUpperGridCampo10:setVertTextAlign("leading");
    obj.labUpperGridCampo10:setWordWrap(true);
    obj.labUpperGridCampo10:setTextTrimming("none");
    obj.labUpperGridCampo10:setFontSize(12);
    obj.labUpperGridCampo10:setFontColor("#D0D0D0");

    self.UpperGridCampo10:setHeight(self.edtUpperGridCampo10:getHeight() + self.labUpperGridCampo10:getHeight() + self.linUpperGridCampo10:getHeight());


    obj.UpperGridCampo11 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo11:setParent(obj.fraUpperGridCaracteristicas);
    obj.UpperGridCampo11:setHeight(50);
    obj.UpperGridCampo11:setMinScaledWidth(100);
    obj.UpperGridCampo11:setMinWidth(100);
    obj.UpperGridCampo11:setMaxWidth(233);
    obj.UpperGridCampo11:setMaxScaledWidth(233);
    obj.UpperGridCampo11:setAvoidScale(true);
    obj.UpperGridCampo11:setName("UpperGridCampo11");
    obj.UpperGridCampo11:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo11:setVertAlign("leading");

    obj.edtUpperGridCampo11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo11:setParent(obj.UpperGridCampo11);
    obj.edtUpperGridCampo11:setName("edtUpperGridCampo11");
    obj.edtUpperGridCampo11:setAlign("top");
    obj.edtUpperGridCampo11:setField("caracteristicas.pele");
    obj.edtUpperGridCampo11:setFontSize(13);
    obj.edtUpperGridCampo11:setHeight(30);
    obj.edtUpperGridCampo11:setTransparent(true);
    obj.edtUpperGridCampo11:setVertTextAlign("trailing");
    obj.edtUpperGridCampo11:setWidth(195);
    obj.edtUpperGridCampo11:setFontColor("white");

    obj.linUpperGridCampo11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo11:setParent(obj.UpperGridCampo11);
    obj.linUpperGridCampo11:setName("linUpperGridCampo11");
    obj.linUpperGridCampo11:setAlign("top");
    obj.linUpperGridCampo11:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo11:setStrokeSize(1);

    obj.labUpperGridCampo11 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo11:setParent(obj.UpperGridCampo11);
    obj.labUpperGridCampo11:setName("labUpperGridCampo11");
    obj.labUpperGridCampo11:setAlign("top");
    obj.labUpperGridCampo11:setText("PELE");
    obj.labUpperGridCampo11:setVertTextAlign("leading");
    obj.labUpperGridCampo11:setWordWrap(true);
    obj.labUpperGridCampo11:setTextTrimming("none");
    obj.labUpperGridCampo11:setFontSize(12);
    obj.labUpperGridCampo11:setFontColor("#D0D0D0");

    self.UpperGridCampo11:setHeight(self.edtUpperGridCampo11:getHeight() + self.labUpperGridCampo11:getHeight() + self.linUpperGridCampo11:getHeight());


    obj.UpperGridCampo12 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.UpperGridCampo12:setParent(obj.fraUpperGridCaracteristicas);
    obj.UpperGridCampo12:setHeight(50);
    obj.UpperGridCampo12:setMinScaledWidth(100);
    obj.UpperGridCampo12:setMinWidth(100);
    obj.UpperGridCampo12:setMaxWidth(233);
    obj.UpperGridCampo12:setMaxScaledWidth(233);
    obj.UpperGridCampo12:setAvoidScale(true);
    obj.UpperGridCampo12:setName("UpperGridCampo12");
    obj.UpperGridCampo12:setMargins({left=1, right=1, top=2, bottom=2});
    obj.UpperGridCampo12:setVertAlign("leading");

    obj.edtUpperGridCampo12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edtUpperGridCampo12:setParent(obj.UpperGridCampo12);
    obj.edtUpperGridCampo12:setName("edtUpperGridCampo12");
    obj.edtUpperGridCampo12:setAlign("top");
    obj.edtUpperGridCampo12:setField("caracteristicas.cabelo");
    obj.edtUpperGridCampo12:setFontSize(13);
    obj.edtUpperGridCampo12:setHeight(30);
    obj.edtUpperGridCampo12:setTransparent(true);
    obj.edtUpperGridCampo12:setVertTextAlign("trailing");
    obj.edtUpperGridCampo12:setWidth(195);
    obj.edtUpperGridCampo12:setFontColor("white");

    obj.linUpperGridCampo12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.linUpperGridCampo12:setParent(obj.UpperGridCampo12);
    obj.linUpperGridCampo12:setName("linUpperGridCampo12");
    obj.linUpperGridCampo12:setAlign("top");
    obj.linUpperGridCampo12:setStrokeColor("#FFFFFF50");
    obj.linUpperGridCampo12:setStrokeSize(1);

    obj.labUpperGridCampo12 = GUI.fromHandle(_obj_newObject("label"));
    obj.labUpperGridCampo12:setParent(obj.UpperGridCampo12);
    obj.labUpperGridCampo12:setName("labUpperGridCampo12");
    obj.labUpperGridCampo12:setAlign("top");
    obj.labUpperGridCampo12:setText("CABELO");
    obj.labUpperGridCampo12:setVertTextAlign("leading");
    obj.labUpperGridCampo12:setWordWrap(true);
    obj.labUpperGridCampo12:setTextTrimming("none");
    obj.labUpperGridCampo12:setFontSize(12);
    obj.labUpperGridCampo12:setFontColor("#D0D0D0");

    self.UpperGridCampo12:setHeight(self.edtUpperGridCampo12:getHeight() + self.labUpperGridCampo12:getHeight() + self.linUpperGridCampo12:getHeight());


    obj.flowLineBreak3 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak3:setParent(obj.fraCaracteristicasLayout);
    obj.flowLineBreak3:setName("flowLineBreak3");

    obj.flowLayout22 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout22:setParent(obj.fraCaracteristicasLayout);
    obj.flowLayout22:setAutoHeight(true);
    obj.flowLayout22:setMinScaledWidth(290);
    obj.flowLayout22:setHorzAlign("center");
    obj.flowLayout22:setLineSpacing(10);
    obj.flowLayout22:setName("flowLayout22");
    obj.flowLayout22:setStepSizes({310, 420, 640, 760, 860, 960, 1150, 1200, 1600});
    obj.flowLayout22:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowLayout22:setVertAlign("leading");

    obj.flowLayout23 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout23:setParent(obj.flowLayout22);
    obj.flowLayout23:setMaxControlsPerLine(1);
    obj.flowLayout23:setAutoHeight(true);
    obj.flowLayout23:setLineSpacing(10);
    obj.flowLayout23:setMargins({left = 4, right = 4});
    obj.flowLayout23:setName("flowLayout23");
    obj.flowLayout23:setStepSizes({});
    obj.flowLayout23:setMinWidth(300);
    obj.flowLayout23:setMaxWidth(1600);
    obj.flowLayout23:setMinScaledWidth(300);
    obj.flowLayout23:setVertAlign("leading");

    obj.flowPart57 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart57:setParent(obj.flowLayout23);
    obj.flowPart57:setHeight(390);
    obj.flowPart57:setFrameStyle("frames/panel5/frame.xml");
    obj.flowPart57:setMargins({left = 0, right = 4});
    obj.flowPart57:setName("flowPart57");
    obj.flowPart57:setStepSizes({});
    obj.flowPart57:setMinWidth(300);
    obj.flowPart57:setMaxWidth(1600);
    obj.flowPart57:setMinScaledWidth(300);
    obj.flowPart57:setVertAlign("leading");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.flowPart57);
    obj.image1:setAlign("client");
    obj.image1:setStyle("autoFit");
    obj.image1:setField("imagens.aparencia");
    obj.image1:setMargins({top=2});
    obj.image1:setEditable(true);
    lfm_setPropAsString(obj.image1, "animate",  "true");
    obj.image1:setName("image1");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.flowPart57);
    obj.label108:setAlign("bottom");
    obj.label108:setAutoSize(true);
    obj.label108:setText("APARÊNCIA");
    obj.label108:setFontSize(12);
    obj.label108:setVertTextAlign("center");
    obj.label108:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label108, "fontStyle",  "bold");
    obj.label108:setName("label108");
    obj.label108:setFontColor("white");

    obj.flowPart58 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart58:setParent(obj.flowLayout23);
    obj.flowPart58:setHeight(115);
    obj.flowPart58:setFrameStyle("frames/panel5/frame.xml");
    obj.flowPart58:setMargins({left = 4, right = 0});
    obj.flowPart58:setName("flowPart58");
    obj.flowPart58:setStepSizes({});
    obj.flowPart58:setMinWidth(300);
    obj.flowPart58:setMaxWidth(1600);
    obj.flowPart58:setMinScaledWidth(300);
    obj.flowPart58:setVertAlign("leading");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.flowPart58);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("idiomas");
    obj.textEditor1:setMargins({top=2});
    obj.textEditor1:setFontSize(16);
    obj.textEditor1:setName("textEditor1");
    obj.textEditor1:setTransparent(true);

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.flowPart58);
    obj.label109:setAlign("bottom");
    obj.label109:setAutoSize(true);
    obj.label109:setText("IDIOMAS");
    obj.label109:setFontSize(12);
    obj.label109:setVertTextAlign("center");
    obj.label109:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label109, "fontStyle",  "bold");
    obj.label109:setName("label109");
    obj.label109:setFontColor("white");

    obj.flowLayout24 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout24:setParent(obj.flowLayout22);
    obj.flowLayout24:setMaxControlsPerLine(1);
    obj.flowLayout24:setAutoHeight(true);
    obj.flowLayout24:setLineSpacing(10);
    obj.flowLayout24:setMargins({left=4, right=4});
    obj.flowLayout24:setName("flowLayout24");
    obj.flowLayout24:setStepSizes({});
    obj.flowLayout24:setMinWidth(300);
    obj.flowLayout24:setMaxWidth(1600);
    obj.flowLayout24:setMinScaledWidth(300);
    obj.flowLayout24:setVertAlign("leading");

    obj.flowPart59 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart59:setParent(obj.flowLayout24);
    obj.flowPart59:setHeight(140);
    obj.flowPart59:setFrameStyle("frames/panel5/topPanel.xml");
    obj.flowPart59:setMargins({left = 4, right = 4});
    obj.flowPart59:setName("flowPart59");
    obj.flowPart59:setStepSizes({});
    obj.flowPart59:setMinWidth(300);
    obj.flowPart59:setMaxWidth(1600);
    obj.flowPart59:setMinScaledWidth(300);
    obj.flowPart59:setVertAlign("leading");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.flowPart59);
    obj.textEditor2:setAlign("client");
    obj.textEditor2:setField("caracteristicas.tracosPersonalidade");
    obj.textEditor2:setMargins({top=2});
    obj.textEditor2:setFontSize(16);
    obj.textEditor2:setName("textEditor2");
    obj.textEditor2:setTransparent(true);

    obj.label110 = GUI.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.flowPart59);
    obj.label110:setAlign("bottom");
    obj.label110:setAutoSize(true);
    obj.label110:setText("TRAÇOS DE PERSONALIDADE");
    obj.label110:setFontSize(12);
    obj.label110:setVertTextAlign("center");
    obj.label110:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label110, "fontStyle",  "bold");
    obj.label110:setName("label110");
    obj.label110:setFontColor("white");

    obj.flowPart60 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart60:setParent(obj.flowLayout24);
    obj.flowPart60:setHeight(115);
    obj.flowPart60:setFrameStyle("frames/panel5/centerPanel.xml");
    obj.flowPart60:setMargins({left = 4, right = 4});
    obj.flowPart60:setName("flowPart60");
    obj.flowPart60:setStepSizes({});
    obj.flowPart60:setMinWidth(300);
    obj.flowPart60:setMaxWidth(1600);
    obj.flowPart60:setMinScaledWidth(300);
    obj.flowPart60:setVertAlign("leading");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.flowPart60);
    obj.textEditor3:setAlign("client");
    obj.textEditor3:setField("caracteristicas.ideais");
    obj.textEditor3:setMargins({top=2});
    obj.textEditor3:setFontSize(16);
    obj.textEditor3:setName("textEditor3");
    obj.textEditor3:setTransparent(true);

    obj.label111 = GUI.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.flowPart60);
    obj.label111:setAlign("bottom");
    obj.label111:setAutoSize(true);
    obj.label111:setText("IDEAIS");
    obj.label111:setFontSize(12);
    obj.label111:setVertTextAlign("center");
    obj.label111:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label111, "fontStyle",  "bold");
    obj.label111:setName("label111");
    obj.label111:setFontColor("white");

    obj.flowPart61 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart61:setParent(obj.flowLayout24);
    obj.flowPart61:setHeight(115);
    obj.flowPart61:setFrameStyle("frames/panel5/centerPanel.xml");
    obj.flowPart61:setMargins({left = 4, right = 4});
    obj.flowPart61:setName("flowPart61");
    obj.flowPart61:setStepSizes({});
    obj.flowPart61:setMinWidth(300);
    obj.flowPart61:setMaxWidth(1600);
    obj.flowPart61:setMinScaledWidth(300);
    obj.flowPart61:setVertAlign("leading");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.flowPart61);
    obj.textEditor4:setAlign("client");
    obj.textEditor4:setField("caracteristicas.vinculos");
    obj.textEditor4:setMargins({top=2});
    obj.textEditor4:setFontSize(16);
    obj.textEditor4:setName("textEditor4");
    obj.textEditor4:setTransparent(true);

    obj.label112 = GUI.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.flowPart61);
    obj.label112:setAlign("bottom");
    obj.label112:setAutoSize(true);
    obj.label112:setText("VÍNCULOS");
    obj.label112:setFontSize(12);
    obj.label112:setVertTextAlign("center");
    obj.label112:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label112, "fontStyle",  "bold");
    obj.label112:setName("label112");
    obj.label112:setFontColor("white");

    obj.flowPart62 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart62:setParent(obj.flowLayout24);
    obj.flowPart62:setHeight(115);
    obj.flowPart62:setFrameStyle("frames/panel5/bottomPanel.xml");
    obj.flowPart62:setMargins({left = 4, right = 4});
    obj.flowPart62:setName("flowPart62");
    obj.flowPart62:setStepSizes({});
    obj.flowPart62:setMinWidth(300);
    obj.flowPart62:setMaxWidth(1600);
    obj.flowPart62:setMinScaledWidth(300);
    obj.flowPart62:setVertAlign("leading");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.flowPart62);
    obj.textEditor5:setAlign("client");
    obj.textEditor5:setField("caracteristicas.fraquezas");
    obj.textEditor5:setMargins({top=2});
    obj.textEditor5:setFontSize(16);
    obj.textEditor5:setName("textEditor5");
    obj.textEditor5:setTransparent(true);

    obj.label113 = GUI.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.flowPart62);
    obj.label113:setAlign("bottom");
    obj.label113:setAutoSize(true);
    obj.label113:setText("FRAQUEZAS");
    obj.label113:setFontSize(12);
    obj.label113:setVertTextAlign("center");
    obj.label113:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label113, "fontStyle",  "bold");
    obj.label113:setName("label113");
    obj.label113:setFontColor("white");

    obj.flowPart63 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart63:setParent(obj.flowLayout22);
    obj.flowPart63:setHeight(515);
    obj.flowPart63:setFrameStyle("frames/panel5/frame.xml");
    obj.flowPart63:setMargins({left = 4, right = 4});
    obj.flowPart63:setName("flowPart63");
    obj.flowPart63:setStepSizes({});
    obj.flowPart63:setMinWidth(300);
    obj.flowPart63:setMaxWidth(1600);
    obj.flowPart63:setMinScaledWidth(300);
    obj.flowPart63:setVertAlign("leading");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.flowPart63);
    obj.textEditor6:setAlign("client");
    obj.textEditor6:setField("caracteristicas.caracteristicasETracoes");
    obj.textEditor6:setMargins({top=2});
    obj.textEditor6:setFontSize(16);
    obj.textEditor6:setName("textEditor6");
    obj.textEditor6:setTransparent(true);

    obj.label114 = GUI.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.flowPart63);
    obj.label114:setAlign("bottom");
    obj.label114:setAutoSize(true);
    obj.label114:setText("CARACTERÍSTICAS E TRAÇOS");
    obj.label114:setFontSize(12);
    obj.label114:setVertTextAlign("center");
    obj.label114:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label114, "fontStyle",  "bold");
    obj.label114:setName("label114");
    obj.label114:setFontColor("white");

    obj.flowLineBreak4 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak4:setParent(obj.fraCaracteristicasLayout);
    obj.flowLineBreak4:setName("flowLineBreak4");

    obj.flowLayout25 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout25:setParent(obj.fraCaracteristicasLayout);
    obj.flowLayout25:setAutoHeight(true);
    obj.flowLayout25:setMinScaledWidth(290);
    obj.flowLayout25:setHorzAlign("center");
    obj.flowLayout25:setLineSpacing(10);
    obj.flowLayout25:setMargins({top=5});
    obj.flowLayout25:setName("flowLayout25");
    obj.flowLayout25:setStepSizes({310, 420, 640, 760, 860, 960, 1150, 1200, 1600});
    obj.flowLayout25:setVertAlign("leading");

    obj.fraAliadosOrganizacoes = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.fraAliadosOrganizacoes:setParent(obj.flowLayout25);
    obj.fraAliadosOrganizacoes:setName("fraAliadosOrganizacoes");
    obj.fraAliadosOrganizacoes:setAutoHeight(true);
    obj.fraAliadosOrganizacoes:setFrameStyle("frames/panel5/frame.xml");
    obj.fraAliadosOrganizacoes:setMargins({left = 4, right = 4});
    obj.fraAliadosOrganizacoes:setHorzAlign("center");
    obj.fraAliadosOrganizacoes:setStepSizes({310, 420, 640, 760, 1150});
    obj.fraAliadosOrganizacoes:setMinScaledWidth(300);
    obj.fraAliadosOrganizacoes:setVertAlign("leading");

    obj.prtAliados = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.prtAliados:setParent(obj.fraAliadosOrganizacoes);
    obj.prtAliados:setName("prtAliados");
    obj.prtAliados:setMinWidth(300);
    obj.prtAliados:setMaxWidth(1600);
    obj.prtAliados:setMinScaledWidth(290);
    obj.prtAliados:setHeight(420);
    obj.prtAliados:setAvoidScale(true);
    obj.prtAliados:setMargins({left=1, right=1, top=2, bottom=2});
    obj.prtAliados:setVertAlign("leading");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.prtAliados);
    obj.textEditor7:setAlign("client");
    obj.textEditor7:setField("aliados.aliadosEOrganizacoes");
    obj.textEditor7:setMargins({top=2, left=4, right=4});
    obj.textEditor7:setFontSize(16);
    obj.textEditor7:setName("textEditor7");
    obj.textEditor7:setTransparent(true);

    obj.prtFaccao = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.prtFaccao:setParent(obj.fraAliadosOrganizacoes);
    obj.prtFaccao:setName("prtFaccao");
    obj.prtFaccao:setStepSizes({260, 310});
    obj.prtFaccao:setMaxScaledWidth(310);
    obj.prtFaccao:setAvoidScale(true);
    obj.prtFaccao:setHeight(350);
    obj.prtFaccao:setFrameStyle("frames/panel4transp/frame.xml");
    obj.prtFaccao:setMargins({left=4, right=4, bottom=4, top=4});
    obj.prtFaccao:setMinScaledWidth(300);
    obj.prtFaccao:setVertAlign("leading");

    obj.label115 = GUI.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.prtFaccao);
    obj.label115:setAlign("top");
    obj.label115:setHorzTextAlign("leading");
    obj.label115:setText("FACÇÃO");
    obj.label115:setFontSize(11);
    obj.label115:setFontColor("gray");
    obj.label115:setMargins({left=4, right=4});
    obj.label115:setName("label115");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.prtFaccao);
    obj.edit27:setAlign("top");
    obj.edit27:setField("aliados.faccao.nome");
    obj.edit27:setMargins({left=4, right=4});
    obj.edit27:setName("edit27");
    obj.edit27:setFontSize(15);
    obj.edit27:setFontColor("white");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.prtFaccao);
    obj.image2:setAlign("client");
    obj.image2:setField("aliados.faccao.simbolo");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setMargins({left=4, right=4});
    obj.image2:setName("image2");

    obj.label116 = GUI.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.prtFaccao);
    obj.label116:setAlign("bottom");
    obj.label116:setAutoSize(true);
    obj.label116:setText("SÍMBOLO DA FACÇÃO");
    obj.label116:setFontSize(12);
    obj.label116:setVertTextAlign("center");
    obj.label116:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label116, "fontStyle",  "bold");
    obj.label116:setName("label116");
    obj.label116:setFontColor("white");

    obj.flowLineBreak5 = GUI.fromHandle(_obj_newObject("flowLineBreak"));
    obj.flowLineBreak5:setParent(obj.fraAliadosOrganizacoes);
    obj.flowLineBreak5:setName("flowLineBreak5");

    obj.flowPart64 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart64:setParent(obj.fraAliadosOrganizacoes);
    obj.flowPart64:setMinWidth(200);
    obj.flowPart64:setMaxWidth(1800);
    obj.flowPart64:setHeight(16);
    obj.flowPart64:setName("flowPart64");
    obj.flowPart64:setMargins({left=1, right=1, top=2, bottom=2});
    obj.flowPart64:setVertAlign("leading");

    obj.label117 = GUI.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.flowPart64);
    obj.label117:setAlign("client");
    obj.label117:setAutoSize(true);
    obj.label117:setText("ALIADOS E ORGANIZAÇÕES");
    obj.label117:setFontSize(12);
    obj.label117:setVertTextAlign("center");
    obj.label117:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label117, "fontStyle",  "bold");
    obj.label117:setName("label117");
    obj.label117:setFontColor("white");

    obj.flowPart65 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart65:setParent(obj.flowLayout25);
    obj.flowPart65:setHeight(515);
    obj.flowPart65:setFrameStyle("frames/panel5/frame.xml");
    obj.flowPart65:setMargins({left = 4, right = 4});
    obj.flowPart65:setAdjustHeightToLine(true);
    obj.flowPart65:setName("flowPart65");
    obj.flowPart65:setStepSizes({310, 420, 640, 760, 1150});
    obj.flowPart65:setMinScaledWidth(300);
    obj.flowPart65:setVertAlign("leading");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.flowPart65);
    obj.textEditor8:setAlign("client");
    obj.textEditor8:setField("historia.texto");
    obj.textEditor8:setMargins({top=2});
    obj.textEditor8:setFontSize(16);
    obj.textEditor8:setName("textEditor8");
    obj.textEditor8:setTransparent(true);

    obj.label118 = GUI.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.flowPart65);
    obj.label118:setAlign("bottom");
    obj.label118:setAutoSize(true);
    obj.label118:setText("HISTÓRIA DO PERSONAGEM");
    obj.label118:setFontSize(12);
    obj.label118:setVertTextAlign("center");
    obj.label118:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label118, "fontStyle",  "bold");
    obj.label118:setName("label118");
    obj.label118:setFontColor("white");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.pgcPrincipal);
    obj.tab3:setTitle("Anotações");
    obj.tab3:setName("tab3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.tab3);
    obj.rectangle3:setName("rectangle3");
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("#40000000");
    obj.rectangle3:setXradius(10);
    obj.rectangle3:setYradius(10);

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.rectangle3);
    obj.textEditor9:setAlign("client");
    obj.textEditor9:setField("outros.anotacoes");
    obj.textEditor9:setMargins({left=2, right=2, top=2, bottom=2});
    obj.textEditor9:setName("textEditor9");
    obj.textEditor9:setTransparent(true);

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modforca = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modforcastr = "+" .. modificador;
            					else	
            						sheet.atributos.modforcastr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modforca = nil;
            					sheet.atributos.modforcastr = nil;
            				end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modforca;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.forca or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusforca = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusforcastr = "+" .. valor;
            								else
            									sheet.resistencias.bonusforcastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusforca = nil;
            								sheet.resistencias.bonusforcastr = nil;
            							end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modforca;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.atletismo or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusatletismo	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusatletismostr = "+" .. valor;
            								else
            									sheet.pericias.bonusatletismostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusatletismo = nil;
            								sheet.pericias.bonusatletismostr = nil;
            							end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.moddestreza = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.moddestrezastr = "+" .. modificador;
            					else	
            						sheet.atributos.moddestrezastr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.moddestreza = nil;
            					sheet.atributos.moddestrezastr = nil;
            				end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.moddestreza;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.destreza or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusdestreza = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusdestrezastr = "+" .. valor;
            								else
            									sheet.resistencias.bonusdestrezastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusdestreza = nil;
            								sheet.resistencias.bonusdestrezastr = nil;
            							end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.moddestreza;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.acrobacia or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusacrobacia	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusacrobaciastr = "+" .. valor;
            								else
            									sheet.pericias.bonusacrobaciastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusacrobacia = nil;
            								sheet.pericias.bonusacrobaciastr = nil;
            							end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.moddestreza;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.furtividade or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusfurtividade	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusfurtividadestr = "+" .. valor;
            								else
            									sheet.pericias.bonusfurtividadestr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusfurtividade = nil;
            								sheet.pericias.bonusfurtividadestr = nil;
            							end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.moddestreza;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.prestidigitacao or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusprestidigitacao	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusprestidigitacaostr = "+" .. valor;
            								else
            									sheet.pericias.bonusprestidigitacaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusprestidigitacao = nil;
            								sheet.pericias.bonusprestidigitacaostr = nil;
            							end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modconstituicao = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modconstituicaostr = "+" .. modificador;
            					else	
            						sheet.atributos.modconstituicaostr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modconstituicao = nil;
            					sheet.atributos.modconstituicaostr = nil;
            				end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modconstituicao;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.constituicao or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusconstituicao = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusconstituicaostr = "+" .. valor;
            								else
            									sheet.resistencias.bonusconstituicaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusconstituicao = nil;
            								sheet.resistencias.bonusconstituicaostr = nil;
            							end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modinteligencia = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modinteligenciastr = "+" .. modificador;
            					else	
            						sheet.atributos.modinteligenciastr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modinteligencia = nil;
            					sheet.atributos.modinteligenciastr = nil;
            				end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modinteligencia;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.inteligencia or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusinteligencia = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusinteligenciastr = "+" .. valor;
            								else
            									sheet.resistencias.bonusinteligenciastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusinteligencia = nil;
            								sheet.resistencias.bonusinteligenciastr = nil;
            							end;
        end, obj);

    obj._e_event12 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modinteligencia;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.arcanismo or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusarcanismo	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusarcanismostr = "+" .. valor;
            								else
            									sheet.pericias.bonusarcanismostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusarcanismo = nil;
            								sheet.pericias.bonusarcanismostr = nil;
            							end;
        end, obj);

    obj._e_event13 = obj.dataLink14:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modinteligencia;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.historia or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonushistoria	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonushistoriastr = "+" .. valor;
            								else
            									sheet.pericias.bonushistoriastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonushistoria = nil;
            								sheet.pericias.bonushistoriastr = nil;
            							end;
        end, obj);

    obj._e_event14 = obj.dataLink15:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modinteligencia;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.investigacao or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusinvestigacao	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusinvestigacaostr = "+" .. valor;
            								else
            									sheet.pericias.bonusinvestigacaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusinvestigacao = nil;
            								sheet.pericias.bonusinvestigacaostr = nil;
            							end;
        end, obj);

    obj._e_event15 = obj.dataLink16:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modinteligencia;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.natureza or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusnatureza	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusnaturezastr = "+" .. valor;
            								else
            									sheet.pericias.bonusnaturezastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusnatureza = nil;
            								sheet.pericias.bonusnaturezastr = nil;
            							end;
        end, obj);

    obj._e_event16 = obj.dataLink17:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modinteligencia;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.religiao or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusreligiao	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusreligiaostr = "+" .. valor;
            								else
            									sheet.pericias.bonusreligiaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusreligiao = nil;
            								sheet.pericias.bonusreligiaostr = nil;
            							end;
        end, obj);

    obj._e_event17 = obj.dataLink18:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modsabedoria = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modsabedoriastr = "+" .. modificador;
            					else	
            						sheet.atributos.modsabedoriastr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modsabedoria = nil;
            					sheet.atributos.modsabedoriastr = nil;
            				end;
        end, obj);

    obj._e_event18 = obj.dataLink19:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modsabedoria;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.sabedoria or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonussabedoria = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonussabedoriastr = "+" .. valor;
            								else
            									sheet.resistencias.bonussabedoriastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonussabedoria = nil;
            								sheet.resistencias.bonussabedoriastr = nil;
            							end;
        end, obj);

    obj._e_event19 = obj.dataLink20:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modsabedoria;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.adestrarAnimais or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusadestrarAnimais	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusadestrarAnimaisstr = "+" .. valor;
            								else
            									sheet.pericias.bonusadestrarAnimaisstr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusadestrarAnimais = nil;
            								sheet.pericias.bonusadestrarAnimaisstr = nil;
            							end;
        end, obj);

    obj._e_event20 = obj.dataLink21:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modsabedoria;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.intuicao or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusintuicao	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusintuicaostr = "+" .. valor;
            								else
            									sheet.pericias.bonusintuicaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusintuicao = nil;
            								sheet.pericias.bonusintuicaostr = nil;
            							end;
        end, obj);

    obj._e_event21 = obj.dataLink22:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modsabedoria;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.medicina or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusmedicina	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusmedicinastr = "+" .. valor;
            								else
            									sheet.pericias.bonusmedicinastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusmedicina = nil;
            								sheet.pericias.bonusmedicinastr = nil;
            							end;
        end, obj);

    obj._e_event22 = obj.dataLink23:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modsabedoria;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.percepcao or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonuspercepcao	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonuspercepcaostr = "+" .. valor;
            								else
            									sheet.pericias.bonuspercepcaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonuspercepcao = nil;
            								sheet.pericias.bonuspercepcaostr = nil;
            							end;
        end, obj);

    obj._e_event23 = obj.dataLink24:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modsabedoria;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.sobrevivencia or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonussobrevivencia	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonussobrevivenciastr = "+" .. valor;
            								else
            									sheet.pericias.bonussobrevivenciastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonussobrevivencia = nil;
            								sheet.pericias.bonussobrevivenciastr = nil;
            							end;
        end, obj);

    obj._e_event24 = obj.dataLink25:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modcarisma = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modcarismastr = "+" .. modificador;
            					else	
            						sheet.atributos.modcarismastr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modcarisma = nil;
            					sheet.atributos.modcarismastr = nil;
            				end;
        end, obj);

    obj._e_event25 = obj.dataLink26:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modcarisma;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.carisma or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonuscarisma = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonuscarismastr = "+" .. valor;
            								else
            									sheet.resistencias.bonuscarismastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonuscarisma = nil;
            								sheet.resistencias.bonuscarismastr = nil;
            							end;
        end, obj);

    obj._e_event26 = obj.dataLink27:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modcarisma;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.atuacao or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusatuacao	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusatuacaostr = "+" .. valor;
            								else
            									sheet.pericias.bonusatuacaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusatuacao = nil;
            								sheet.pericias.bonusatuacaostr = nil;
            							end;
        end, obj);

    obj._e_event27 = obj.dataLink28:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modcarisma;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.enganacao or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusenganacao	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusenganacaostr = "+" .. valor;
            								else
            									sheet.pericias.bonusenganacaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusenganacao = nil;
            								sheet.pericias.bonusenganacaostr = nil;
            							end;
        end, obj);

    obj._e_event28 = obj.dataLink29:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modcarisma;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.intimidacao or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonusintimidacao	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonusintimidacaostr = "+" .. valor;
            								else
            									sheet.pericias.bonusintimidacaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonusintimidacao = nil;
            								sheet.pericias.bonusintimidacaostr = nil;
            							end;
        end, obj);

    obj._e_event29 = obj.dataLink30:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temPericia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modcarisma;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.pericias ~= nil then
            								temPericia = sheet.pericias.persuasao or false;
            							else
            								temPericia = false;
            								sheet.pericias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temPericia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.pericias.bonuspersuasao	= valor;
            								
            								if valor >= 0 then
            									sheet.pericias.bonuspersuasaostr = "+" .. valor;
            								else
            									sheet.pericias.bonuspersuasaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.pericias.bonuspersuasao = nil;
            								sheet.pericias.bonuspersuasaostr = nil;
            							end;
        end, obj);

    obj._e_event30 = obj.dataLink31:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modadivinhacao = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modadivinhacaostr = "+" .. modificador;
            					else	
            						sheet.atributos.modadivinhacaostr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modadivinhacao = nil;
            					sheet.atributos.modadivinhacaostr = nil;
            				end;
        end, obj);

    obj._e_event31 = obj.dataLink32:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modadivinhacao;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.adivinhacao or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusadivinhacao = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusadivinhacaostr = "+" .. valor;
            								else
            									sheet.resistencias.bonusadivinhacaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusadivinhacao = nil;
            								sheet.resistencias.bonusadivinhacaostr = nil;
            							end;
        end, obj);

    obj._e_event32 = obj.dataLink33:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modquadribol = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modquadribolstr = "+" .. modificador;
            					else	
            						sheet.atributos.modquadribolstr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modquadribol = nil;
            					sheet.atributos.modquadribolstr = nil;
            				end;
        end, obj);

    obj._e_event33 = obj.dataLink34:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modquadribol;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.quadribol or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusquadribol = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusquadribolstr = "+" .. valor;
            								else
            									sheet.resistencias.bonusquadribolstr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusquadribol = nil;
            								sheet.resistencias.bonusquadribolstr = nil;
            							end;
        end, obj);

    obj._e_event34 = obj.dataLink35:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modpocoes = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modpocoesstr = "+" .. modificador;
            					else	
            						sheet.atributos.modpocoesstr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modpocoes = nil;
            					sheet.atributos.modpocoesstr = nil;
            				end;
        end, obj);

    obj._e_event35 = obj.dataLink36:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modpocoes;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.pocoes or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonuspocoes = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonuspocoesstr = "+" .. valor;
            								else
            									sheet.resistencias.bonuspocoesstr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonuspocoes = nil;
            								sheet.resistencias.bonuspocoesstr = nil;
            							end;
        end, obj);

    obj._e_event36 = obj.dataLink37:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modavaracao = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modavaracaostr = "+" .. modificador;
            					else	
            						sheet.atributos.modavaracaostr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modavaracao = nil;
            					sheet.atributos.modavaracaostr = nil;
            				end;
        end, obj);

    obj._e_event37 = obj.dataLink38:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modavaracao;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.avaracao or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusavaracao = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusavaracaostr = "+" .. valor;
            								else
            									sheet.resistencias.bonusavaracaostr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusavaracao = nil;
            								sheet.resistencias.bonusavaracaostr = nil;
            							end;
        end, obj);

    obj._e_event38 = obj.dataLink39:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modrunas = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modrunasstr = "+" .. modificador;
            					else	
            						sheet.atributos.modrunasstr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modrunas = nil;
            					sheet.atributos.modrunasstr = nil;
            				end;
        end, obj);

    obj._e_event39 = obj.dataLink40:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modrunas;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.runas or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusrunas = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusrunasstr = "+" .. valor;
            								else
            									sheet.resistencias.bonusrunasstr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusrunas = nil;
            								sheet.resistencias.bonusrunasstr = nil;
            							end;
        end, obj);

    obj._e_event40 = obj.dataLink41:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modherbologia = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modherbologiastr = "+" .. modificador;
            					else	
            						sheet.atributos.modherbologiastr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modherbologia = nil;
            					sheet.atributos.modherbologiastr = nil;
            				end;
        end, obj);

    obj._e_event41 = obj.dataLink42:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modherbologia;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.herbologia or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusherbologia = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusherbologiastr = "+" .. valor;
            								else
            									sheet.resistencias.bonusherbologiastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusherbologia = nil;
            								sheet.resistencias.bonusherbologiastr = nil;
            							end;
        end, obj);

    obj._e_event42 = obj.dataLink43:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modaritmancia = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modaritmanciastr = "+" .. modificador;
            					else	
            						sheet.atributos.modaritmanciastr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modaritmancia = nil;
            					sheet.atributos.modaritmanciastr = nil;
            				end;
        end, obj);

    obj._e_event43 = obj.dataLink44:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modaritmancia;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.aritmancia or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusaritmancia = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusaritmanciastr = "+" .. valor;
            								else
            									sheet.resistencias.bonusaritmanciastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusaritmancia = nil;
            								sheet.resistencias.bonusaritmanciastr = nil;
            							end;
        end, obj);

    obj._e_event44 = obj.dataLink45:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local numAsStr = tostring(newValue);
            				local numero;
            				
            				if numAsStr ~= "" then
            					numero = tonumber(newValue);
            				else
            					numero = nil;
            				end;
            
            				if type(sheet.atributos) ~= 'table' then
            					sheet.atributos = {};
            				end;				
            				
            				if type(numero) == 'number' then
            					local modificador = math.floor(numero / 2) - 5;								
            					sheet.atributos.modoclumencia = modificador;	
            				
            					if modificador >= 0 then
            						sheet.atributos.modoclumenciastr = "+" .. modificador;
            					else	
            						sheet.atributos.modoclumenciastr = "-" .. math.abs(modificador);
            					end;	
            				else
            					sheet.atributos.modoclumencia = nil;
            					sheet.atributos.modoclumenciastr = nil;
            				end;
        end, obj);

    obj._e_event45 = obj.dataLink46:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local modificador;
            							local temResistencia;
            									
            							if sheet.atributos ~= nil then
            								modificador = sheet.atributos.modoclumencia;
            								
            								if modificador ~= nil then
            									modificador = tonumber(modificador);
            								end;
            							else
            								modificador = nil;
            							end;
            							
            							if sheet.resistencias ~= nil then
            								temResistencia = sheet.resistencias.oclumencia or false;
            							else
            								temResistencia = false;
            								sheet.resistencias = {};
            							end;
            													
            							
            							if modificador ~= nil then
            								local valor;
            							
            								if temResistencia then
            									valor = modificador	+ (tonumber(sheet.bonusProficiencia) or 0)						
            								else
            									valor = modificador;
            								end;								
            								
            								valor = math.tointeger(valor);
            								
            								sheet.resistencias.bonusoclumencia = valor;
            								
            								if valor >= 0 then
            									sheet.resistencias.bonusoclumenciastr = "+" .. valor;
            								else
            									sheet.resistencias.bonusoclumenciastr = "-" .. math.abs(valor);
            								end;
            							else
            								sheet.resistencias.bonusoclumencia = nil;
            								sheet.resistencias.bonusoclumenciastr = nil;
            							end;
        end, obj);

    obj._e_event46 = obj.fraAliadosOrganizacoes:addEventListener("onBeforeLayoutCalc",
        function (_)
            if self.fraAliadosOrganizacoes:getWidth() <= 500 then
            									self.prtAliados:setHeight(200);
            									self.prtFaccao:setHeight(200);									
            								else
            									self.prtAliados:setHeight(420);
            									self.prtFaccao:setHeight(350);
            								end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.linUpperGridCampo1 ~= nil then self.linUpperGridCampo1:destroy(); self.linUpperGridCampo1 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.labUpperGridCampo2 ~= nil then self.labUpperGridCampo2:destroy(); self.labUpperGridCampo2 = nil; end;
        if self.horzLine11 ~= nil then self.horzLine11:destroy(); self.horzLine11 = nil; end;
        if self.flowPart33 ~= nil then self.flowPart33:destroy(); self.flowPart33 = nil; end;
        if self.flowLayout24 ~= nil then self.flowLayout24:destroy(); self.flowLayout24 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.labUpperGridCampo1 ~= nil then self.labUpperGridCampo1:destroy(); self.labUpperGridCampo1 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.flowPart32 ~= nil then self.flowPart32:destroy(); self.flowPart32 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.flowLayout19 ~= nil then self.flowLayout19:destroy(); self.flowLayout19 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.flowPart13 ~= nil then self.flowPart13:destroy(); self.flowPart13 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.prtAliados ~= nil then self.prtAliados:destroy(); self.prtAliados = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.horzLine14 ~= nil then self.horzLine14:destroy(); self.horzLine14 = nil; end;
        if self.flowPart25 ~= nil then self.flowPart25:destroy(); self.flowPart25 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.flowPart19 ~= nil then self.flowPart19:destroy(); self.flowPart19 = nil; end;
        if self.flowPart55 ~= nil then self.flowPart55:destroy(); self.flowPart55 = nil; end;
        if self.horzLine19 ~= nil then self.horzLine19:destroy(); self.horzLine19 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.flowLayout16 ~= nil then self.flowLayout16:destroy(); self.flowLayout16 = nil; end;
        if self.flowPart51 ~= nil then self.flowPart51:destroy(); self.flowPart51 = nil; end;
        if self.linUpperGridCampo7 ~= nil then self.linUpperGridCampo7:destroy(); self.linUpperGridCampo7 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.labUpperGridCampo11 ~= nil then self.labUpperGridCampo11:destroy(); self.labUpperGridCampo11 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.horzLine30 ~= nil then self.horzLine30:destroy(); self.horzLine30 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.fraCaracteristicasLayout ~= nil then self.fraCaracteristicasLayout:destroy(); self.fraCaracteristicasLayout = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.labUpperGridCampo5 ~= nil then self.labUpperGridCampo5:destroy(); self.labUpperGridCampo5 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.flowPart34 ~= nil then self.flowPart34:destroy(); self.flowPart34 = nil; end;
        if self.flowPart54 ~= nil then self.flowPart54:destroy(); self.flowPart54 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.flowLayout23 ~= nil then self.flowLayout23:destroy(); self.flowLayout23 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.flowPart53 ~= nil then self.flowPart53:destroy(); self.flowPart53 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.flowPart43 ~= nil then self.flowPart43:destroy(); self.flowPart43 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.flowPart57 ~= nil then self.flowPart57:destroy(); self.flowPart57 = nil; end;
        if self.fraUpperGridFrente ~= nil then self.fraUpperGridFrente:destroy(); self.fraUpperGridFrente = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.fraUpperGridCaracteristicas ~= nil then self.fraUpperGridCaracteristicas:destroy(); self.fraUpperGridCaracteristicas = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.flowLineBreak5 ~= nil then self.flowLineBreak5:destroy(); self.flowLineBreak5 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.flowPart22 ~= nil then self.flowPart22:destroy(); self.flowPart22 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.flowPart59 ~= nil then self.flowPart59:destroy(); self.flowPart59 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.flowLayout14 ~= nil then self.flowLayout14:destroy(); self.flowLayout14 = nil; end;
        if self.UpperGridCampo3 ~= nil then self.UpperGridCampo3:destroy(); self.UpperGridCampo3 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.flowPart6 ~= nil then self.flowPart6:destroy(); self.flowPart6 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.flowPart39 ~= nil then self.flowPart39:destroy(); self.flowPart39 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.labUpperGridCampo10 ~= nil then self.labUpperGridCampo10:destroy(); self.labUpperGridCampo10 = nil; end;
        if self.flowPart60 ~= nil then self.flowPart60:destroy(); self.flowPart60 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.flowPart28 ~= nil then self.flowPart28:destroy(); self.flowPart28 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.linUpperGridCampo4 ~= nil then self.linUpperGridCampo4:destroy(); self.linUpperGridCampo4 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.UpperGridCampo6 ~= nil then self.UpperGridCampo6:destroy(); self.UpperGridCampo6 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.flowLineBreak2 ~= nil then self.flowLineBreak2:destroy(); self.flowLineBreak2 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.flowPart15 ~= nil then self.flowPart15:destroy(); self.flowPart15 = nil; end;
        if self.flowLayout8 ~= nil then self.flowLayout8:destroy(); self.flowLayout8 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.UpperGridCampo5 ~= nil then self.UpperGridCampo5:destroy(); self.UpperGridCampo5 = nil; end;
        if self.UpperGridCampo10 ~= nil then self.UpperGridCampo10:destroy(); self.UpperGridCampo10 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.flowPart8 ~= nil then self.flowPart8:destroy(); self.flowPart8 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.flowPart10 ~= nil then self.flowPart10:destroy(); self.flowPart10 = nil; end;
        if self.horzLine29 ~= nil then self.horzLine29:destroy(); self.horzLine29 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.labUpperGridCampo12 ~= nil then self.labUpperGridCampo12:destroy(); self.labUpperGridCampo12 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.flowLayout18 ~= nil then self.flowLayout18:destroy(); self.flowLayout18 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.flowPart40 ~= nil then self.flowPart40:destroy(); self.flowPart40 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.edtUpperGridCampo8 ~= nil then self.edtUpperGridCampo8:destroy(); self.edtUpperGridCampo8 = nil; end;
        if self.flowLayout15 ~= nil then self.flowLayout15:destroy(); self.flowLayout15 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.flowLayout12 ~= nil then self.flowLayout12:destroy(); self.flowLayout12 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.flowPart18 ~= nil then self.flowPart18:destroy(); self.flowPart18 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.edtNome1 ~= nil then self.edtNome1:destroy(); self.edtNome1 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.horzLine23 ~= nil then self.horzLine23:destroy(); self.horzLine23 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.horzLine22 ~= nil then self.horzLine22:destroy(); self.horzLine22 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.flowPart48 ~= nil then self.flowPart48:destroy(); self.flowPart48 = nil; end;
        if self.flowLayout20 ~= nil then self.flowLayout20:destroy(); self.flowLayout20 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.frame1 ~= nil then self.frame1:destroy(); self.frame1 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.flowLayout25 ~= nil then self.flowLayout25:destroy(); self.flowLayout25 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.flowPart35 ~= nil then self.flowPart35:destroy(); self.flowPart35 = nil; end;
        if self.flowLayout7 ~= nil then self.flowLayout7:destroy(); self.flowLayout7 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.flowPart4 ~= nil then self.flowPart4:destroy(); self.flowPart4 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.flowLayout10 ~= nil then self.flowLayout10:destroy(); self.flowLayout10 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.labUpperGridCampo4 ~= nil then self.labUpperGridCampo4:destroy(); self.labUpperGridCampo4 = nil; end;
        if self.labUpperGridCampo3 ~= nil then self.labUpperGridCampo3:destroy(); self.labUpperGridCampo3 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.flowLayout4 ~= nil then self.flowLayout4:destroy(); self.flowLayout4 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edtUpperGridCampo10 ~= nil then self.edtUpperGridCampo10:destroy(); self.edtUpperGridCampo10 = nil; end;
        if self.frame2 ~= nil then self.frame2:destroy(); self.frame2 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.edtUpperGridCampo7 ~= nil then self.edtUpperGridCampo7:destroy(); self.edtUpperGridCampo7 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.horzLine20 ~= nil then self.horzLine20:destroy(); self.horzLine20 = nil; end;
        if self.horzLine31 ~= nil then self.horzLine31:destroy(); self.horzLine31 = nil; end;
        if self.flowLayout2 ~= nil then self.flowLayout2:destroy(); self.flowLayout2 = nil; end;
        if self.layNomeHolderFrente ~= nil then self.layNomeHolderFrente:destroy(); self.layNomeHolderFrente = nil; end;
        if self.fraLayAtributos ~= nil then self.fraLayAtributos:destroy(); self.fraLayAtributos = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.labUpperGridCampo6 ~= nil then self.labUpperGridCampo6:destroy(); self.labUpperGridCampo6 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.flowPart3 ~= nil then self.flowPart3:destroy(); self.flowPart3 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.horzLine26 ~= nil then self.horzLine26:destroy(); self.horzLine26 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.flowPart37 ~= nil then self.flowPart37:destroy(); self.flowPart37 = nil; end;
        if self.UpperGridCampo2 ~= nil then self.UpperGridCampo2:destroy(); self.UpperGridCampo2 = nil; end;
        if self.flowPart45 ~= nil then self.flowPart45:destroy(); self.flowPart45 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.edtUpperGridCampo1 ~= nil then self.edtUpperGridCampo1:destroy(); self.edtUpperGridCampo1 = nil; end;
        if self.flowPart24 ~= nil then self.flowPart24:destroy(); self.flowPart24 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.flowLayout22 ~= nil then self.flowLayout22:destroy(); self.flowLayout22 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.fraFrenteLayout ~= nil then self.fraFrenteLayout:destroy(); self.fraFrenteLayout = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.UpperGridCampo1 ~= nil then self.UpperGridCampo1:destroy(); self.UpperGridCampo1 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.flowLayout13 ~= nil then self.flowLayout13:destroy(); self.flowLayout13 = nil; end;
        if self.linUpperGridCampo8 ~= nil then self.linUpperGridCampo8:destroy(); self.linUpperGridCampo8 = nil; end;
        if self.flowPart42 ~= nil then self.flowPart42:destroy(); self.flowPart42 = nil; end;
        if self.UpperGridCampo4 ~= nil then self.UpperGridCampo4:destroy(); self.UpperGridCampo4 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.flowLayout5 ~= nil then self.flowLayout5:destroy(); self.flowLayout5 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.linUpperGridCampo9 ~= nil then self.linUpperGridCampo9:destroy(); self.linUpperGridCampo9 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edtUpperGridCampo5 ~= nil then self.edtUpperGridCampo5:destroy(); self.edtUpperGridCampo5 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.flowPart16 ~= nil then self.flowPart16:destroy(); self.flowPart16 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.flowPart52 ~= nil then self.flowPart52:destroy(); self.flowPart52 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.flowPart38 ~= nil then self.flowPart38:destroy(); self.flowPart38 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.linUpperGridCampo5 ~= nil then self.linUpperGridCampo5:destroy(); self.linUpperGridCampo5 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.flowPart20 ~= nil then self.flowPart20:destroy(); self.flowPart20 = nil; end;
        if self.flowPart44 ~= nil then self.flowPart44:destroy(); self.flowPart44 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.horzLine28 ~= nil then self.horzLine28:destroy(); self.horzLine28 = nil; end;
        if self.horzLine34 ~= nil then self.horzLine34:destroy(); self.horzLine34 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.labUpperGridCampo9 ~= nil then self.labUpperGridCampo9:destroy(); self.labUpperGridCampo9 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.flowPart5 ~= nil then self.flowPart5:destroy(); self.flowPart5 = nil; end;
        if self.flowPart9 ~= nil then self.flowPart9:destroy(); self.flowPart9 = nil; end;
        if self.edtUpperGridCampo9 ~= nil then self.edtUpperGridCampo9:destroy(); self.edtUpperGridCampo9 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edtUpperGridCampo3 ~= nil then self.edtUpperGridCampo3:destroy(); self.edtUpperGridCampo3 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.flowPart29 ~= nil then self.flowPart29:destroy(); self.flowPart29 = nil; end;
        if self.horzLine33 ~= nil then self.horzLine33:destroy(); self.horzLine33 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.linUpperGridCampo2 ~= nil then self.linUpperGridCampo2:destroy(); self.linUpperGridCampo2 = nil; end;
        if self.flowPart56 ~= nil then self.flowPart56:destroy(); self.flowPart56 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.flowPart26 ~= nil then self.flowPart26:destroy(); self.flowPart26 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.flowPart23 ~= nil then self.flowPart23:destroy(); self.flowPart23 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.horzLine16 ~= nil then self.horzLine16:destroy(); self.horzLine16 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.horzLine25 ~= nil then self.horzLine25:destroy(); self.horzLine25 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.flowLayout6 ~= nil then self.flowLayout6:destroy(); self.flowLayout6 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.pgcPrincipal ~= nil then self.pgcPrincipal:destroy(); self.pgcPrincipal = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.flowPart41 ~= nil then self.flowPart41:destroy(); self.flowPart41 = nil; end;
        if self.flowPart30 ~= nil then self.flowPart30:destroy(); self.flowPart30 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.linUpperGridCampo11 ~= nil then self.linUpperGridCampo11:destroy(); self.linUpperGridCampo11 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.edtUpperGridCampo4 ~= nil then self.edtUpperGridCampo4:destroy(); self.edtUpperGridCampo4 = nil; end;
        if self.flowPart49 ~= nil then self.flowPart49:destroy(); self.flowPart49 = nil; end;
        if self.flowPart62 ~= nil then self.flowPart62:destroy(); self.flowPart62 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.flowPart14 ~= nil then self.flowPart14:destroy(); self.flowPart14 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.UpperGridCampo11 ~= nil then self.UpperGridCampo11:destroy(); self.UpperGridCampo11 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.flowLayout3 ~= nil then self.flowLayout3:destroy(); self.flowLayout3 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.flowPart7 ~= nil then self.flowPart7:destroy(); self.flowPart7 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.flowPart46 ~= nil then self.flowPart46:destroy(); self.flowPart46 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.edtUpperGridCampo2 ~= nil then self.edtUpperGridCampo2:destroy(); self.edtUpperGridCampo2 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.flowPart2 ~= nil then self.flowPart2:destroy(); self.flowPart2 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.flowPart50 ~= nil then self.flowPart50:destroy(); self.flowPart50 = nil; end;
        if self.horzLine21 ~= nil then self.horzLine21:destroy(); self.horzLine21 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.horzLine17 ~= nil then self.horzLine17:destroy(); self.horzLine17 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.horzLine27 ~= nil then self.horzLine27:destroy(); self.horzLine27 = nil; end;
        if self.flowPart47 ~= nil then self.flowPart47:destroy(); self.flowPart47 = nil; end;
        if self.flowPart31 ~= nil then self.flowPart31:destroy(); self.flowPart31 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.UpperGridCampo8 ~= nil then self.UpperGridCampo8:destroy(); self.UpperGridCampo8 = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.labUpperGridCampo8 ~= nil then self.labUpperGridCampo8:destroy(); self.labUpperGridCampo8 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.linUpperGridCampo12 ~= nil then self.linUpperGridCampo12:destroy(); self.linUpperGridCampo12 = nil; end;
        if self.UpperGridCampo7 ~= nil then self.UpperGridCampo7:destroy(); self.UpperGridCampo7 = nil; end;
        if self.fraAliadosOrganizacoes ~= nil then self.fraAliadosOrganizacoes:destroy(); self.fraAliadosOrganizacoes = nil; end;
        if self.flowPart12 ~= nil then self.flowPart12:destroy(); self.flowPart12 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.flowPart64 ~= nil then self.flowPart64:destroy(); self.flowPart64 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.edtUpperGridCampo11 ~= nil then self.edtUpperGridCampo11:destroy(); self.edtUpperGridCampo11 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.flowLayout9 ~= nil then self.flowLayout9:destroy(); self.flowLayout9 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.flowLayout17 ~= nil then self.flowLayout17:destroy(); self.flowLayout17 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.flowLineBreak1 ~= nil then self.flowLineBreak1:destroy(); self.flowLineBreak1 = nil; end;
        if self.horzLine12 ~= nil then self.horzLine12:destroy(); self.horzLine12 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.labUpperGridCampo7 ~= nil then self.labUpperGridCampo7:destroy(); self.labUpperGridCampo7 = nil; end;
        if self.flowLayout21 ~= nil then self.flowLayout21:destroy(); self.flowLayout21 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.flowLineBreak3 ~= nil then self.flowLineBreak3:destroy(); self.flowLineBreak3 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.flowLayout11 ~= nil then self.flowLayout11:destroy(); self.flowLayout11 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.horzLine32 ~= nil then self.horzLine32:destroy(); self.horzLine32 = nil; end;
        if self.prtFaccao ~= nil then self.prtFaccao:destroy(); self.prtFaccao = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.flowPart63 ~= nil then self.flowPart63:destroy(); self.flowPart63 = nil; end;
        if self.labNome1 ~= nil then self.labNome1:destroy(); self.labNome1 = nil; end;
        if self.horzLine18 ~= nil then self.horzLine18:destroy(); self.horzLine18 = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.flowPart11 ~= nil then self.flowPart11:destroy(); self.flowPart11 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.flowPart36 ~= nil then self.flowPart36:destroy(); self.flowPart36 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.horzLine15 ~= nil then self.horzLine15:destroy(); self.horzLine15 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.edtUpperGridCampo6 ~= nil then self.edtUpperGridCampo6:destroy(); self.edtUpperGridCampo6 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.linUpperGridCampo10 ~= nil then self.linUpperGridCampo10:destroy(); self.linUpperGridCampo10 = nil; end;
        if self.linUpperGridCampo6 ~= nil then self.linUpperGridCampo6:destroy(); self.linUpperGridCampo6 = nil; end;
        if self.flowPart17 ~= nil then self.flowPart17:destroy(); self.flowPart17 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.UpperGridCampo12 ~= nil then self.UpperGridCampo12:destroy(); self.UpperGridCampo12 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.flowPart61 ~= nil then self.flowPart61:destroy(); self.flowPart61 = nil; end;
        if self.flowPart27 ~= nil then self.flowPart27:destroy(); self.flowPart27 = nil; end;
        if self.flowPart58 ~= nil then self.flowPart58:destroy(); self.flowPart58 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.UpperGridCampo9 ~= nil then self.UpperGridCampo9:destroy(); self.UpperGridCampo9 = nil; end;
        if self.flowPart65 ~= nil then self.flowPart65:destroy(); self.flowPart65 = nil; end;
        if self.linUpperGridCampo3 ~= nil then self.linUpperGridCampo3:destroy(); self.linUpperGridCampo3 = nil; end;
        if self.flwNome1 ~= nil then self.flwNome1:destroy(); self.flwNome1 = nil; end;
        if self.flowPart21 ~= nil then self.flowPart21:destroy(); self.flowPart21 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.horzLine13 ~= nil then self.horzLine13:destroy(); self.horzLine13 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.horzLine24 ~= nil then self.horzLine24:destroy(); self.horzLine24 = nil; end;
        if self.flowLineBreak4 ~= nil then self.flowLineBreak4:destroy(); self.flowLineBreak4 = nil; end;
        if self.edtUpperGridCampo12 ~= nil then self.edtUpperGridCampo12:destroy(); self.edtUpperGridCampo12 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newETERNOS_NOME()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_ETERNOS_NOME();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _ETERNOS_NOME = {
    newEditor = newETERNOS_NOME, 
    new = newETERNOS_NOME, 
    name = "ETERNOS_NOME", 
    dataType = "ETERNOS_FICHA", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Eternos", 
    description=""};

ETERNOS_NOME = _ETERNOS_NOME;
Firecast.registrarForm(_ETERNOS_NOME);
Firecast.registrarDataType(_ETERNOS_NOME);

return _ETERNOS_NOME;
