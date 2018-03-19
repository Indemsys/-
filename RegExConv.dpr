program RegExConv;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  DataModule in 'DataModule.pas' {dm: TDataModule},
  RegExRef in 'RegExRef.pas' {frmRegExRef};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
