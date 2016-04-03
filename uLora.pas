unit uLora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, OoMisc, AdPort, Vcl.ComCtrls, frxCtrls, Vcl.Tabs, Vcl.DockTabSet,
  JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement;

type
  TfrmTester = class(TForm)
    ApdComPort1: TApdComPort;
    pnlConfig: TPanel;
    pnlCommands: TPanel;
    pnlData: TPanel;
    Label1: TLabel;
    edtComPort: TSpinEdit;
    Label2: TLabel;
    cbxBaud: TComboBox;
    Label3: TLabel;
    cbxDataSize: TComboBox;
    Label4: TLabel;
    cbxParity: TComboBox;
    Label5: TLabel;
    cbxStopBit: TComboBox;
    btnOpen: TButton;
    btnClose: TButton;
    Memo1: TMemo;
    DockTabSet1: TDockTabSet;
    PageControl1: TPageControl;
    tabGeneral: TTabSheet;
    tabNetwork: TTabSheet;
    tabRario: TTabSheet;
    tabSendReceive: TTabSheet;
    btnAT: TButton;
    btnATE0: TButton;
    btnATV0: TButton;
    btnATI: TButton;
    btnATE1: TButton;
    btnATV1: TButton;
    btnATZ: TButton;
    btnATF: TButton;
    btnATW: TButton;
    btnAT_V: TButton;
    btnGetAPIPR: TButton;
    btnGetDIPR: TButton;
    edtATIPR: TEdit;
    edtATDIPR: TEdit;
    btnSetAPIPR: TButton;
    btnSetDIPR: TButton;
    btnGetSMODE: TButton;
    btnATSMODE0: TButton;
    btnATSMODE1: TButton;
    btnATFREQ: TButton;
    btnGetATFSB: TButton;
    cbxSetATFSB: TComboBox;
    btnSetATFSB: TButton;
    btnGetATPN: TButton;
    btnSetATPN0: TButton;
    btnSetATPN1: TButton;
    btnATDI: TButton;
    BalloonHint1: TBalloonHint;
    btnGetATNA: TButton;
    btnSetATNA: TButton;
    edtATNA: TEdit;
    btnGetATNSK: TButton;
    edtATNSK: TEdit;
    btnSetATNSK: TButton;
    btnGetATDSK: TButton;
    edtATDSK: TEdit;
    btnSetATDSK: TButton;
    btnGetATNK: TButton;
    edtATNK: TEdit;
    btnSetATNK: TButton;
    cbATNKHex: TCheckBox;
    btnGetATNI: TButton;
    cbATNIHex: TCheckBox;
    edtATNI: TEdit;
    btnSetATNI: TButton;
    tabJoin: TTabSheet;
    btnATJOIN: TButton;
    btnATNJS: TButton;
    btnGetATNJM: TButton;
    cbxSetATNJM: TComboBox;
    btnSetATNJM: TButton;
    btnATNLC: TButton;
    btnGetATNLC: TButton;
    edtSetATNLC: TSpinEdit;
    btnSetATNLC: TButton;
    btnGetATENC: TButton;
    btnSetATENC0: TButton;
    btnSetATENC1: TButton;
    btnATRSSI: TButton;
    btnATSNR: TButton;
    btnATDP: TButton;
    btnATPING: TButton;
    btnGetATTXDR: TButton;
    edtSetATTXDR: TSpinEdit;
    btnSetATTXDR: TButton;
    btnGetATTXP: TButton;
    edtSetATTXP: TSpinEdit;
    btSetATTXP: TButton;
    btnGetATTXF: TButton;
    btnSetATTXF: TButton;
    edtSetATTXF: TEdit;
    btnGetATTXI: TButton;
    btnSetATTXI0: TButton;
    btnSetATTXI1: TButton;
    btnATTXCH: TButton;
    btnGetATRXDR: TButton;
    edtSetATRXDR: TSpinEdit;
    btnSetATRXDR: TButton;
    btnGetATRXF: TButton;
    edtSetATRXF: TEdit;
    btnSetATRXF: TButton;
    btnGetATRXO: TButton;
    btnGetATRXO0: TButton;
    btnGetATRXO1: TButton;
    btnGetATRXI: TButton;
    btnSetATRXI0: TButton;
    btnSetATRXI1: TButton;
    btnGetATFEC: TButton;
    cbxSetATFEC: TComboBox;
    btnSetATFEC: TButton;
    btnGetATCRC: TButton;
    btnSetATCRC0: TButton;
    btnSetATCRC1: TButton;
    btnGetATADR: TButton;
    btnSetATADR0: TButton;
    btnSetATADR1: TButton;
    btnGetATACK: TButton;
    btnSetATACK0: TButton;
    btnSetATACK1: TButton;
    edtATSEND: TEdit;
    btnATSEND: TButton;
    edtATLOG: TSpinEdit;
    btnSetATLOG: TButton;
    btnGetATLOG: TButton;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    procedure btnOpenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApdComPort1TriggerAvail(CP: TObject; Count: Word);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSenderClick(Sender: TObject);
    procedure btnSetAPIPRClick(Sender: TObject);
    procedure btnSetDIPRClick(Sender: TObject);
    procedure btnATFClick(Sender: TObject);
    procedure btnATWClick(Sender: TObject);
    procedure btnAT_VClick(Sender: TObject);
    procedure btnSetATFSBClick(Sender: TObject);
    procedure btnSetATNAClick(Sender: TObject);
    procedure btnSetATNSKClick(Sender: TObject);
    procedure btnSetATDSKClick(Sender: TObject);
    procedure cbATNKHexClick(Sender: TObject);
    procedure btnSetATNKClick(Sender: TObject);
    procedure cbATNIHexClick(Sender: TObject);
    procedure btnSetATNIClick(Sender: TObject);
    procedure btnSetATNJMClick(Sender: TObject);
    procedure btnSetATTXDRClick(Sender: TObject);
    procedure btnSetATNLCClick(Sender: TObject);
    procedure btSetATTXPClick(Sender: TObject);
    procedure btnSetATTXFClick(Sender: TObject);
    procedure btnSetATRXDRClick(Sender: TObject);
    procedure btnSetATRXFClick(Sender: TObject);
    procedure btnSetATFECClick(Sender: TObject);
    procedure btnATSENDClick(Sender: TObject);
    procedure ApdComPort1PortClose(Sender: TObject);
    procedure ApdComPort1PortOpen(Sender: TObject);
    procedure btnSetATLOGClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateButtons;

  end;

