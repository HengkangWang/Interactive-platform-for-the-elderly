unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm14 = class(TForm)
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
  Form14: TForm14;

implementation

uses Unit3, Unit11, Unit15, Unit16, Unit17, Unit18;

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
begin
with  DataModule3.Query6 do
    begin
      close;
      DataModule3.Query6.SQL.Clear;
      DataModule3.Query6.SQL.Add('select * from Hospital where(HID =:a)and(password=:b)');
      DataModule3.Query6.ParamByName('a').Value:=Trim(edit1.Text);
      DataModule3.Query6.ParamByName('b').Value:=Trim(edit2.Text);
      Open;
    end;
      if DataModule3.Query6.RecordCount >0 then
      begin
      hide;
      form16.Show;
      form15.Label2.Caption:=DataModule3.Query6.fieldbyname('name').Value;
      form16.Label2.Caption:=DataModule3.Query6.fieldbyname('name').Value;
      form17.Label2.Caption:=DataModule3.Query6.fieldbyname('name').Value;
     form18.Label2.Caption:=DataModule3.Query6.fieldbyname('name').Value;
      DataModule3.Query6.FetchAll;
      end
      else
      begin
      application.MessageBox('��������˺��������','��ʾ',0+64);
      end
end;

end.
