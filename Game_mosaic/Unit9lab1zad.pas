unit Unit9lab1zad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TPzForm = class(TForm)
    i1_1: TImage;
    i1_2: TImage;
    i1_3: TImage;
    i1_4: TImage;
    i1_5: TImage;
    i1_6: TImage;
    i1_7: TImage;
    i1_8: TImage;
    i1_9: TImage;
    i1_10: TImage;
    i1_11: TImage;
    i1_12: TImage;
    i1_13: TImage;
    i1_14: TImage;
    i1_15: TImage;
    i1_16: TImage;
    i1_17: TImage;
    i1_18: TImage;
    Image1: TImage;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Button3: TButton;
    Button2: TButton;
    Function ImageByNumber(num:integer):Timage; {���������� ��������� � ���������}
    Procedure MoveImage(num,X,Y:integer);
    Procedure DownImage;
    Function WinGame: boolean;

    procedure i1_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      
    procedure i1_7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_14MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_15MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_15MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_16MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_16MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_17MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_17MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_17MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure i1_18MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure i1_18MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure i1_18MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PzForm: TPzForm;
  GX,GY: integer; {���������� ���������� �������}
  GG: boolean; {���� ����������}
  a1,a11,a2,a22,a3,a33,a4,a44,a5,a55,a6,a66,a7,a77,a8,a88,a9,a99,
  b1,b11,b2,b22,b3,b33,b4,b44,b5,b55,b6,b66,b7,b77,b8,b88,b9,b99:integer;

implementation

USES
Unit9lab1zad1pr;

{$R *.dfm}

{ TForm1 }

procedure TPzForm.DownImage;
begin

   If  GG=false then
   Begin

   GG:=True;
   GY:=PzForm.CalcCursorPos.Y;
   GX:=PzForm.CalcCursorPos.X;

   End;

end;

function TPzForm.ImageByNumber(num: integer): Timage;
begin

   case num of
   1: Result:=i1_1;
   2: Result:=i1_2;
   3: Result:=i1_3;
   4: Result:=i1_4;
   5: Result:=i1_5;
   6: Result:=i1_6;
   7: Result:=i1_7;
   8: Result:=i1_8;
   9: Result:=i1_9;
   10: Result:=i1_10;
   11: Result:=i1_11;
   12: Result:=i1_12;
   13: Result:=i1_13;
   14: Result:=i1_14;
   15: Result:=i1_15;
   16: Result:=i1_16;
   17: Result:=i1_17;
   18: Result:=i1_18;
   End;

end;

procedure TPzForm.MoveImage(num, X, Y: integer);
begin

   If GG then
   Begin

     ImageByNumber(num).Top:=ImageByNumber(num).Top-GY+PzForm.CalcCursorPos.Y;
     ImageByNumber(num).Left:=ImageByNumber(num).Left-GX+PzForm.CalcCursorPos.X;
     GY:=PzForm.CalcCursorPos.Y;
     GX:=PzForm.CalcCursorPos.X;
     WinGame;

   End;

end;

function TPzForm.WinGame: boolean;
begin

   Result:=False;
   If (ImageByNumber(1).Left=ImageByNumber(7).Left) and
      (ImageByNumber(1).Left=ImageByNumber(13).Left) and
      (ImageByNumber(2).Left=ImageByNumber(8).Left) and
      (ImageByNumber(2).Left=ImageByNumber(14).Left) and
      (ImageByNumber(3).Left=ImageByNumber(9).Left) and
      (ImageByNumber(3).Left=ImageByNumber(15).Left) and
      (ImageByNumber(4).Left=ImageByNumber(10).Left) and
      (ImageByNumber(4).Left=ImageByNumber(16).Left) and
      (ImageByNumber(5).Left=ImageByNumber(11).Left) and
      (ImageByNumber(5).Left=ImageByNumber(17).Left) and
      (ImageByNumber(6).Left=ImageByNumber(12).Left) and
      (ImageByNumber(6).Left=ImageByNumber(18).Left) and
      ///////////////
      (ImageByNumber(1).Top=ImageByNumber(2).Top) and
      (ImageByNumber(2).Top=ImageByNumber(3).Top) and
      (ImageByNumber(3).Top=ImageByNumber(4).Top) and
      (ImageByNumber(4).Top=ImageByNumber(5).Top) and
      (ImageByNumber(5).Top=ImageByNumber(6).Top) and
      ///////////////
      (ImageByNumber(7).Top=ImageByNumber(8).Top) and
      (ImageByNumber(8).Top=ImageByNumber(9).Top) and
      (ImageByNumber(9).Top=ImageByNumber(10).Top) and
      (ImageByNumber(10).Top=ImageByNumber(11).Top) and
      (ImageByNumber(11).Top=ImageByNumber(12).Top) and
      ///////////////
      (ImageByNumber(13).Top=ImageByNumber(14).Top) and
      (ImageByNumber(14).Top=ImageByNumber(15).Top) and
      (ImageByNumber(15).Top=ImageByNumber(16).Top) and
      (ImageByNumber(16).Top=ImageByNumber(17).Top) and
      (ImageByNumber(17).Top=ImageByNumber(18).Top) then
      Begin
      GG:=False;
      ShowMessage('����������� �������������!!!');
      End;





