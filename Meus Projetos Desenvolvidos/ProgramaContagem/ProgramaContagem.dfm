object Form1: TForm1
  Left = 532
  Top = 127
  Width = 316
  Height = 200
  Caption = 'Form1'
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    300
    161)
  PixelsPerInch = 96
  TextHeight = 13
  object CONT: TButton
    Left = 8
    Top = 8
    Width = 49
    Height = 41
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = CONTClick
  end
  object visor: TEdit
    Left = 200
    Top = 8
    Width = 73
    Height = 32
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    Color = clInactiveCaptionText
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Agency FB'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = '0'
  end
  object upgrade: TEdit
    Left = 200
    Top = 32
    Width = 73
    Height = 32
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    Color = clInactiveCaptionText
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Agency FB'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = '1'
  end
  object UP: TButton
    Left = 8
    Top = 56
    Width = 49
    Height = 41
    Caption = 'm'
    Enabled = False
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Webdings'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = UPClick
  end
  object POWER: TButton
    Left = 8
    Top = 104
    Width = 49
    Height = 41
    Caption = '~'
    Enabled = False
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Webdings'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = POWERClick
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 272
  end
end
