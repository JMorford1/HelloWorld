object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Hello World Demonstration (in complex way!)'
  ClientHeight = 976
  ClientWidth = 1176
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object OutputMemo: TMemo
    Left = 345
    Top = 0
    Width = 831
    Height = 976
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 376
    ExplicitTop = 176
    ExplicitWidth = 393
    ExplicitHeight = 377
  end
  object ControlsPanel: TPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 976
    Align = alLeft
    Caption = 'ControlsPanel'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -6
    object ExitButton: TButton
      Left = 56
      Top = 64
      Width = 177
      Height = 41
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ExitButtonClick
    end
    object PrintAsStringButton: TButton
      Left = 56
      Top = 160
      Width = 249
      Height = 49
      Caption = 'Print Hello World as String'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = PrintAsStringButtonClick
    end
  end
end
