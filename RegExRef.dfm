object frmRegExRef: TfrmRegExRef
  Left = 0
  Top = 0
  Caption = 'Regular Expressions Quick Reference'
  ClientHeight = 622
  ClientWidth = 1023
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1023
    Height = 622
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object gridRegExQref: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dm.dsRegExQuickRef
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.DataRowSizing = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.DataRowHeight = 30
      OptionsView.Indicator = True
      object gridRegExQrefID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridRegExQrefSyntax: TcxGridDBColumn
        DataBinding.FieldName = 'Syntax'
        Styles.Content = cxStyle1
        Width = 365
      end
      object gridRegExQrefFeature: TcxGridDBColumn
        DataBinding.FieldName = 'Feature'
        Width = 253
      end
      object gridRegExQrefComment: TcxGridDBColumn
        DataBinding.FieldName = 'Comment'
        PropertiesClassName = 'TcxMemoProperties'
        Width = 331
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridRegExQref
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 920
    Top = 8
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
    end
  end
  object cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end
      item
        Component = gridRegExQref
        Properties.Strings = (
          'OptionsView.DataRowHeight')
      end
      item
        Component = gridRegExQrefComment
        Properties.Strings = (
          'Width')
      end
      item
        Component = gridRegExQrefFeature
        Properties.Strings = (
          'Width')
      end
      item
        Component = gridRegExQrefSyntax
        Properties.Strings = (
          'Width')
      end>
    StorageName = 'qref.ini'
    Left = 776
    Top = 65528
  end
end
