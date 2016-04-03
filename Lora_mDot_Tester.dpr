program Lora_mDot_Tester;

uses
  Vcl.Forms,
  uLora in 'uLora.pas' {frmTester};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTester, frmTester);
  Application.Run;
end.
