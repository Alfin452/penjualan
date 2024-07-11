object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 281
  Width = 351
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = '2210010359 muhammad alfin nur huda penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\DELPHI VISUAL\libmysql.dll'
    Left = 24
    Top = 64
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from kategori')
    Params = <>
    Left = 96
    Top = 40
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 96
    Top = 104
  end
end
