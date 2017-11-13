object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 531
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 69
    Top = 10
    Width = 107
    Height = 13
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082': '#1053#1077#1084#1080#1088#1082#1086
  end
  object Label2: TLabel
    Left = 33
    Top = 29
    Width = 30
    Height = 13
    Caption = #1058#1086#1074#1072#1088
  end
  object Label3: TLabel
    Left = 96
    Top = 29
    Width = 35
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086
  end
  object Label4: TLabel
    Left = 147
    Top = 29
    Width = 86
    Height = 13
    Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091
  end
  object Label5: TLabel
    Left = 332
    Top = 10
    Width = 104
    Height = 13
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082': '#1064#1084#1072#1082#1086#1074
  end
  object Label6: TLabel
    Left = 296
    Top = 29
    Width = 30
    Height = 13
    Caption = #1058#1086#1074#1072#1088
  end
  object Label7: TLabel
    Left = 359
    Top = 29
    Width = 35
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086
  end
  object Label8: TLabel
    Left = 410
    Top = 29
    Width = 86
    Height = 13
    Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091
  end
  object Label9: TLabel
    Left = 595
    Top = 10
    Width = 113
    Height = 13
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082': '#1052#1072#1088#1082#1080#1079#1086#1074
  end
  object Label10: TLabel
    Left = 559
    Top = 29
    Width = 30
    Height = 13
    Caption = #1058#1086#1074#1072#1088
  end
  object Label11: TLabel
    Left = 622
    Top = 29
    Width = 35
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086
  end
  object Label12: TLabel
    Left = 673
    Top = 29
    Width = 86
    Height = 13
    Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1091
  end
  object Label13: TLabel
    Left = 526
    Top = 221
    Width = 79
    Height = 13
    Caption = #1060#1048#1054' '#1079#1072#1103#1074#1080#1090#1077#1083#1103
  end
  object Label14: TLabel
    Left = 526
    Top = 261
    Width = 88
    Height = 13
    Caption = #1060#1048#1054' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
  end
  object Label15: TLabel
    Left = 526
    Top = 307
    Width = 112
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
  end
  object Label16: TLabel
    Left = 526
    Top = 353
    Width = 60
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Label17: TLabel
    Left = 701
    Top = 288
    Width = 37
    Height = 13
    Caption = 'Label17'
    Visible = False
  end
  object Label18: TLabel
    Left = 528
    Top = 400
    Width = 82
    Height = 13
    Caption = #1040#1076#1088#1077#1089' '#1076#1086#1089#1090#1072#1074#1082#1080
  end
  object Label19: TLabel
    Left = 528
    Top = 447
    Width = 63
    Height = 13
    Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
  end
  object Label20: TLabel
    Left = 701
    Top = 330
    Width = 37
    Height = 13
    Caption = 'Label20'
    Visible = False
  end
  object Button1: TButton
    Left = 558
    Top = 490
    Width = 99
    Height = 41
    Caption = #1055#1086#1076#1072#1090#1100' '#1079#1072#1103#1074#1082#1091
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 48
    Width = 257
    Height = 148
    DataSource = DataSource1
    PanelHeight = 37
    PanelWidth = 241
    TabOrder = 1
    RowCount = 4
    object DBText1: TDBText
      Left = 23
      Top = 8
      Width = 65
      Height = 17
      DataField = 'NameTovar'
      DataSource = DataSource1
    end
    object DBText2: TDBText
      Left = 104
      Top = 8
      Width = 65
      Height = 17
      DataField = 'Col-vo'
      DataSource = DataSource1
    end
    object DBText3: TDBText
      Left = 175
      Top = 8
      Width = 57
      Height = 17
      DataField = 'CenaZaEdin'
      DataSource = DataSource1
    end
  end
  object DBCtrlGrid2: TDBCtrlGrid
    Left = 263
    Top = 48
    Width = 257
    Height = 148
    DataSource = DataSource2
    PanelHeight = 37
    PanelWidth = 241
    TabOrder = 2
    RowCount = 4
    object DBText4: TDBText
      Left = 17
      Top = 8
      Width = 65
      Height = 17
      DataField = 'NameTovar'
      DataSource = DataSource2
    end
    object DBText5: TDBText
      Left = 104
      Top = 8
      Width = 65
      Height = 17
      DataField = 'Col-vo'
      DataSource = DataSource2
    end
    object DBText6: TDBText
      Left = 175
      Top = 8
      Width = 57
      Height = 17
      DataField = 'CenaZaEdin'
      DataSource = DataSource2
    end
  end
  object DBCtrlGrid3: TDBCtrlGrid
    Left = 526
    Top = 48
    Width = 257
    Height = 148
    DataSource = DataSource3
    PanelHeight = 37
    PanelWidth = 241
    TabOrder = 3
    RowCount = 4
    object DBText7: TDBText
      Left = 17
      Top = 8
      Width = 65
      Height = 17
      DataField = 'NameTovar'
      DataSource = DataSource3
    end
    object DBText8: TDBText
      Left = 104
      Top = 8
      Width = 65
      Height = 17
      DataField = 'Col-vo'
      DataSource = DataSource3
    end
    object DBText9: TDBText
      Left = 175
      Top = 8
      Width = 57
      Height = 17
      DataField = 'CenaZaEdin'
      DataSource = DataSource3
    end
  end
  object Edit1: TEdit
    Left = 526
    Top = 240
    Width = 169
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 526
    Top = 372
    Width = 169
    Height = 21
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 526
    Top = 280
    Width = 169
    Height = 21
    KeyField = 'FIO'
    ListField = 'FIO'
    ListSource = DataSource4
    TabOrder = 6
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 526
    Top = 326
    Width = 169
    Height = 21
    KeyField = 'NameTovar'
    ListField = 'NameTovar'
    ListSource = DataSource5
    TabOrder = 7
  end
  object Edit2: TEdit
    Left = 526
    Top = 420
    Width = 169
    Height = 21
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 528
    Top = 463
    Width = 167
    Height = 21
    TabOrder = 9
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 40
    Top = 160
  end
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Nemirko;')
    Left = 72
    Top = 160
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 264
    Top = 160
  end
  object ADOQuery2: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Schmakov;')
    Left = 296
    Top = 160
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 528
    Top = 160
  end
  object ADOQuery3: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Markizov;')
    Left = 560
    Top = 160
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery6
    Left = 392
    Top = 432
  end
  object ADOQuery6: TADOQuery
    Parameters = <>
    Left = 448
    Top = 432
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 472
    Top = 272
  end
  object ADOQuery4: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'select FIO, postavchikFIO from postavchik;')
    Left = 560
    Top = 272
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 352
    Top = 328
  end
  object ADOQuery5: TADOQuery
    Parameters = <>
    Left = 456
    Top = 328
  end
end
