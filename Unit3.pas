unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lblNAME: TLabel;
    edt2: TEdit;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add ('insert into kategori value(null, "'+edt1.text+'")');
  DataModule4.Zkategori.ExecSQL;

  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add ('select * from kategori');
  DataModule4.Zkategori.Open;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add ('update kategori set name="'+edt1.Text+'" where id= "'+a+'"');
  DataModule4.Zkategori.ExecSQL;

  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add ('select * from kategori');
  DataModule4.Zkategori.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add ('delete from kategori where id= "'+a+'"');
  DataModule4.Zkategori.ExecSQL;

  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('select * from kategori');
  DataModule4.Zkategori.Open;
  ShowMessage('Data Berhasil Dihapus');

end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:= DataModule4.Zkategori.Fields[1].AsString;
  a:= DataModule4.Zkategori.Fields[0].AsString;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  btn6.Enabled:= True;
  btn1.Enabled:= False;
  btn2.Enabled:= False;
  btn5.Enabled:= False;
  btn3.Enabled:= False;
  btn
end;

end.
