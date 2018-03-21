object dm: Tdm
  OldCreateOrder = False
  Height = 567
  Width = 629
  object dsRegExs: TDataSource
    DataSet = tblRegExs
    Left = 96
    Top = 216
  end
  object dsRegEx_items: TDataSource
    DataSet = tblRegEx_items
    Left = 248
    Top = 216
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DB.mdb;Persist Secu' +
      'rity Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 96
    Top = 72
  end
  object tblRegExs: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'RegExs'
    Left = 96
    Top = 144
    object tblRegExsRegExID: TAutoIncField
      FieldName = 'RegExID'
      ReadOnly = True
    end
    object tblRegExsNr: TIntegerField
      FieldName = 'Nr'
    end
    object tblRegExsDescription: TWideStringField
      FieldName = 'Description'
      Size = 255
    end
  end
  object tblRegEx_items: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    MasterFields = 'RegExID'
    MasterSource = dsRegExs
    TableDirect = True
    TableName = 'RegEx_items'
    Left = 248
    Top = 144
    object tblRegEx_itemsRegExItemID: TAutoIncField
      FieldName = 'RegExItemID'
      ReadOnly = True
    end
    object tblRegEx_itemsRegExID: TIntegerField
      FieldName = 'RegExID'
    end
    object tblRegEx_itemsNr: TIntegerField
      FieldName = 'Nr'
    end
    object tblRegEx_itemsContent: TWideStringField
      FieldName = 'Content'
      Size = 255
    end
    object tblRegEx_itemsComment: TWideMemoField
      FieldName = 'Comment'
      BlobType = ftWideMemo
    end
  end
  object tblRegExQuickRef: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'RegExQuickRef'
    Left = 368
    Top = 144
    object tblRegExQuickRefID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tblRegExQuickRefSyntax: TWideStringField
      FieldName = 'Syntax'
      Size = 255
    end
    object tblRegExQuickRefFeature: TWideStringField
      FieldName = 'Feature'
      Size = 255
    end
    object tblRegExQuickRefComment: TWideMemoField
      FieldName = 'Comment'
      BlobType = ftWideMemo
    end
  end
  object dsRegExQuickRef: TDataSource
    DataSet = tblRegExQuickRef
    Left = 368
    Top = 216
  end
end
