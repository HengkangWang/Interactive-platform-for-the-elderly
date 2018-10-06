unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses unit8,unit3;

{$R *.dfm}

procedure TForm10.Button4Click(Sender: TObject);
begin
hide;
Form8.show;
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
 with DataModule3.Query4 do
  begin
  close;
  DataModule3.Query4.SQL.Clear;
  DataModule3.Query4.SQL.Add('insert into SMessage(content,SID)values(:a,:b)');
  DataModule3.Query4.ParamByName('a').Value:=Memo1.Lines.Text;
  DataModule3.Query4.ParamByName('b').Value:=DataModule3.Query3.fieldbyname('SID').Value;
  DataModule3.Query4.ExecSQL;
  application.MessageBox('发布成功！','提示',0+64);
  hide;
  Form8.Show;
  DataModule3.DataSource1.DataSet.Close;
  DataModule3.DataSource1.DataSet.Open;
  end;
end;

end.
