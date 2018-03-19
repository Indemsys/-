unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxMRUEdit, Vcl.ComCtrls,
  Winapi.ShlObj, cxShellCommon, cxShellComboBox, cxTreeView, cxShellTreeView, cxListView, cxShellListView, dxCameraControl, cxClasses, cxPropertiesStore,
  Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCtrls, Xml.xmldom, Xml.XmlTransform, Vcl.ExtCtrls,
  System.RegularExpressions, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreHistory, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks,
  dxSpreadSheetFunctions, dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxSkinscxPCPainter, dxBarBuiltInMenu,
  dxSpreadSheet, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, dxmdaset, System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, cxPC, System.Diagnostics, System.TimeSpan, Vcl.Menus,
  Data.Win.ADODB;

type
  TfrmMain = class(TForm)
    cxPropertiesStore: TcxPropertiesStore;
    Panel1: TPanel;
    InputMemo: TMemo;
    feOutputFile: TFilenameEdit;
    feInputFile: TFilenameEdit;
    RxLabel1: TRxLabel;
    lblInputFile: TRxLabel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    edRegExpression: TEdit;
    RxLabel3: TRxLabel;
    cbSingleLine: TCheckBox;
    Panel2: TPanel;
    btnLoad: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    gridRegEx: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridRegExItems: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridRegExRegExID: TcxGridDBColumn;
    gridRegExNr: TcxGridDBColumn;
    gridRegExDescription: TcxGridDBColumn;
    gridRegExItemsRegExItemID: TcxGridDBColumn;
    gridRegExItemsRegExID: TcxGridDBColumn;
    gridRegExItemsNr: TcxGridDBColumn;
    gridRegExItemsContent: TcxGridDBColumn;
    gridRegExItemsComment: TcxGridDBColumn;
    RxLabel2: TRxLabel;
    RxLabel4: TRxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxImageList: TcxImageList;
    btnSave: TButton;
    cxImageListSmall: TcxImageList;
    pctlResults: TcxPageControl;
    tsMemoResults: TcxTabSheet;
    tsTableResults: TcxTabSheet;
    memoResults: TMemo;
    lbInfo: TLabel;
    Button1: TButton;
    Panel7: TPanel;
    edDelimeter: TEdit;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    menuFont: TMenuItem;
    FontDialog: TFontDialog;
    N1Font: TMenuItem;
    Panel8: TPanel;
    btnCreateRegEx: TButton;
    btnOpenRegExRef: TButton;
    btnCopyRegEx: TButton;
    procedure btnExecClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure menuFontClick(Sender: TObject);
    procedure btnCreateRegExClick(Sender: TObject);
    procedure btnOpenRegExRefClick(Sender: TObject);
    procedure btnCopyRegExClick(Sender: TObject);
  private
    matched_lines_cnt: integer;
    time_elapsed: integer;
    procedure ExecRegExprByLines(instr: TStringList);
    procedure ExecRegExpressionOnFullData(instr: TStringList);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses DataModule, RegExRef;

procedure TfrmMain.btnCopyRegExClick(Sender: TObject);
var
  id: variant;
  dts: TADOTable;
  dtsi: TADOTable;
begin
  dts := TADOTable.Create(Self);
  try
    dts.Clone(dm.tblRegExs);
    dts.Append;
    dts.Fields[1].value := dm.tblRegExs.Fields[1].value;
    dts.Fields[2].AsString := dm.tblRegExs.Fields[2].AsString + '(Copy)';
    dts.Post;
    id := dts.Fields[0].value;
    dtsi := TADOTable.Create(Self);
    try
      dtsi.Clone(dm.tblRegEx_items);
      dm.tblRegEx_items.First;
      while not dm.tblRegEx_items.Eof do
      begin
        dtsi.Append;
        dtsi.Fields[1].value := id;
        dtsi.Fields[2].value := dm.tblRegEx_items.Fields[2].value;
        dtsi.Fields[3].value := dm.tblRegEx_items.Fields[3].value;
        dtsi.Fields[4].value := dm.tblRegEx_items.Fields[4].value;
        dtsi.Post;
        dm.tblRegEx_items.Next;
      end;
    finally
      dtsi.Free;
    end;
  finally
    dm.tblRegEx_items.Refresh;
    dm.tblRegExs.Refresh;
    dts.Free;
  end;
end;

procedure TfrmMain.btnCreateRegExClick(Sender: TObject);
var
  str: string;
