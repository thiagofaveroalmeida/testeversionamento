object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ano 1858'
  ClientHeight = 222
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 420
    Height = 124
    Align = alTop
    Caption = ' Banco de dados '
    TabOrder = 0
    object Label3: TLabel
      Left = 10
      Top = 18
      Width = 135
      Height = 13
      Caption = 'Caminho do banco de dados'
    end
    object Label4: TLabel
      Left = 11
      Top = 60
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object Label5: TLabel
      Left = 178
      Top = 64
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object Label7: TLabel
      Left = 10
      Top = 105
      Width = 96
      Height = 13
      Caption = 'Status da Conex'#227'o:'
    end
    object lblConexao: TLabel
      Left = 111
      Top = 105
      Width = 308
      Height = 13
      AutoSize = False
    end
    object edCaminhoBanco: TEdit
      Left = 10
      Top = 35
      Width = 327
      Height = 21
      TabOrder = 0
    end
    object edUsuario: TEdit
      Left = 11
      Top = 79
      Width = 160
      Height = 21
      TabOrder = 1
    end
    object edSenha: TEdit
      Left = 175
      Top = 79
      Width = 160
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 340
      Top = 33
      Width = 34
      Height = 26
      Hint = 'Localizar banco de dados'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
        078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
        BEFF00FFFF00FFFF00FF078DBE25A1D171C6E884D7FA66CDF965CDF965CDF965
        CDF965CDF865CDF965CDF866CEF93AADD81999C9FF00FFFF00FF078DBE4CBCE7
        39A8D1A0E2FB6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
        D9C9F0F3078DBEFF00FF078DBE72D6FA078DBEAEE9FC79DCFB79DCFB79DCFB79
        DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9C9F0F3078DBEFF00FF078DBE79DDFB
        1899C79ADFF392E7FC84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
        DAC9F0F31496C4FF00FF078DBE82E3FC43B7DC65C2E0ABF0FC8DEBFC8DEBFC8D
        EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDAC9F0F3C9F0F3078DBE078DBE8AEAFC
        77DCF3219CC7FEFFFFC8F7FDC9F7FDC9F7FDC9F7FEC8F7FEC9F7FDC8F7FE9BD5
        E6EAFEFED2F3F8078DBE078DBE93F0FE93F0FD1697C5078DBE078DBE078DBE07
        8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE9BF5FE
        9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
        BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
        FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
        FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn2: TBitBtn
      Left = 377
      Top = 33
      Width = 34
      Height = 26
      Hint = 'Conectar ao banco de dados'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn2Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF000062
        00000065000000680000006E0000036B0400046E08000276030004760700007D
        0000037A0500047B050006720A0009760E0009780E0000605300006757000063
        5F00026C5B00005F7800006375000184010007800C00088C0D0000970000059F
        07000C8513000D88190011841300108019001296110012892100148E28001D93
        2E001B9A2D001A9E3500249D380018A32E0027B84C0036BA510033C34E002EC6
        5C0036CF540044DD65004BE47E000066CE000268D000056BD300076DD300076D
        D4000B6DD7000A70D8000D73DB000E74DB001177DE00197FDE001277E600187E
        E000197EEA001C82E9002288E0002286EB002186EE00278CEC00298FEB00288E
        EE002A90EE002F95ED003499FE00379CFF003BA0EE003FA5FA003DA2FF0045AB
        FF004AAFFF0058BDFF0000CCFF0011EEED005DC3FF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000033000000000000000000000000003137313100004D4C0000
        000000000031434A31000000004D4C0000313131313F472E0000000000000000
        32323F4B4B3F3100000000000000001338473C4649452E000000000000001C22
        14414B393E452E0000000000000C1F2C27113E45363B310000000000000E2924
        2B1E0F3A4533310000000000000E29231A19150F3831000000000000000E2625
        160A190A1200000000000000001F1B17150A0404004D4C000000000021280802
        0204020000004D4C0000001D2A17020000000000000000000000040608020000
        0000000000000000000020040000000000000000000000000000}
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 124
    Width = 420
    Height = 98
    Align = alBottom
    Caption = ' Informa'#231#245'es de funcion'#225'rio '
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 63
      Top = 19
      Width = 43
      Height = 13
      Caption = 'Matr'#237'cula'
    end
    object Label2: TLabel
      Left = 10
      Top = 19
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label6: TLabel
      Left = 171
      Top = 19
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object edMatricula: TEdit
      Left = 62
      Top = 36
      Width = 105
      Height = 21
      TabOrder = 1
      OnChange = edMatriculaChange
      OnExit = edMatriculaExit
    end
    object edEmpresa: TEdit
      Left = 10
      Top = 36
      Width = 49
      Height = 21
      MaxLength = 4
      TabOrder = 0
      OnExit = edEmpresaExit
      OnKeyPress = edEmpresaKeyPress
    end
    object BitBtn3: TBitBtn
      Left = 11
      Top = 63
      Width = 109
      Height = 25
      Caption = 'Excluir hor'#225'rios'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0732DE0732DEFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FF0732DE
        0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732
        DE0732DEFF00FFFF00FFFF00FF0732DE0732DD0732DE0732DEFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF
        0534ED0732DF0732DE0732DEFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DDFF
        00FF0732DD0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0732DD0633E60633E60633E90732DCFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0633E307
        32E30534EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0732DD0534ED0533E90434EF0434F5FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F40534EF0533EBFF
        00FFFF00FF0434F40335F8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0335FC0534EF0434F8FF00FFFF00FFFF00FFFF00FF0335FC0335FBFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FCFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB
        0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0335FBFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object edNome: TEdit
      Left = 170
      Top = 36
      Width = 240
      Height = 21
      Enabled = False
      TabOrder = 3
      OnExit = edMatriculaExit
    end
    object DateTimePicker1: TDateTimePicker
      Left = 136
      Top = 65
      Width = 186
      Height = 21
      Date = 45235.855452476860000000
      Time = 45235.855452476860000000
      TabOrder = 4
    end
  end
  object Database1: TDatabase
    AliasName = 'Ponto'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 336
    Top = 152
  end
  object qrCria: TQuery
    DatabaseName = 'Ponto10'
    SQL.Strings = (
      'set generator inc_mvrcontador to 1')
    Left = 304
    Top = 152
  end
  object QrAuxiliar: TQuery
    DatabaseName = 'Ponto10'
    SQL.Strings = (
      
        'Insert Into Visualizacao ( VISNUMERO , NCODVAL, CODVAL, ATUALIZA' +
        'CAO ) values'
      '( 1, 0 , '#39'FMFCBMEK'#39', '#39'07/01/2007'#39')')
    Left = 373
    Top = 151
  end
  object IBDados: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTrans
    Left = 336
    Top = 96
  end
  object IBQuery1: TIBQuery
    Database = IBDados
    Transaction = IBTrans
    Left = 288
    Top = 96
  end
  object IBTrans: TIBTransaction
    Left = 240
    Top = 96
  end
  object IBEmpresa: TIBQuery
    Database = IBDados
    Transaction = IBTrans
    Left = 192
    Top = 96
  end
  object IBFuncionario: TIBQuery
    Database = IBDados
    Transaction = IBTrans
    Left = 152
    Top = 96
  end
  object opdBancoDeDados: TOpenDialog
    Filter = 'Interbase Database *.GDB|*.GDB'
    Left = 264
    Top = 52
  end
end
