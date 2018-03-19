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
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dm.dsRegExQuickRef
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1Syntax: TcxGridDBColumn
        DataBinding.FieldName = 'Syntax'
        Styles.Content = cxStyle1
        Width = 365
      end
      object cxGrid1DBTableView1Feature: TcxGridDBColumn
        DataBinding.FieldName = 'Feature'
        Width = 253
      end
      object cxGrid1DBTableView1Comment: TcxGridDBColumn
        DataBinding.FieldName = 'Comment'
        PropertiesClassName = 'TcxHyperLinkEditProperties'
        Properties.SingleClick = True
        Properties.UsePrefix = upNever
        Properties.Prefix = ''
        Width = 331
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
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
        Component = cxGrid1DBTableView1Comment
        Properties.Strings = (
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Feature
        Properties.Strings = (
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Syntax
        Properties.Strings = (
          'Width')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'qref.ini'
    Left = 776
    Top = 65528
  end
end
