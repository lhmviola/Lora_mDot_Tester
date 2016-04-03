object frmTester: TfrmTester
  Left = 0
  Top = 0
  Caption = 'mDot Tester'
  ClientHeight = 579
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConfig: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 23
      Height = 13
      Caption = 'COM'
    end
    object Label2: TLabel
      Left = 88
      Top = 16
      Width = 27
      Height = 13
      Caption = 'BAUD'
    end
    object Label3: TLabel
      Left = 184
      Top = 16
      Width = 52
      Height = 13
      Caption = 'DATA SIZE'
    end
    object Label4: TLabel
      Left = 280
      Top = 16
      Width = 36
      Height = 13
      Caption = 'PARITY'
    end
    object Label5: TLabel
      Left = 376
      Top = 16
      Width = 45
      Height = 13
      Caption = 'STOP BIT'
    end
    object edtComPort: TSpinEdit
      Left = 16
      Top = 35
      Width = 52
      Height = 22
      EditorEnabled = False
      MaxValue = 16
      MinValue = 1
      TabOrder = 0
      Value = 1
    end
    object cbxBaud: TComboBox
      Left = 88
      Top = 35
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = '600'
      Items.Strings = (
        '600'
        '1200'
        '2400'
        '4800'
        '9600'
        '14400'
        '19200'
        '38400'
        '56000'
        '57600'
        '115200')
    end
    object cbxDataSize: TComboBox
      Left = 184
      Top = 35
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 2
      Text = '8'
      Items.Strings = (
        '7'
        '8')
    end
    object cbxParity: TComboBox
      Left = 280
      Top = 35
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'none'
      Items.Strings = (
        'none'
        'odd'
        'even'
        'mark'
        'space')
    end
    object cbxStopBit: TComboBox
      Left = 376
      Top = 35
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = '0'
      Items.Strings = (
        '0'
        '1')
    end
    object btnOpen: TButton
      Left = 477
      Top = 35
      Width = 60
      Height = 22
      Caption = 'Open'
      TabOrder = 5
      OnClick = btnOpenClick
    end
    object btnClose: TButton
      Left = 543
      Top = 35
      Width = 60
      Height = 22
      Caption = 'Close'
      TabOrder = 6
      OnClick = btnCloseClick
    end
    object DockTabSet1: TDockTabSet
      Left = 8
      Top = 64
      Width = 185
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object pnlCommands: TPanel
    Left = 0
    Top = 65
    Width = 735
    Height = 240
    Align = alTop
    BorderWidth = 4
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 725
      Height = 230
      ActivePage = tabGeneral
      Align = alClient
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      object tabGeneral: TTabSheet
        Caption = 'General Commands'
        object btnAT: TButton
          Left = 24
          Top = 16
          Width = 46
          Height = 25
          Hint = 'Attention'
          CustomHint = BalloonHint1
          Caption = 'AT'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnSenderClick
        end
        object btnATE0: TButton
          Left = 24
          Top = 47
          Width = 46
          Height = 25
          Hint = 'Disable Echo'
          CustomHint = BalloonHint1
          Caption = 'ATE0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnSenderClick
        end
        object btnATV0: TButton
          Left = 24
          Top = 78
          Width = 46
          Height = 25
          Hint = 'Disable Verbose'
          CustomHint = BalloonHint1
          Caption = 'ATV0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btnSenderClick
        end
        object btnATI: TButton
          Left = 76
          Top = 16
          Width = 46
          Height = 25
          Hint = 'Request Identification'
          CustomHint = BalloonHint1
          Caption = 'ATI'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnSenderClick
        end
        object btnATE1: TButton
          Left = 76
          Top = 47
          Width = 46
          Height = 25
          Hint = 'Enable Echo'
          CustomHint = BalloonHint1
          Caption = 'ATE1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnSenderClick
        end
        object btnATV1: TButton
          Left = 76
          Top = 78
          Width = 46
          Height = 25
          Hint = 'Enable Verbose'
          CustomHint = BalloonHint1
          Caption = 'ATV1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnSenderClick
        end
        object btnATZ: TButton
          Left = 128
          Top = 16
          Width = 46
          Height = 25
          Hint = 'Reset the CPU'
          CustomHint = BalloonHint1
          Caption = 'ATZ'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnSenderClick
        end
        object btnATF: TButton
          Left = 24
          Top = 109
          Width = 46
          Height = 25
          Hint = 'Reset current configuration to factory defaults'
          CustomHint = BalloonHint1
          Caption = 'AT&&F'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnClick = btnATFClick
        end
        object btnATW: TButton
          Left = 76
          Top = 109
          Width = 46
          Height = 25
          Hint = 'Save configuration to flash memory'
          CustomHint = BalloonHint1
          Caption = 'AT&&W'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnClick = btnATWClick
        end
        object btnAT_V: TButton
          Left = 128
          Top = 109
          Width = 46
          Height = 25
          Hint = 'Displays current settings and status'
          CustomHint = BalloonHint1
          Caption = 'AT&&V'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = btnAT_VClick
        end
        object btnGetAPIPR: TButton
          Left = 194
          Top = 14
          Width = 59
          Height = 25
          Hint = 'Get serial baud rate'
          CustomHint = BalloonHint1
          Caption = 'AT+IPR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = btnSenderClick
        end
        object btnGetDIPR: TButton
          Left = 194
          Top = 47
          Width = 59
          Height = 25
          Hint = 'Get debug serial baud rate'
          CustomHint = BalloonHint1
          Caption = 'AT+DIPR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = btnSenderClick
        end
        object edtATIPR: TEdit
          Left = 259
          Top = 16
          Width = 48
          Height = 21
          CustomHint = BalloonHint1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Text = '115200'
        end
        object edtATDIPR: TEdit
          Left = 259
          Top = 49
          Width = 48
          Height = 21
          CustomHint = BalloonHint1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          Text = '115200'
        end
        object btnSetAPIPR: TButton
          Left = 306
          Top = 14
          Width = 60
          Height = 25
          Hint = 'Set serial baud rate'
          CustomHint = BalloonHint1
          Caption = 'AT+IPR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = btnSetAPIPRClick
        end
        object btnSetDIPR: TButton
          Left = 306
          Top = 47
          Width = 60
          Height = 25
          Hint = 'Set debug serial baud rate'
          CustomHint = BalloonHint1
          Caption = 'AT+DIPR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnClick = btnSetDIPRClick
        end
        object btnGetSMODE: TButton
          Left = 194
          Top = 78
          Width = 82
          Height = 25
          Hint = 'Get Start Up Mode'
          CustomHint = BalloonHint1
          Caption = 'AT+SMODE'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnClick = btnSenderClick
        end
        object btnATSMODE0: TButton
          Left = 279
          Top = 78
          Width = 82
          Height = 25
          Hint = 'Set Start Up Mode to AT Command Mode'
          CustomHint = BalloonHint1
          Caption = 'AT+SMODE=0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnClick = btnSenderClick
        end
        object btnATSMODE1: TButton
          Left = 367
          Top = 78
          Width = 81
          Height = 25
          Hint = 'Set Start Up Mode to Serial Data Mode'
          CustomHint = BalloonHint1
          Caption = 'AT+SMODE=1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnClick = btnSenderClick
        end
        object edtATLOG: TSpinEdit
          Left = 95
          Top = 152
          Width = 52
          Height = 22
          EditorEnabled = False
          MaxValue = 6
          MinValue = 0
          TabOrder = 19
          Value = 1
        end
        object btnSetATLOG: TButton
          Left = 146
          Top = 150
          Width = 65
          Height = 25
          Hint = 'Set Log Level'
          CustomHint = BalloonHint1
          Caption = 'AT+LOG'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnClick = btnSetATLOGClick
        end
        object btnGetATLOG: TButton
          Left = 24
          Top = 150
          Width = 65
          Height = 25
          Hint = 'Get Log Level'
          CustomHint = BalloonHint1
          Caption = 'AT+LOG'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnClick = btnSenderClick
        end
      end
      object tabNetwork: TTabSheet
        Caption = 'Network/Addressing'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = False
        object btnATFREQ: TButton
          Left = 24
          Top = 14
          Width = 82
          Height = 25
          Hint = 'Configured Frequency Band '#39'868'#39' or '#39'915'#39
          Caption = 'AT+FREQ'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnSenderClick
        end
        object btnGetATFSB: TButton
          Left = 135
          Top = 14
          Width = 56
          Height = 25
          Hint = 'Get the frequency sub-band for US 915'
          Caption = 'AT+FSB'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnSenderClick
        end
        object cbxSetATFSB: TComboBox
          Left = 199
          Top = 16
          Width = 64
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8')
        end
        object btnSetATFSB: TButton
          Left = 261
          Top = 14
          Width = 57
          Height = 25
          Hint = 'Set the frequency sub-band for US 915'
          Caption = 'AT+FSB'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnSetATFSBClick
        end
        object btnGetATPN: TButton
          Left = 24
          Top = 45
          Width = 65
          Height = 25
          Hint = 'Get public network mode. (0: off, 1: on)'
          Caption = 'AT+PN'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnSenderClick
        end
        object btnSetATPN0: TButton
          Left = 95
          Top = 45
          Width = 65
          Height = 25
          Hint = 'Disable public network mode.'
          Caption = 'AT+PN=0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btnSenderClick
        end
        object btnSetATPN1: TButton
          Left = 167
          Top = 45
          Width = 65
          Height = 25
          Hint = 'Disable public network mode.'
          Caption = 'AT+PN=1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnSenderClick
        end
        object btnATDI: TButton
          Left = 24
          Top = 76
          Width = 65
          Height = 25
          Hint = 'Device EUI (unique, set at factory) (8 bytes)'
          Caption = 'AT+DI'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = btnSenderClick
        end
        object btnGetATNA: TButton
          Left = 24
          Top = 107
          Width = 65
          Height = 25
          Hint = 'Get Network address (devAddr in LoraMac) (4 bytes)'
          Caption = 'AT+NA'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = btnSenderClick
        end
        object btnSetATNA: TButton
          Left = 151
          Top = 107
          Width = 65
          Height = 25
          Hint = 'Set Network address (devAddr in LoraMac) (4 bytes)'
          Caption = 'AT+NA'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = btnSetATNAClick
        end
        object edtATNA: TEdit
          Left = 94
          Top = 109
          Width = 59
          Height = 21
          MaxLength = 8
          TabOrder = 10
          Text = '00000000'
        end
        object btnGetATNSK: TButton
          Left = 24
          Top = 138
          Width = 65
          Height = 25
          Hint = 'Get Network session encryption key (16 bytes)'
          Caption = 'AT+NSK'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = btnSenderClick
        end
        object edtATNSK: TEdit
          Left = 94
          Top = 140
          Width = 209
          Height = 21
          MaxLength = 32
          TabOrder = 12
          Text = '2B7E151628AED2A6ABF7158809CF4F3C'
        end
        object btnSetATNSK: TButton
          Left = 301
          Top = 138
          Width = 65
          Height = 25
          Hint = 'Set Network session encryption key (16 bytes)'
          Caption = 'AT+NSK'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnClick = btnSetATNSKClick
        end
        object btnGetATDSK: TButton
          Left = 24
          Top = 169
          Width = 65
          Height = 25
          Hint = 'Get Network address (devAddr in LoraMac) (4 bytes)'
          Caption = 'AT+DSK'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnClick = btnSenderClick
        end
        object edtATDSK: TEdit
          Left = 94
          Top = 171
          Width = 209
          Height = 21
          MaxLength = 32
          TabOrder = 15
          Text = '2B7E151628AED2A6ABF7158809CF4F3C'
        end
        object btnSetATDSK: TButton
          Left = 301
          Top = 169
          Width = 65
          Height = 25
          Hint = 'Set Network address (devAddr in LoraMac) (4 bytes)'
          Caption = 'AT+DSK'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnClick = btnSetATDSKClick
        end
        object btnGetATNK: TButton
          Left = 343
          Top = 14
          Width = 65
          Height = 25
          Hint = 'Get network key/passphrase (App Key in LoraMac)'
          Caption = 'AT+NK'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnClick = btnSenderClick
        end
        object edtATNK: TEdit
          Left = 454
          Top = 16
          Width = 184
          Height = 21
          MaxLength = 32
          TabOrder = 19
        end
        object btnSetATNK: TButton
          Left = 636
          Top = 14
          Width = 65
          Height = 25
          Hint = 'Configured network key/passphrase (App Key in LoraMac)'
          Caption = 'AT+NK'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnClick = btnSetATNKClick
        end
        object cbATNKHex: TCheckBox
          Left = 414
          Top = 18
          Width = 34
          Height = 17
          Caption = 'Hex'
          TabOrder = 18
          OnClick = cbATNKHexClick
        end
        object btnGetATNI: TButton
          Left = 343
          Top = 45
          Width = 65
          Height = 25
          Hint = 'Get Network EUI/Name (App EUI in LoraMac)'
          Caption = 'AT+NI'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnClick = btnSenderClick
        end
        object cbATNIHex: TCheckBox
          Left = 414
          Top = 49
          Width = 34
          Height = 17
          Caption = 'Hex'
          TabOrder = 22
          OnClick = cbATNIHexClick
        end
        object edtATNI: TEdit
          Left = 454
          Top = 47
          Width = 184
          Height = 21
          MaxLength = 32
          TabOrder = 23
        end
        object btnSetATNI: TButton
          Left = 636
          Top = 45
          Width = 65
          Height = 25
          Hint = 'Configured Network EUI/Name (App EUI in LoraMac)'
          Caption = 'AT+NI'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 24
          OnClick = btnSetATNIClick
        end
      end
      object tabJoin: TTabSheet
        Caption = 'Join Commands'
        ImageIndex = 5
        object btnATJOIN: TButton
          Left = 25
          Top = 15
          Width = 65
          Height = 25
          Hint = 'Join Network'
          CustomHint = BalloonHint1
          Caption = 'AT+JOIN'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnSenderClick
        end
        object btnATNJS: TButton
          Left = 105
          Top = 15
          Width = 65
          Height = 25
          Hint = 'Join Status'
          CustomHint = BalloonHint1
          Caption = 'AT+NJS'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnSenderClick
        end
        object btnGetATNJM: TButton
          Left = 25
          Top = 47
          Width = 65
          Height = 25
          Hint = 'Get Network Join Mode'
          CustomHint = BalloonHint1
          Caption = 'AT+NJM'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnSenderClick
        end
        object cbxSetATNJM: TComboBox
          Left = 105
          Top = 49
          Width = 79
          Height = 21
          CustomHint = BalloonHint1
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 4
          Text = 'Manual'
          Items.Strings = (
            'Manual'
            'OTA'
            'OTA Auto')
        end
        object btnSetATNJM: TButton
          Left = 182
          Top = 47
          Width = 65
          Height = 25
          Hint = 'Set Network Join Mode'
          CustomHint = BalloonHint1
          Caption = 'AT+NJM'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btnSetATNJMClick
        end
        object btnATNLC: TButton
          Left = 183
          Top = 15
          Width = 65
          Height = 25
          Hint = 
            'Perform network link check, displays dBm above floor, number of ' +
            'gateways in range and optional packet payload if received'
          CustomHint = BalloonHint1
          Caption = 'AT+NJS'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnSenderClick
        end
        object btnGetATNLC: TButton
          Left = 25
          Top = 78
          Width = 65
          Height = 25
          Hint = 
            'Get number of packets between each link check if ACK'#39's are disab' +
            'led'
          CustomHint = BalloonHint1
          Caption = 'AT+NLC'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnSenderClick
        end
        object edtSetATNLC: TSpinEdit
          Left = 105
          Top = 80
          Width = 52
          Height = 22
          EditorEnabled = False
          MaxValue = 16
          MinValue = 1
          TabOrder = 7
          Value = 1
        end
        object btnSetATNLC: TButton
          Left = 156
          Top = 78
          Width = 65
          Height = 25
          Hint = 
            'Set number of packets between each link check if ACK'#39's are disab' +
            'led'
          CustomHint = BalloonHint1
          Caption = 'AT+NLC'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = btnSetATNLCClick
        end
        object btnGetATENC: TButton
          Left = 25
          Top = 109
          Width = 65
          Height = 25
          Hint = 'Get AES encryption'
          CustomHint = BalloonHint1
          Caption = 'AT+ENC'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = btnSenderClick
        end
        object btnSetATENC0: TButton
          Left = 104
          Top = 109
          Width = 65
          Height = 25
          Hint = 'Disable AES encryption'
          CustomHint = BalloonHint1
          Caption = 'AT+ENC=0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = btnSenderClick
        end
        object btnSetATENC1: TButton
          Left = 183
          Top = 109
          Width = 65
          Height = 25
          Hint = 'Enable AES encryption'
          CustomHint = BalloonHint1
          Caption = 'AT+ENC=1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = btnSenderClick
        end
        object btnATRSSI: TButton
          Left = 25
          Top = 140
          Width = 65
          Height = 25
          Hint = 'Displays signal strength of received packets, last,min,max,avg'
          CustomHint = BalloonHint1
          Caption = 'AT+RSSI'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnClick = btnSenderClick
        end
        object btnATSNR: TButton
          Left = 105
          Top = 140
          Width = 65
          Height = 25
          Hint = 'Display signal to noise ratio received packets last,min,max,avg'
          CustomHint = BalloonHint1
          Caption = 'AT+SNR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnClick = btnSenderClick
        end
        object btnATDP: TButton
          Left = 183
          Top = 140
          Width = 65
          Height = 25
          Hint = 'Indicator of data in queue on server'
          CustomHint = BalloonHint1
          Caption = 'AT+DP'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnClick = btnSenderClick
        end
        object btnATPING: TButton
          Left = 287
          Top = 15
          Width = 74
          Height = 25
          Hint = 'Sends ping, displays RSSI and SNR from gateway on pong'
          CustomHint = BalloonHint1
          Caption = 'AT+PING'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = btnSenderClick
        end
      end
      object tabRario: TTabSheet
        Caption = 'Radio Configuration'
        ImageIndex = 2
        object btnGetATTXDR: TButton
          Left = 23
          Top = 15
          Width = 65
          Height = 25
          Hint = 'Set the Tx spread factor for all channels (7-10)'
          CustomHint = BalloonHint1
          Caption = 'AT+TXDR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnSenderClick
        end
        object edtSetATTXDR: TSpinEdit
          Left = 103
          Top = 17
          Width = 52
          Height = 22
          EditorEnabled = False
          MaxValue = 10
          MinValue = 7
          TabOrder = 1
          Value = 9
        end
        object btnSetATTXDR: TButton
          Left = 154
          Top = 15
          Width = 65
          Height = 25
          Hint = 'Get the Tx spread factor for all channels (7-10)'
          CustomHint = BalloonHint1
          Caption = 'AT+TXDR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnSetATTXDRClick
        end
        object btnGetATTXP: TButton
          Left = 23
          Top = 46
          Width = 65
          Height = 25
          Hint = 'Set the Tx spread factor for all channels (7-10)'
          CustomHint = BalloonHint1
          Caption = 'AT+TXP'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnSenderClick
        end
        object edtSetATTXP: TSpinEdit
          Left = 103
          Top = 48
          Width = 52
          Height = 22
          EditorEnabled = False
          MaxValue = 20
          MinValue = 2
          TabOrder = 4
          Value = 11
        end
        object btSetATTXP: TButton
          Left = 154
          Top = 46
          Width = 65
          Height = 25
          Hint = 'Get the Tx spread factor for all channels (7-10)'
          CustomHint = BalloonHint1
          Caption = 'AT+TXP'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = btSetATTXPClick
        end
        object btnGetATTXF: TButton
          Left = 23
          Top = 77
          Width = 65
          Height = 25
          Hint = 'Get Tx frequency'
          CustomHint = BalloonHint1
          Caption = 'AT+TXF'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnSenderClick
        end
        object btnSetATTXF: TButton
          Left = 162
          Top = 77
          Width = 65
          Height = 25
          Hint = 'Set Tx frequency'
          CustomHint = BalloonHint1
          Caption = 'AT+TXF'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = btnSetATTXFClick
        end
        object edtSetATTXF: TEdit
          Left = 103
          Top = 79
          Width = 61
          Height = 21
          TabOrder = 8
          Text = '902000000'
        end
        object btnGetATTXI: TButton
          Left = 23
          Top = 108
          Width = 65
          Height = 25
          Hint = 'Get Tx signal inverted'
          CustomHint = BalloonHint1
          Caption = 'AT+TXI'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = btnSenderClick
        end
        object btnSetATTXI0: TButton
          Left = 102
          Top = 108
          Width = 65
          Height = 25
          Hint = 'Disable Tx signal inverted'
          CustomHint = BalloonHint1
          Caption = 'AT+TXI=0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = btnSenderClick
        end
        object btnSetATTXI1: TButton
          Left = 174
          Top = 108
          Width = 65
          Height = 25
          Hint = 'Enable Tx signal inverted'
          CustomHint = BalloonHint1
          Caption = 'AT+TXI=1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = btnSenderClick
        end
        object btnATTXCH: TButton
          Left = 23
          Top = 139
          Width = 65
          Height = 25
          Hint = 'List Tx channel frequencies for sub-band'
          CustomHint = BalloonHint1
          Caption = 'AT+TXCH'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnClick = btnSenderClick
        end
        object btnGetATRXDR: TButton
          Left = 263
          Top = 15
          Width = 65
          Height = 25
          Hint = 'Set the Rx spread factor for all channels (7-10)'
          CustomHint = BalloonHint1
          Caption = 'AT+RXDR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnClick = btnSenderClick
        end
        object edtSetATRXDR: TSpinEdit
          Left = 343
          Top = 17
          Width = 52
          Height = 22
          EditorEnabled = False
          MaxValue = 10
          MinValue = 7
          TabOrder = 14
          Value = 9
        end
        object btnSetATRXDR: TButton
          Left = 394
          Top = 15
          Width = 65
          Height = 25
          Hint = 'Get the Rx spread factor for all channels (7-10)'
          CustomHint = BalloonHint1
          Caption = 'AT+RXDR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = btnSetATRXDRClick
        end
        object btnGetATRXF: TButton
          Left = 263
          Top = 46
          Width = 65
          Height = 25
          Hint = 'Get Rx frequency'
          CustomHint = BalloonHint1
          Caption = 'AT+RXF'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnClick = btnSenderClick
        end
        object edtSetATRXF: TEdit
          Left = 343
          Top = 48
          Width = 61
          Height = 21
          TabOrder = 17
          Text = '902000000'
        end
        object btnSetATRXF: TButton
          Left = 401
          Top = 46
          Width = 65
          Height = 25
          Hint = 'Set Rx frequency'
          CustomHint = BalloonHint1
          Caption = 'AT+RXF'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnClick = btnSetATRXFClick
        end
        object btnGetATRXO: TButton
          Left = 263
          Top = 77
          Width = 65
          Height = 25
          Hint = 'Get the Rx output type (0:hexadecimal, 1:binary)'
          CustomHint = BalloonHint1
          Caption = 'AT+RXO'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnClick = btnSenderClick
        end
        object btnGetATRXO0: TButton
          Left = 342
          Top = 77
          Width = 65
          Height = 25
          Hint = 'Set the Rx output type (0:hexadecimal'
          CustomHint = BalloonHint1
          Caption = 'AT+RXO=0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnClick = btnSenderClick
        end
        object btnGetATRXO1: TButton
          Left = 414
          Top = 77
          Width = 65
          Height = 25
          Hint = 'Set the Rx output type to binary'
          CustomHint = BalloonHint1
          Caption = 'AT+RXO=1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnClick = btnSenderClick
        end
        object btnGetATRXI: TButton
          Left = 263
          Top = 108
          Width = 65
          Height = 25
          Hint = 'Get Rx signal inverted'
          CustomHint = BalloonHint1
          Caption = 'AT+RXI'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 22
          OnClick = btnSenderClick
        end
        object btnSetATRXI0: TButton
          Left = 342
          Top = 108
          Width = 65
          Height = 25
          Hint = 'Disable Rx signal inverted'
          CustomHint = BalloonHint1
          Caption = 'AT+RXI=0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 23
          OnClick = btnSenderClick
        end
        object btnSetATRXI1: TButton
          Left = 414
          Top = 108
          Width = 65
          Height = 25
          Hint = 'Enable Rx signal inverted'
          CustomHint = BalloonHint1
          Caption = 'AT+RXI=1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 24
          OnClick = btnSenderClick
        end
        object btnGetATFEC: TButton
          Left = 263
          Top = 139
          Width = 65
          Height = 25
          Hint = 'Get Forward Error Correction bytes'
          CustomHint = BalloonHint1
          Caption = 'AT+FEC'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 25
          OnClick = btnSenderClick
        end
        object cbxSetATFEC: TComboBox
          Left = 343
          Top = 141
          Width = 52
          Height = 21
          CustomHint = BalloonHint1
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 26
          Text = '2'
          Items.Strings = (
            '1'
            '2'
            '3'
            '4')
        end
        object btnSetATFEC: TButton
          Left = 394
          Top = 139
          Width = 65
          Height = 25
          Hint = 'Configure Forward Error Correction bytes (1 to 4)'
          CustomHint = BalloonHint1
          Caption = 'AT+FEC'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 27
          OnClick = btnSetATFECClick
        end
        object btnGetATCRC: TButton
          Left = 495
          Top = 17
          Width = 65
          Height = 25
          Hint = 'Enable/disable CRC checking of received packets. (0: off, 1: on)'
          CustomHint = BalloonHint1
          Caption = 'AT+CRC'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 28
          OnClick = btnSenderClick
        end
        object btnSetATCRC0: TButton
          Left = 574
          Top = 17
          Width = 65
          Height = 25
          Hint = 'Disable CRC checking of received packets'
          CustomHint = BalloonHint1
          Caption = 'AT+CRC=0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 29
          OnClick = btnSenderClick
        end
        object btnSetATCRC1: TButton
          Left = 646
          Top = 17
          Width = 65
          Height = 25
          Hint = 'Enable CRC checking of received packets'
          CustomHint = BalloonHint1
          Caption = 'AT+CRC=1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 30
          OnClick = btnSenderClick
        end
        object btnGetATADR: TButton
          Left = 495
          Top = 48
          Width = 65
          Height = 25
          Hint = 'Enable/disable Adaptive Data Rate (0: off, 1: on)'
          CustomHint = BalloonHint1
          Caption = 'AT+ADR'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 31
          OnClick = btnSenderClick
        end
        object btnSetATADR0: TButton
          Left = 574
          Top = 48
          Width = 65
          Height = 25
          Hint = 'Disable Adaptive Data Rate'
          CustomHint = BalloonHint1
          Caption = 'AT+ADR=0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 32
          OnClick = btnSenderClick
        end
        object btnSetATADR1: TButton
          Left = 644
          Top = 48
          Width = 65
          Height = 25
          Hint = 'Enable Adaptive Data Rate'
          CustomHint = BalloonHint1
          Caption = 'AT+ADR=1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 33
          OnClick = btnSenderClick
        end
      end
      object tabSendReceive: TTabSheet
        Caption = 'Send/Receive'
        ImageIndex = 3
        object btnGetATACK: TButton
          Left = 23
          Top = 15
          Width = 65
          Height = 25
          Hint = 
            'Enable to require send acknowledgement (0: off, N: number of ret' +
            'ries until ACK recevied)'
          CustomHint = BalloonHint1
          Caption = 'AT+ACK'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnSenderClick
        end
        object btnSetATACK0: TButton
          Left = 102
          Top = 15
          Width = 65
          Height = 25
          Hint = 'Disable to require send acknowledgement'
          CustomHint = BalloonHint1
          Caption = 'AT+ACK=0'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnSenderClick
        end
        object btnSetATACK1: TButton
          Left = 172
          Top = 15
          Width = 65
          Height = 25
          Hint = 'Enable to require send acknowledgement'
          CustomHint = BalloonHint1
          Caption = 'AT+ACK=1'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnSenderClick
        end
        object edtATSEND: TEdit
          Left = 23
          Top = 46
          Width = 346
          Height = 21
          TabOrder = 3
        end
        object btnATSEND: TButton
          Left = 367
          Top = 44
          Width = 65
          Height = 25
          Hint = 'Send Data Once'
          CustomHint = BalloonHint1
          Caption = 'AT+SEND'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnATSENDClick
        end
      end
    end
  end
  object pnlData: TPanel
    Left = 0
    Top = 305
    Width = 735
    Height = 274
    Align = alClient
    BorderWidth = 4
    TabOrder = 2
    object Memo1: TMemo
      Left = 5
      Top = 5
      Width = 725
      Height = 264
      Align = alClient
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 0
      WantReturns = False
    end
  end
  object ApdComPort1: TApdComPort
    Baud = 115200
    TraceName = 'APRO.TRC'
    LogName = 'APRO.LOG'
    OnPortClose = ApdComPort1PortClose
    OnPortOpen = ApdComPort1PortOpen
    OnTriggerAvail = ApdComPort1TriggerAvail
    Left = 680
    Top = 16
  end
  object BalloonHint1: TBalloonHint
    Delay = 2000
    Left = 624
    Top = 16
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredProps.Strings = (
      'cbATNIHex.Checked'
      'cbATNKHex.Checked'
      'cbxBaud.ItemIndex'
      'cbxDataSize.ItemIndex'
      'cbxStopBit.ItemIndex'
      'cbxParity.ItemIndex'
      'cbxSetATFEC.ItemIndex'
      'cbxSetATFSB.ItemIndex'
      'cbxSetATNJM.ItemIndex'
      'edtATDIPR.Text'
      'edtATDSK.Text'
      'edtATIPR.Text'
      'edtATLOG.Value'
      'edtATNA.Text'
      'edtATNI.Text'
      'edtATNK.Text'
      'edtATNSK.Text'
      'edtATSEND.Text'
      'edtComPort.Value'
      'edtSetATNLC.Value'
      'edtSetATRXDR.Value'
      'edtSetATRXF.Text'
      'edtSetATTXDR.Value'
      'edtSetATTXF.Text'
      'edtSetATTXP.Value')
    StoredValues = <>
    Left = 601
    Top = 238
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    AutoReload = True
    FileName = 'ATCommandsMultiTech.ini'
    SubStorages = <>
    Left = 601
    Top = 182
  end
end
