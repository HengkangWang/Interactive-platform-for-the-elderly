unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TForm17 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

uses unit18, Unit3, Unit8;
{$R *.dfm}

procedure TForm17.Button2Click(Sender: TObject);
begin
with  DataModule3.Query7 do
    begin
      close;
      DataModule3.Query7.SQL.Clear;
      DataModule3.Query7.SQL.Add('delete from HMessage where HMID =:a');
      DataModule3.Query7.ParamByName('a').Value:=Trim(edit1.Text);
      ExecSQL;
    end;
      application.MessageBox('删除成功！','提示',0+64);
      hide;
      Form8.show;
      DataModule3.DataSource2.DataSet.Close;
      DataModule3.DataSource2.DataSet.Open;
end;

procedure TForm17.Button1Click(Sender: TObject);
begin
hide;
Form18.show;
end;

procedure TForm17.Button4Click(Sender: TObject);
begin
hide;
Form8.show;
end;

end.
