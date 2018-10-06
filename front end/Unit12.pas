unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses unit8,unit3,unit13;

{$R *.dfm}

procedure TForm12.Button4Click(Sender: TObject);
begin
hide;
Form8.Show;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
with  DataModule3.Query5 do
    begin
      close;
      DataModule3.Query5.SQL.Clear;
      DataModule3.Query5.SQL.Add('delete from SMessage where SMID =:a');
      DataModule3.Query5.ParamByName('a').Value:=Trim(edit1.Text);
      DataModule3.Query5.ExecSQL;
    end;
      application.MessageBox('删除成功！','提示',0+64);
      hide;
      Form8.show;
      DataModule3.DataSource1.DataSet.Close;
      DataModule3.DataSource1.DataSet.Open;
end;

procedure TForm12.Button1Click(Sender: TObject);
begin
hide;
Form13.show;
end;

end.
