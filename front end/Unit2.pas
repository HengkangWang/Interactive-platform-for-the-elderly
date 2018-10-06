unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses unit8,unit5,unit6,unit7;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  hide;
  Form5.show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  hide;
  Form6.show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  hide;
  Form7.show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
hide;
Form8.show;
end;

end.
