unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Fermer: TButton;
    inverse: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    S1: TEdit;
    S2: TEdit;
    yesno: TEdit;
    Label4: TLabel;
    XPManifest1: TXPManifest;
    procedure inverseClick(Sender: TObject);
    procedure FermerClick(Sender: TObject);
    procedure S1KeyPress(Sender: TObject; var Key: Char);
    procedure S1Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.inverseClick(Sender: TObject);
var ch1,ch2:string;
    i,n:integer;
begin
ch2:='';
ch1:=S1.Text;
n:=length(ch1);
for i:= 1 to n do ch2:=ch2+ch1[n-i+1];
S2.Text:=ch2;
if ch1=ch2 then yesno.text:='Yes'
           else yesno.text:='No';
if (ch1='') and (ch2='') then yesno.text:='';
end;

procedure TForm1.FermerClick(Sender: TObject);
begin
Close;
end;

procedure TForm1.S1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['A'..'Z']+['a'..'z']+[#8]) then key:=#0;
end;

procedure TForm1.S1Change(Sender: TObject);
begin
S2.Clear;
yesno.Text:='';
end;

end.
