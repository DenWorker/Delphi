unit Unit6lab2zad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    Button2: TButton;
    Panel1: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Timer1Timer(Sender: TObject);
var
i:integer;
begin

   i:=random(9);
   Button4.Visible:=true;
   Button4.Top:=10+50*(i div 3);
   Button4.Left:=10+100*(i mod 3);
   Panel1.Caption:='��������: '+IntToStr(Timer1.Interval);

end;

procedure TForm1.Button4Click(Sender: TObject);
begin

   Button4.Caption:='������';
   Button4.Enabled:=false;
   Timer1.Enabled:=false;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

   Randomize;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

   Timer1.Interval:=Timer1.Interval+100;
   Panel1.Caption:='��������: '+IntToStr(Timer1.Interval);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

   Timer1.Interval:=Timer1.Interval div 2;
   Panel1.Caption:='��������: '+IntToStr(Timer1.Interval);
   
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i:integer;
begin

   Timer1.Enabled:=true;
   i:=random(9);
   Button4.Visible:=true;
   Button4.Top:=10+50*(i div 3);
   Button4.Left:=10+100*(i mod 3);
   Button4.Enabled:=true;
   Button4.Caption:='����� ����';
   Panel1.Caption:='��������: '+IntToStr(Timer1.Interval);

end;

end.