begin
  dm.tblRegEx_items.DisableControls;
  try
    // dm.tblRegEx_items.Sort := 'Nr ASC';
    str := '';
    dm.tblRegEx_items.First;
    while not dm.tblRegEx_items.Eof do
    begin
      str := str + dm.tblRegEx_itemsContent.AsString;
      dm.tblRegEx_items.Next;
    end;
    edRegExpression.Text := str;

  finally
    dm.tblRegEx_items.EnableControls;
  end;
end;

procedure TfrmMain.btnLoadClick(Sender: TObject);
begin
  InputMemo.Clear;
  InputMemo.Lines.LoadFromFile(feInputFile.Text);
end;

procedure TfrmMain.btnOpenRegExRefClick(Sender: TObject);
begin
  frmRegExRef := TfrmRegExRef.Create(Self);
  frmRegExRef.Show;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
begin
  if pctlResults.ActivePage = tsMemoResults then
  begin
    memoResults.Lines.SaveToFile(feOutputFile.Text);
  end;
end;

procedure TfrmMain.ExecRegExprByLines(instr: TStringList);
var
  k: integer;
  i: integer;
  j: integer;
  str: string;
  regex: TRegEx;
  mcol: TMatchCollection;
begin
  memoResults.Lines.Clear;
  // Обрабатываем посторочно
  regex.Create(edRegExpression.Text);
  try
    memoResults.Lines.BeginUpdate;
    for k := 0 to instr.Count - 1 do
    begin
      mcol := regex.Matches(instr[k]);
      // Обрабатываем строку
      if pctlResults.ActivePage = tsMemoResults then
      begin
        for i := 0 to mcol.Count - 1 do
        begin
          str := '';
          for j := 1 to mcol.Item[i].Groups.Count - 1 do
          begin
            if j > 1 then
              str := str + edDelimeter.Text;
            str := str + mcol.Item[i].Groups.Item[j].value;
          end;
          if str <> '' then
          begin
            memoResults.Lines.Append(str);
            inc(matched_lines_cnt);
          end;
        end;
      end;
    end;
  finally
    memoResults.Lines.EndUpdate;
  end;
end;

procedure TfrmMain.ExecRegExpressionOnFullData(instr: TStringList);
var
  k: integer;
  i: integer;
  j: integer;
  str: string;
  regex: TRegEx;
  mcol: TMatchCollection;
begin
  memoResults.Lines.Clear;

  // Обрабатываем все как одну строку
  regex.Create(edRegExpression.Text, [roSingleLine]);
  try
    mcol := regex.Matches(instr.Text);
    memoResults.Lines.BeginUpdate;
    // Обрабатываем все данные сразу
    if pctlResults.ActivePage = tsMemoResults then
    begin
      for i := 0 to mcol.Count - 1 do
      begin
        str := '';
        for j := 1 to mcol.Item[i].Groups.Count - 1 do
        begin
          if j > 1 then
            str := str + edDelimeter.Text;
          str := str + mcol.Item[i].Groups.Item[j].value;
        end;
        if str <> '' then
        begin
          memoResults.Lines.Append(str);
          inc(matched_lines_cnt);
        end;
      end;
    end;
  finally
    memoResults.Lines.EndUpdate;
  end;
end;

procedure TfrmMain.btnExecClick(Sender: TObject);
var
  instr: TStringList;
  save_curs: Tcursor;
  Stopwatch: TStopwatch;
  Elapsed: TTimeSpan;

begin

  instr := TStringList.Create;
  save_curs := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  matched_lines_cnt := 0;
  Stopwatch := TStopwatch.StartNew;
  try
    instr.Text := InputMemo.Lines.Text;
    if cbSingleLine.Checked then
    begin
      ExecRegExpressionOnFullData(instr);
    end
    else
    begin
      ExecRegExprByLines(instr);
    end;

  finally
    Screen.Cursor := save_curs;
    Elapsed := Stopwatch.Elapsed;
    lbInfo.Caption := 'Найдено сторок:' + matched_lines_cnt.ToString + '. Время выполнения:' + Elapsed.TotalMilliseconds.ToString + ' мс';
  end;
end;

procedure TfrmMain.menuFontClick(Sender: TObject);
begin
  FontDialog.Font := InputMemo.Font;
  if FontDialog.Execute then
  begin
    InputMemo.Font := FontDialog.Font;
    memoResults.Font := FontDialog.Font;
  end;
end;

end.
