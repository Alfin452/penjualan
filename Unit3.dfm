object Form3: TForm3
  Left = 601
  Top = 174
  Width = 534
  Height = 366
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNAME: TLabel
    Left = 56
    Top = 40
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object edt1: TEdit
    Left = 96
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 96
    Top = 72
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 184
    Top = 72
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 72
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 112
    Width = 320
    Height = 120
    DataSource = DataModule4.dskategori
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 64
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 208
    Top = 248
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
end
