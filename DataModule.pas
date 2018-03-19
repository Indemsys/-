unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MSAccDef, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys.ODBC, FireDAC.Phys.ODBCDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSAcc, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    dsRegExs: TDataSource;
    dsRegEx_items: TDataSource;
    ADOConnection: TADOConnection;
    tblRegExs: TADOTable;
    tblRegEx_items: TADOTable;
    tblRegExsRegExID: TAutoIncField;
    tblRegExsNr: TIntegerField;
    tblRegExsDescription: TWideStringField;
    tblRegEx_itemsRegExItemID: TAutoIncField;
    tblRegEx_itemsRegExID: TIntegerField;
    tblRegEx_itemsNr: TIntegerField;
    tblRegEx_itemsContent: TWideStringField;
    tblRegEx_itemsComment: TWideMemoField;
    tblRegExQuickRef: TADOTable;
    dsRegExQuickRef: TDataSource;
    tblRegExQuickRefID: TAutoIncField;
    tblRegExQuickRefSyntax: TWideStringField;
    tblRegExQuickRefFeature: TWideStringField;
    tblRegExQuickRefComment: TWideMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