var
  frmTester: TfrmTester;

implementation

{$R *.dfm}

procedure TfrmTester.ApdComPort1PortClose(Sender: TObject);
begin
  UpdateButtons;
end;

procedure TfrmTester.ApdComPort1PortOpen(Sender: TObject);
begin
  UpdateButtons;
end;

procedure TfrmTester.ApdComPort1TriggerAvail(CP: TObject; Count: Word);
var
  i: integer;
  c: ansichar;
  strBuffer: string;
begin
  for i := 1 to Count do
  begin
    c := ApdComPort1.GetChar;
    //if c = #7 then MessageBeep(0)
    //else if c in [#32..#126] then strBuffer[Length(strBuffer)+1] := pchar(c);
    strBuffer := strBuffer + c;
  end;
  Memo1.Lines.add(strBuffer);
end;

procedure TfrmTester.btnATFClick(Sender: TObject);
begin
  ApdComPort1.PutString('AT&F'+sLineBreak);
end;

procedure TfrmTester.btnATSENDClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtATSEND.Text+sLineBreak);
end;

procedure TfrmTester.btnATWClick(Sender: TObject);
begin
  ApdComPort1.PutString('AT&W'+sLineBreak);
end;

procedure TfrmTester.btnAT_VClick(Sender: TObject);
begin
  ApdComPort1.PutString('AT&V'+sLineBreak);
end;

procedure TfrmTester.btnCloseClick(Sender: TObject);
begin
  ApdComPort1.Open := False;
  UpdateButtons;
end;

