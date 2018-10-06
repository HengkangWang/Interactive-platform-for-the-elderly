unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses unit2,unit3,unit4;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   with  DataModule3.Query1 do
    begin
      close;
      DataModule3.Query1.SQL.Clear;
      DataModule3.Query1.SQL.Add('select * from NUser where(ID =:a)and(password=:b)');
      DataModule3.Query1.ParamByName('a').Value:=Trim(edit1.Text);
      DataModule3.Query1.ParamByName('b').Value:=Trim(edit2.Text);
      Open;
    end;
      if DataModule3.Query1.RecordCount >0 then
      begin
      hide;
      form2.Show;
      form2.Label2.Caption:=DataModule3.Query1.fieldbyname('name').Value;
      DataModule3.Query1.FetchAll;
      end
      else
      begin
      application.MessageBox('您输入的账号密码错误！','提示',0+64);
      end
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
      hide;
      Form4.show;
end;
end.
