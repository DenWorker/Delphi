unit Unit3lab2zad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Button3: TButton;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
Var
sum:integer;
begin

   sum:=0;
   If RadioGroup1.ItemIndex=2 then
   sum:=sum+1;
   If RadioGroup2.ItemIndex=1 then
   sum:=sum+1;
   If RadioGroup3.ItemIndex=1 then
   sum:=sum+1;
   If RadioGroup4.ItemIndex=1 then
   sum:=sum+1;
   If RadioGroup5.ItemIndex=1 then
   sum:=sum+1;

   Case sum of
   0..2:
   Begin
   Panel1.Caption:='Плохо';
   Panel2.Color:=clRed;
   End;
   3:
   Begin
   Panel1.Caption:='Удовлеторительно';
   Panel2.Color:=clOlive;
   End;
   4:
   Begin
   Panel1.Caption:='Хорошо';
   Panel2.Color:=clYellow;
   End;
   5:
   Begin
   Panel1.Caption:='Отлично';
   Panel2.Color:=clGreen;
   End;

   End;

   Panel2.Caption:=IntToStr(sum)+' из 5';
   Button3.Enabled:=False;
   RadioGroup1.Enabled:=False;
   RadioGroup2.Enabled:=False;
   RadioGroup3.Enabled:=False;
   RadioGroup4.Enabled:=False;
   RadioGroup5.Enabled:=False;
   Button1.Enabled:=True;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

   Button3.Enabled:=True;
   Button1.Enabled:=False;
   Panel1.Caption:='';
   Panel2.Color:=clBtnShadow;
   Panel2.Caption:='';
   RadioGroup1.Enabled:=True;
   RadioGroup2.Enabled:=True;
   RadioGroup3.Enabled:=True;
   RadioGroup4.Enabled:=True;
   RadioGroup5.Enabled:=True;

   RadioGroup1.ItemIndex:=-1;
   RadioGroup2.ItemIndex:=-1;
   RadioGroup3.ItemIndex:=-1;
   RadioGroup4.ItemIndex:=-1;
   RadioGroup5.ItemIndex:=-1;

end;

end.
