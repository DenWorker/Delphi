unit treugolnick;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acArcControls, sSkinManager, StdCtrls, sLabel, sEdit, ExtCtrls,
  sPanel, Buttons, sBitBtn;

type
  TForm1 = class(TForm)
    sSkinManager1: TsSkinManager;
    sRoundBtn1: TsRoundBtn;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sPanel3: TsPanel;
    sPanel1: TsPanel;
    sBitBtn1: TsBitBtn;
    procedure sRoundBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.sRoundBtn1Click(Sender: TObject);
var
   a,b,c,P,S:double;
begin

  If (TryStrToFloat(sEdit1.Text,a)=false)or(TryStrToFloat(sEdit2.Text,b)=false) then
  Begin
  ShowMessage('Проверьте правильность ввода');
  Exit;
  End;


  c:=sqrt(a*a+b*b);
  P:=a+b+c;
  S:=(a*b)/2;

  sPanel1.Caption:='P='+FloatToStrF(P,ffFixed,15,2);
  sPanel3.Caption:='S='+FloatToStrF(S,ffFixed,15,2);


end;

end.
