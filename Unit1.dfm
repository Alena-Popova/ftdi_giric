object Form1: TForm1
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 250
  Caption = 'FTDI - LINK'
  ClientHeight = 522
  ClientWidth = 718
  Color = clMenuBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 8
    Top = 507
    Width = 37
    Height = 13
    Caption = 'Label15'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 702
    Height = 89
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074' '#1087#1086#1088#1090#1072
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 61
      Height = 13
      Caption = 'COM - '#1087#1086#1088#1090':'
    end
    object Label2: TLabel
      Left = 264
      Top = 21
      Width = 146
      Height = 13
      Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1087#1077#1088#1077#1076#1072#1095#1080' '#1076#1072#1085#1085#1099#1093':'
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 40
      Width = 201
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102' (COM3)'
      Items.Strings = (
        'COM0'
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8'
        'COM9')
    end
    object ComboBox2: TComboBox
      Left = 264
      Top = 40
      Width = 201
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102' (19200)'
    end
  end
  object PageControl2: TPageControl
    Left = 8
    Top = 103
    Width = 702
    Height = 402
    ActivePage = TabSheet5
    TabOrder = 1
    object TabSheet4: TTabSheet
      Caption = #1055#1088#1080#1085#1103#1090#1099#1077' '#1076#1072#1085#1085#1099#1077
      object Label3: TLabel
        Left = 240
        Top = 15
        Width = 138
        Height = 19
        Caption = #1055#1088#1080#1085#1103#1090#1099#1077' '#1076#1072#1085#1085#1099#1077':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 240
        Top = 167
        Width = 142
        Height = 19
        Caption = #1054#1082#1085#1086' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Button4: TButton
        Left = 13
        Top = 96
        Width = 134
        Height = 34
        Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100' '#1095#1090#1077#1085#1080#1077
        TabOrder = 0
        OnClick = Button4Click
      end
      object Memo1: TMemo
        Left = 240
        Top = 40
        Width = 429
        Height = 105
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object Memo2: TMemo
        Left = 240
        Top = 208
        Width = 429
        Height = 96
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object Button3: TButton
        Left = 13
        Top = 32
        Width = 134
        Height = 34
        Caption = #1053#1072#1095#1072#1090#1100' '#1095#1090#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button3Click
      end
      object ComboBox3: TComboBox
        Left = 13
        Top = 256
        Width = 200
        Height = 21
        Color = clScrollBar
        TabOrder = 4
        Text = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1091#1078#1085#1091#1102' '#1042#1072#1084' '#1086#1087#1077#1088#1072#1094#1080#1102
        Items.Strings = (
          '1 - '#1056#1077#1078#1080#1084' "'#1063#1090#1077#1085#1080#1077'"; '
          '2 - '#1056#1077#1078#1080#1084' "'#1059#1089#1080#1083#1077#1085#1080#1077'"; '
          '3 - '#1056#1077#1078#1080#1084' "'#1051#1080#1085#1077#1081#1085#1086#1089#1090#1100'";'
          '4 - '#1056#1077#1078#1080#1084' "'#1057#1084#1077#1097#1077#1085#1080#1077'";'
          '5 - '#1056#1077#1078#1080#1084' "'#1054#1090#1085#1086#1096#1077#1085#1080#1077' 1'#1058'";'
          '6 - '#1056#1077#1078#1080#1084' "'#1054#1090#1085#1086#1096#1077#1085#1080#1077' 2'#1058'";'
          '7 - '#1056#1077#1078#1080#1084' "'#1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077'".')
      end
      object Button7: TButton
        Left = 13
        Top = 208
        Width = 134
        Height = 34
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1082#1086#1084#1084#1072#1085#1076#1091'!'
        TabOrder = 5
        OnClick = Button7Click
      end
      object Button1: TButton
        Left = 240
        Top = 320
        Width = 134
        Height = 34
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1086#1082#1085#1072
        TabOrder = 6
        OnClick = Button1Click
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' ('#1075#1088#1072#1092#1080#1082'), '#1050#1042', '#1044#1042
      ImageIndex = 2
      object Label13: TLabel
        Left = 139
        Top = 109
        Width = 55
        Height = 19
        Caption = 'Label13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 139
        Top = 167
        Width = 55
        Height = 19
        Caption = 'Label14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 12
        Top = 167
        Width = 112
        Height = 16
        Caption = '8 '#1089#1083#1086#1074#1086', '#1044#1042' (dec) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 12
        Top = 56
        Width = 101
        Height = 19
        Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 139
        Top = 56
        Width = 55
        Height = 19
        Caption = 'Label10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 12
        Top = 112
        Width = 110
        Height = 16
        Caption = '6 '#1089#1083#1086#1074#1086', '#1050#1042' (dec) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 232
        Top = 343
        Width = 37
        Height = 13
        Caption = 'Label16'
      end
      object Chart1: TChart
        Left = 232
        Top = 20
        Width = 449
        Height = 317
        AllowPanning = pmHorizontal
        Legend.CheckBoxesStyle = cbsRadio
        Legend.ColorWidth = 5
        Legend.CustomPosition = True
        Legend.Left = 404
        Legend.LeftPercent = 90
        Legend.PositionUnits = muPercent
        Legend.ResizeChart = False
        Legend.Symbol.Width = 5
        Legend.TextStyle = ltsXValue
        Legend.Title.Text.Strings = (
          'ggv')
        Legend.Title.TextAlignment = taCenter
        Legend.Top = 0
        Legend.VertSpacing = 1
        Legend.Visible = False
        SubTitle.Brush.Gradient.EndColor = 13556735
        SubTitle.Brush.Gradient.MidColor = 14739177
        SubTitle.Brush.Gradient.StartColor = 16774122
        SubTitle.Brush.Gradient.Visible = True
        SubTitle.Text.Strings = (
          '')
        SubTitle.Visible = False
        Title.Text.Strings = (
          #1043#1088#1072#1092#1080#1082' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1099)
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.LabelsAngle = 90
        BottomAxis.Maximum = 24.000000000000000000
        BottomAxis.Title.Caption = #1042#1088#1077#1084#1103
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.AxisValuesFormat = '0.#'
        LeftAxis.Title.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' ('#176'C)'
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        TabOrder = 0
        PrintMargins = (
          15
          14
          15
          14)
        ColorPaletteIndex = 13
        object Series1: TFastLineSeries
          Cursor = crHandPoint
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Style = smsXValue
          Marks.Visible = False
          ValueFormat = '0.0'
          LinePen.Color = 10708548
          LinePen.Width = 5
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1059#1075#1083#1086#1074#1072#1103' '#1076#1080#1072#1075#1088#1072#1084#1084#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label8: TLabel
        Left = 368
        Top = 21
        Width = 223
        Height = 23
        BiDiMode = bdLeftToRight
        Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1103' '#1089' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072':'
        ParentBiDiMode = False
      end
      object Label5: TLabel
        Left = 18
        Top = 158
        Width = 40
        Height = 19
        Caption = #1059#1075#1086#1083':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 18
        Top = 112
        Width = 195
        Height = 19
        Caption = #1057#1087#1077#1082#1090#1088#1072#1083#1100#1085#1086#1077' '#1086#1090#1085#1086#1096#1077#1085#1080#1077':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 232
        Top = 112
        Width = 46
        Height = 19
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 64
        Top = 152
        Width = 149
        Height = 31
        TabOrder = 0
      end
      object Memo3: TMemo
        Left = 368
        Top = 69
        Width = 305
        Height = 207
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object Button5: TButton
        Left = 18
        Top = 22
        Width = 320
        Height = 25
        Caption = #1057#1085#1103#1090#1100' '#1089#1087#1077#1082#1090#1088#1072#1083#1100#1085#1086#1077' '#1086#1090#1085#1086#1096#1077#1085#1080#1077' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button5Click
      end
      object CheckBox1: TCheckBox
        Left = 18
        Top = 69
        Width = 167
        Height = 25
        Caption = #1047#1072#1087#1080#1089#1100' '#1074' '#1092#1072#1081#1083
        TabOrder = 3
      end
      object StringGrid1: TStringGrid
        Left = 18
        Top = 189
        Width = 320
        Height = 120
        ColCount = 2
        DefaultColWidth = 150
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object Button6: TButton
        Left = 368
        Top = 288
        Width = 101
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 5
        OnClick = Button6Click
      end
      object Edit2: TEdit
        Left = 173
        Top = 69
        Width = 165
        Height = 31
        TabOrder = 6
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 576
    Top = 32
    object N1: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
      object N3: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N3Click
      end
      object N7: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N7Click
      end
    end
    object N2: TMenuItem
      Caption = #1058#1077#1093'.'#1055#1086#1076#1076#1077#1088#1078#1082#1072
      object N4: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N4Click
      end
      object N8: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        OnClick = N8Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 656
    Top = 32
  end
end
