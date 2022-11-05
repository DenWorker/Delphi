object Form3: TForm3
  Left = 542
  Top = 112
  BorderStyle = bsToolWindow
  ClientHeight = 460
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object sLabel1: TsLabel
    Left = 8
    Top = 0
    Width = 81
    Height = 24
    Alignment = taCenter
    Caption = #1048#1089#1090#1088#1086#1080#1103
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
  end
  object sRichEdit1: TsRichEdit
    Left = 8
    Top = 32
    Width = 281
    Height = 385
    Cursor = crCross
    Hint = #1048#1089#1090#1086#1088#1080#1103' '#1074#1089#1077#1093' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1077#1081
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4473924
    Font.Height = -11
    Font.Name = 'Arial Black'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ParentShowHint = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    ScrollBars = ssBoth
    ShowHint = True
    TabOrder = 0
    Text = #13#10
  end
  object sBitBtn1: TsBitBtn
    Left = 8
    Top = 424
    Width = 281
    Height = 25
    Cursor = crHandPoint
    Hint = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1086#1082#1085#1086
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = sBitBtn1Click
  end
  object sColorDialog1: TsColorDialog
    Left = 296
    Top = 136
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 296
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 200
    object N1: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1096#1088#1080#1092#1090
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1094#1074#1077#1090
      OnClick = N2Click
    end
  end
end