procedure TfrmTester.btnOpenClick(Sender: TObject);
begin
//  ApdComPort1.ComNumber := 8;
//  ApdComPort1.Baud := 115200;
//  ApdComPort1.Parity := TParity.pNone;
//  ApdComPort1.DataBits := 8;
//  ApdComPort1.StopBits := 0;
//  ApdComPort1.Open := True;
  ApdComPort1.ComNumber := edtComPort.Value;
  ApdComPort1.Baud := StrToInt(cbxBaud.Text);
  ApdComPort1.Parity := TParity(cbxParity.ItemIndex);
  ApdComPort1.DataBits := cbxDataSize.ItemIndex+7;
  ApdComPort1.StopBits := cbxStopBit.ItemIndex;
  ApdComPort1.Open := True;
  UpdateButtons;
end;

procedure TfrmTester.btnSenderClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+sLineBreak);
end;

procedure TfrmTester.btnSetAPIPRClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+edtATIPR.Text+sLineBreak);
end;

procedure TfrmTester.btnSetATDSKClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtATDSK.Text+sLineBreak);
end;

procedure TfrmTester.btnSetATFECClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+cbxSetATFEC.Text+sLineBreak);
end;

procedure TfrmTester.btnSetATFSBClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+cbxSetATFSB.ItemIndex.ToString+sLineBreak);
end;

procedure TfrmTester.btnSetATLOGClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtATLOG.Value.ToString+sLineBreak);
end;

procedure TfrmTester.btnSetATNAClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtATNA.Text+sLineBreak);
end;

procedure TfrmTester.btnSetATNIClick(Sender: TObject);
begin
  if cbATNIHex.Checked then
    ApdComPort1.PutString(tButton(Sender).Caption+'=0,'+edtATNI.Text+sLineBreak)
  else
    ApdComPort1.PutString(tButton(Sender).Caption+'=1,'+edtATNI.Text+sLineBreak);
end;

procedure TfrmTester.btnSetATNJMClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+cbxSetATNJM.ItemIndex.ToString+sLineBreak);
end;

procedure TfrmTester.btnSetATNKClick(Sender: TObject);
begin
  if cbATNKHex.Checked then
    ApdComPort1.PutString(tButton(Sender).Caption+'=0,'+edtATNK.Text+sLineBreak)
  else
    ApdComPort1.PutString(tButton(Sender).Caption+'=1,'+edtATNK.Text+sLineBreak);
end;

procedure TfrmTester.btnSetATNLCClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtSetATNLC.Value.ToString+sLineBreak);
end;

procedure TfrmTester.btnSetATNSKClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtATNSK.Text+sLineBreak);
end;

procedure TfrmTester.btnSetATRXDRClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtSetATRXDR.Value.ToString+sLineBreak);
end;

procedure TfrmTester.btnSetATRXFClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtSetATRXF.Text+sLineBreak);
end;

procedure TfrmTester.btnSetATTXDRClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtSetATTXDR.Value.ToString+sLineBreak);
end;

procedure TfrmTester.btnSetATTXFClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtSetATTXF.Text+sLineBreak);
end;

procedure TfrmTester.btnSetDIPRClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+edtATDIPR.Text+sLineBreak);
end;

procedure TfrmTester.btSetATTXPClick(Sender: TObject);
begin
  ApdComPort1.PutString(tButton(Sender).Caption+'='+edtSetATTXP.Value.ToString+sLineBreak);
end;

procedure TfrmTester.cbATNKHexClick(Sender: TObject);
begin
  if cbATNKHex.Checked then
    edtATNK.MaxLength := 32
  else
    edtATNK.MaxLength := 16;
end;

procedure TfrmTester.cbATNIHexClick(Sender: TObject);
begin
  if cbATNIHex.Checked then
    edtATNI.MaxLength := 32
  else
    edtATNI.MaxLength := 16;
end;

procedure TfrmTester.FormShow(Sender: TObject);
begin
  UpdateButtons;
  PageControl1.ActivePageIndex := 0;
  cbATNKHexClick(Sender);
end;

procedure TfrmTester.UpdateButtons;
begin
  edtComPort.Enabled := not ApdComPort1.Open;
  cbxBaud.Enabled := not ApdComPort1.Open;
  cbxDataSize.Enabled := not ApdComPort1.Open;
  cbxParity.Enabled := not ApdComPort1.Open;
  cbxStopBit.Enabled := not ApdComPort1.Open;
  btnOpen.Enabled  := not ApdComPort1.Open;
  btnClose.Enabled := ApdComPort1.Open;
end;

end.
