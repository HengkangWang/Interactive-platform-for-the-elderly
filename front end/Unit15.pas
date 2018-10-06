unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm15 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses Unit3, Unit8;

{$R *.dfm}

procedure TForm15.Button1Click(Sender: TObject);
begin
with DataModule3.Query7 do
  begin
  close;
  DataModule3.Query7.SQL.Clear;
  DataModule3.Query7.SQL.Add('insert into HMessage(content,HID)values(:a,:b)');
  DataModule3.Query7.ParamByName('a').Value:=Memo1.Lines.Text;
  DataModule3.Query7.ParamByName('b').Value:=DataModule3.Query6.fieldbyname('HID').Value;
  DataModule3.Query7.ExecSQL;
  application.MessageBox('发布成功！','提示',0+64);
  hide;
  Form8.Show;
  DataModule3.DataSource2.DataSet.Close;
  DataModule3.DataSource2.DataSet.Open;
  end;
end;

procedure TForm15.Button4Click(Sender: TObject);
begin
hide;
Form8.show;
end;

end.
