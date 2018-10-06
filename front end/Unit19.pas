unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm19 = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

uses Unit3, Unit20, Unit21, Unit22, Unit23;

{$R *.dfm}

procedure TForm19.Button1Click(Sender: TObject);
begin
with  DataModule3.Query8 do
    begin
      close;
      DataModule3.Query8.SQL.Clear;
      DataModule3.Query8.SQL.Add('select * from Community where(CID =:a)and(password=:b)');
      DataModule3.Query8.ParamByName('a').Value:=Trim(edit1.Text);
      DataModule3.Query8.ParamByName('b').Value:=Trim(edit2.Text);
      Open;
    end;
      if DataModule3.Query8.RecordCount >0 then
      begin
      hide;
      form21.Show;
      form20.Label2.Caption:=DataModule3.Query8.fieldbyname('name').Value;
      form21.Label2.Caption:=DataModule3.Query8.fieldbyname('name').Value;
      form22.Label2.Caption:=DataModule3.Query8.fieldbyname('name').Value;
      form23.Label2.Caption:=DataModule3.Query8.fieldbyname('name').Value;
      DataModule3.Query8.FetchAll;
      end
      else
      begin
      application.MessageBox('您输入的账号密码错误！','提示',0+64);
      end
end;

end.
