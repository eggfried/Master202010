object FormFindBook: TFormFindBook
  Left = 0
  Top = 0
  Caption = #46020#49436' '#44160#49353
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanelHeader: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 22
      Height = 13
      Caption = #44160#49353
    end
    object EditSearch: TEdit
      Left = 48
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyUp = EditSearchKeyUp
    end
    object CheckBoxSearchTitle: TCheckBox
      Left = 175
      Top = 13
      Width = 50
      Height = 17
      Caption = #51228#47785
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBoxSearchAuthor: TCheckBox
      Left = 231
      Top = 13
      Width = 50
      Height = 17
      Caption = #51200#51088
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object DBGridList: TDBGrid
    Left = 0
    Top = 41
    Width = 635
    Height = 217
    Align = alClient
    DataSource = DataSourceFindBook
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyUp = DBGridListKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'BOOK_TITLE'
        Title.Caption = #51228#47785
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOOK_AUTHOR'
        Title.Caption = #51200#51088
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOOK_PRICE'
        Title.Caption = #44032#44201
        Visible = True
      end>
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 258
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 350
    ExplicitTop = 167
    ExplicitWidth = 185
    DesignSize = (
      635
      41)
    object ButtonSelect: TButton
      Left = 432
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #49440#53469
      ModalResult = 1
      TabOrder = 0
      OnClick = ButtonSelectClick
    end
    object ButtonClose: TButton
      Left = 520
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #45803#44592
      ModalResult = 2
      TabOrder = 1
    end
  end
  object DataSourceFindBook: TDataSource
    DataSet = DataModuleDataAccess.FDQueryFindBook
    Left = 536
    Top = 128
  end
end
