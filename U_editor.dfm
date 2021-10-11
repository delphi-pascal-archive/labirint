object frmeditor: Tfrmeditor
  Left = 642
  Top = 243
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Map editor'
  ClientHeight = 483
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC8888CCCCCCC0000CCCC00000000CCCC8888CCCCCCCC
    C0000CCCCCCCCCCCCCC8888CCCCC0CCCCC0000CCCCCCCCCCCC8888CCCCC800CC
    C00CCCC0000000000CCCC88CCC88000C0000CCCC00000000CCCC8888C8880000
    00000CCCC000000CCCC888888888C000C00000CCCC0000CCCC88888C888CCC00
    CC00000CCCCCCCCCC88888CC88CCCCC0CCC000CCCCC00CCCCC888CCC8CCCCCCC
    CCCC0CCCCCCCCCCCCCC8CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC8CCC80CCC
    00CCCCCCCC0CC0CCCCCCCC88CC8800CC000CCCCCC000000CCCCCC888CC8800CC
    0000CCCC00000000CCCC8888CC8800CC0000C0CCC000000CCC8C8888CC8800CC
    0000C0CCC000000CCC8C8888CC8800CC0000CCCC00000000CCCC8888CC8800CC
    000CCCCCC000000CCCCCC888CC8800CC00CCCCCCCC0CC0CCCCCCCC88CC880CCC
    0CCCCCCCCCCCCCCCCCCCCCC8CCC8CCCCCCCC0CCCCCCCCCCCCCC8CCCCCCCCCCC0
    CCC000CCCCC00CCCCC888CCC8CCCCC00CC00000CCCCCCCCCC88888CC88CCC000
    C00000CCCC0000CCCC88888C888C000000000CCCC000000CCCC888888888000C
    0000CCCC00000000CCCC8888C88800CCC00CCCC0000000000CCCC88CCC880CCC
    CC0000CCCCCCCCCCCC8888CCCCC8CCCCC0000CCCCCCCCCCCCCC8888CCCCCCCCC
    0000CCCC00000000CCCC8888CCCCCCC0000CCCC0000000000CCCC8888CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 483
    Top = 0
    Width = 81
    Height = 483
    Align = alRight
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object bola: TImage
      Left = 44
      Top = 12
      Width = 15
      Height = 15
      Hint = 'Bola'
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        07544269746D617006030000424D060300000000000036000000280000000F00
        00000F0000000100180000000000D0020000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF0000FF0000
        FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FFFF00FFFF00FF00
        0000FF00FFFF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF00FFFF00FF000000FF00FFFF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF00
        0000FF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF00FF000000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000000000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000000000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000
        0000FF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF00FF000000FF00FFFF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF00
        0000FF00FFFF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF00FFFF00FF000000FF00FFFF00FFFF00FFFF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FFFF00FFFF00FF00
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF0000FF0000
        FF00FFFF00FFFF00FFFF00FFFF00FF000000}
      ShowHint = True
      Transparent = True
    end
    object parede: TImage
      Left = 44
      Top = 41
      Width = 15
      Height = 15
      Hint = 'Parede'
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        07544269746D617006030000424D060300000000000036000000280000000F00
        00000F0000000100180000000000D0020000C40E0000C40E0000000000000000
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
        000000000000000000000000000000000000}
      ShowHint = True
    end
    object limpar: TBevel
      Left = 44
      Top = 99
      Width = 19
      Height = 19
      Hint = 'Limpar'
      ParentShowHint = False
      ShowHint = True
    end
    object final: TImage
      Left = 44
      Top = 71
      Width = 15
      Height = 15
      Hint = 'Final'
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        07544269746D617006030000424D060300000000000036000000280000000F00
        00000F0000000100180000000000D0020000C40E0000C40E0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
        0000FF00FFFF00FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FF0000FF
        0000FF0000FFFF00FFFF00FFFF00FF000000FF00FF0000FF0000FF0000FF0000
        FF0000FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FF00
        0000FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FFFF00FFFF00FF000000FF00FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FF00
        0000FF00FFFF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FF0000
        FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FF00
        0000FF00FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FFFF00FF00
        0000FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FFFF00FFFF00FF000000FF00FF0000FF0000FF0000FF0000
        FF0000FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FF00
        0000FF00FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FF0000FF0000FF
        0000FF0000FF0000FFFF00FFFF00FF000000FF00FFFF00FF0000FF0000FF0000
        FFFF00FFFF00FFFF00FFFF00FF0000FF0000FF0000FFFF00FFFF00FFFF00FF00
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF000000}
      ShowHint = True
      Transparent = True
    end
    object RBbola: TRadioButton
      Left = 20
      Top = 10
      Width = 21
      Height = 21
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = FOCAR
    end
    object RBparede: TRadioButton
      Left = 20
      Top = 40
      Width = 21
      Height = 21
      TabOrder = 1
      OnClick = FOCAR
    end
    object RBlimpar: TRadioButton
      Left = 20
      Top = 99
      Width = 21
      Height = 21
      TabOrder = 2
      OnClick = FOCAR
    end
    object btsalvar: TButton
      Left = 8
      Top = 232
      Width = 65
      Height = 25
      Caption = 'Save'
      TabOrder = 3
      OnClick = SALVAR_MAPAS
    end
    object btcarregar: TButton
      Left = 8
      Top = 264
      Width = 65
      Height = 25
      Caption = 'Open'
      TabOrder = 4
      OnClick = CARREGAR_MAPAS
    end
    object RBfinal: TRadioButton
      Left = 20
      Top = 70
      Width = 21
      Height = 20
      TabOrder = 5
      OnClick = FOCAR
    end
    object btnovo: TButton
      Left = 8
      Top = 296
      Width = 65
      Height = 25
      Caption = 'New'
      TabOrder = 6
      OnClick = NOVO_MAPA
    end
    object btfechar: TButton
      Left = 8
      Top = 448
      Width = 65
      Height = 25
      Caption = 'Close'
      TabOrder = 7
      OnClick = btfecharClick
    end
  end
  object MAPA: TDrawGrid
    Left = 0
    Top = 0
    Width = 483
    Height = 483
    Align = alClient
    BorderStyle = bsNone
    Color = clSilver
    ColCount = 30
    DefaultColWidth = 15
    DefaultRowHeight = 15
    FixedColor = clBlack
    FixedCols = 0
    RowCount = 30
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ScrollBars = ssNone
    TabOrder = 1
    OnDrawCell = DESENHAR
    OnSelectCell = MAPASelectCell
  end
  object abrir: TOpenDialog
    DefaultExt = '*.mp'
    Filter = 'MAPAS|*.mp'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Open map'
    Left = 56
    Top = 24
  end
  object salvar: TSaveDialog
    DefaultExt = '*.mp'
    Filter = 'MAPAS|*.mp'
    Title = 'Save map'
    Left = 24
    Top = 24
  end
end