end;

procedure TPzForm.i1_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(1,x,y);

end;

procedure TPzForm.i1_1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(2,x,y);

end;

procedure TPzForm.i1_2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(3,x,y);

end;

procedure TPzForm.i1_3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(4,x,y);

end;

procedure TPzForm.i1_4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(5,x,y);

end;

procedure TPzForm.i1_5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;



procedure TPzForm.i1_6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(6,x,y);

end;

procedure TPzForm.i1_6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(7,x,y);

end;

procedure TPzForm.i1_7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(8,x,y);

end;

procedure TPzForm.i1_8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(9,x,y);

end;

procedure TPzForm.i1_9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(10,x,y);

end;

procedure TPzForm.i1_10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(11,x,y);

end;

procedure TPzForm.i1_11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(12,x,y);

end;

procedure TPzForm.i1_12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_13MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(13,x,y);

end;

procedure TPzForm.i1_13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_14MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(14,x,y);

end;

procedure TPzForm.i1_14MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_15MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;
   
end;

procedure TPzForm.i1_15MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(15,x,y);

end;

procedure TPzForm.i1_15MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_16MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;
   
end;

procedure TPzForm.i1_16MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(16,x,y);

end;

procedure TPzForm.i1_16MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_17MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;
   
end;

procedure TPzForm.i1_17MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(17,x,y);

end;

procedure TPzForm.i1_17MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.i1_18MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   DownImage;

end;

procedure TPzForm.i1_18MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

   MoveImage(18,x,y);

end;

procedure TPzForm.i1_18MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   GG:=False;

end;

procedure TPzForm.Button1Click(Sender: TObject);
var
i:integer;

begin

   For i:=1 to 18 do
   Begin

   ImageByNumber(i).Left:=Random(400);
   ImageByNumber(i).Top:=Random(300);

   End;

end;

procedure TPzForm.FormCreate(Sender: TObject);
var
i:integer;
begin

   a1:=i1_1.Left;
   a11:=i1_1.Top;

   a2:=i1_2.Left;
   a22:=i1_2.Top;

   a3:=i1_3.Left;
   a33:=i1_3.Top;

   a4:=i1_4.Left;
   a44:=i1_4.Top;


   a5:=i1_5.Left;
   a55:=i1_5.Top;

   a6:=i1_6.Left;
   a66:=i1_6.Top;

   a7:=i1_7.Left;
   a77:=i1_7.Top;

   a8:=i1_8.Left;
   a88:=i1_8.Top;

   a9:=i1_9.Left;
   a99:=i1_9.Top;

   /////////

   b1:=i1_10.Left;
   b11:=i1_10.Top;

   b2:=i1_11.Left;
   b22:=i1_11.Top;

   b3:=i1_12.Left;
   b33:=i1_12.Top;

   b4:=i1_13.Left;
   b44:=i1_13.Top;


   b5:=i1_14.Left;
   b55:=i1_14.Top;

   b6:=i1_15.Left;
   b66:=i1_15.Top;

   b7:=i1_16.Left;
   b77:=i1_16.Top;

   b8:=i1_17.Left;
   b88:=i1_17.Top;

   b9:=i1_18.Left;
   b99:=i1_18.Top;

   For i:=1 to 18 do
   Begin

   ImageByNumber(i).Left:=Random(400);
   ImageByNumber(i).Top:=Random(300);

   End;

end;

procedure TPzForm.Button3Click(Sender: TObject);
begin

   i1_1.Left:=a1-10;
   i1_1.Top:=a11;

   i1_2.Left:=a2;
   i1_2.Top:=a22;

   i1_3.Left:=a3;
   i1_3.Top:=a33;

   i1_4.Left:=a4;
   i1_4.Top:=a44;


   i1_5.Left:=a5;
   i1_5.Top:=a55;

   i1_6.Left:=a6;
   i1_6.Top:=a66;

   i1_7.Left:=a7;
   i1_7.Top:=a77;

   i1_8.Left:=a8;
   i1_8.Top:=a88;

   i1_9.Left:=a9;
   i1_9.Top:=a99;

   /////////

   i1_10.Left:=b1;
   i1_10.Top:=b11;

   i1_11.Left:=b2;
   i1_11.Top:=b22;

   i1_12.Left:=b3;
   i1_12.Top:=b33;

   i1_13.Left:=b4;
   i1_13.Top:=b44;


   i1_14.Left:=b5;
   i1_14.Top:=b55;

   i1_15.Left:=b6;
   i1_15.Top:=b66;

   i1_16.Left:=b7;
   i1_16.Top:=b77;

   i1_17.Left:=b8;
   i1_17.Top:=b88;

   i1_18.Left:=b9;
   i1_18.Top:=b99;

end;



procedure TPzForm.Button2Click(Sender: TObject);
begin

   Form1.Show;

end;

end.
