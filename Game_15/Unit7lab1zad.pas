unit Unit7lab1zad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    SB1: TSpeedButton;
    SB2: TSpeedButton;
    SB3: TSpeedButton;
    SB4: TSpeedButton;
    SB5: TSpeedButton;
    SB6: TSpeedButton;
    SB7: TSpeedButton;
    SB8: TSpeedButton;
    SB9: TSpeedButton;
    SB10: TSpeedButton;
    SB11: TSpeedButton;
    SB12: TSpeedButton;
    SB13: TSpeedButton;
    SB14: TSpeedButton;
    SB15: TSpeedButton;
    SB16: TSpeedButton;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Button1: TButton;
    Button4: TButton;
    Panel1: TPanel;
    Timer1: TTimer;
    Panel2: TPanel;
    Panel3: TPanel;
    Memo2: TMemo;
    Button5: TButton;
    procedure SB1Click(Sender: TObject);
    procedure SB2Click(Sender: TObject);
    procedure SB3Click(Sender: TObject);
    procedure SB4Click(Sender: TObject);
    procedure SB5Click(Sender: TObject);
    procedure SB6Click(Sender: TObject);
    procedure SB7Click(Sender: TObject);
    procedure SB8Click(Sender: TObject);
    procedure SB9Click(Sender: TObject);
    procedure SB10Click(Sender: TObject);
    procedure SB11Click(Sender: TObject);
    procedure SB12Click(Sender: TObject);
    procedure SB13Click(Sender: TObject);
    procedure SB14Click(Sender: TObject);
    procedure SB15Click(Sender: TObject);
    procedure SB16Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Function Button(Code:integer):TSpeedButton;
    Procedure ZapCard;
    Procedure Zap;
    Procedure Trans;
    Procedure Play(Code:integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure poverka;
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Card: array [1..16,1..16] of integer;
  Pole: array [1..16] of integer;
  sec,min,kol:integer;


implementation

{$R *.dfm}

Procedure TForm1.ZapCard; {прогрузка в матрицу из файла поля}
var
  i,j,k: integer;
begin

   memo1.Lines.Clear;
   memo1.Lines.LoadFromFile('card.txt');
   For j:=1 to 16 do
   For i:=1 to 16 do
   Begin
   k:=StrToInt(memo1.Lines.Strings[i-1][j]);
   Card[i,j]:=k;
   End;

end;

Procedure TForm1.Zap;  {Заполнение массива кнопок}
var
  I: integer;
  n: integer;
begin

   For i:=1 to 16 do
   pole[i]:=0;

   For i:=1 to 15 do
   Begin
   //
   Repeat
   n:=random(16);
   If n=0 then
   n:=1;
   If n=16 then
   n:=15;
   Until Pole[n]=0;
   //
   Pole[n]:=i;
   End;

end;




Function TForm1.Button(Code: integer): TSpeedButton;   {Функция возврата}
begin

   Case Code of
   1: Result:=SB1;
   2: Result:=SB2;
   3: Result:=SB3;
   4: Result:=SB4;
   5: Result:=SB5;
   6: Result:=SB6;
   7: Result:=SB7;
   8: Result:=SB8;
   9: Result:=SB9;
   10: Result:=SB10;
   11: Result:=SB11;
   12: Result:=SB12;
   13: Result:=SB13;
   14: Result:=SB14;
   15: Result:=SB15;
   16: Result:=SB16;
   End;


end;

procedure TForm1.Trans;    {Отображение кнопок}
var
i:integer;
begin

   For i:=1 to 16 do
   Begin
   Button(i).Show;
   Button(i).Caption:=IntToStr(pole[i]);
   If pole[i]=0 then
   Button(i).Hide;
   End;

end;

procedure TForm1.Play(Code:integer);{Рассчитывает движение игровых фишек}
var
   i:integer;
   Stop:Boolean;
   buff:integer;
begin

   i:=1;
   Stop:=False;

   Repeat
    If Card[Code,i]=1 then
     If Pole[i]=0 then
      Begin
       inc(kol);
       Buff:=Pole[code];
       Pole[code]:=Pole[i];
       Pole[i]:=Buff;
       Trans;
       Stop:=True;
      End;
    i:=i+1;
   Until (i>16) or (Stop=True);


end;

procedure TForm1.SB1Click(Sender: TObject);
begin

   play(1);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB2Click(Sender: TObject);
begin

   play(2);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB3Click(Sender: TObject);
begin

   play(3);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB4Click(Sender: TObject);
begin

   play(4);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB5Click(Sender: TObject);
begin

   play(5);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB6Click(Sender: TObject);
begin

   play(6);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB7Click(Sender: TObject);
begin

   play(7);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB8Click(Sender: TObject);
begin

   play(8);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB9Click(Sender: TObject);
begin

   play(9);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB10Click(Sender: TObject);
begin

   play(10);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB11Click(Sender: TObject);
begin

   play(11);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB12Click(Sender: TObject);
begin

   play(12);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB13Click(Sender: TObject);
begin

   play(13);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB14Click(Sender: TObject);
begin

   play(14);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB15Click(Sender: TObject);
begin

   play(15);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.SB16Click(Sender: TObject);
begin

   play(16);
   Panel3.Caption:=IntToStr(kol);
   poverka;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

   poverka;
   Panel2.Visible:=true;
   Panel3.Visible:=true;
   kol:=0;
   Panel2.Caption:='00:00';
   Panel3.Caption:=IntToStr(kol);
   min:=0;
   sec:=0;
   Timer1.Enabled:=true;
   Randomize;
   ZapCard;
   Zap;
   trans;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

   poverka;
   Panel2.Visible:=true;
   Panel3.Visible:=true;
   kol:=0;
   Panel2.Caption:='00:00';
   Panel3.Caption:=IntToStr(kol);
   Timer1.Enabled:=true;
   min:=0;
   sec:=0;
   Randomize;
   ZapCard;
   Zap;
   trans;
   poverka;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
i,pr:integer;
begin


   pr:=1;
   For i:=1 to 15 do

   If i<>Pole[i] then
   Begin
   Panel1.Color:=clRed;
   Panel1.Caption:='Порядок неверен';
   pr:=0;
   Break;
   End;

   If pr=1 then
   Begin
   Panel1.Color:=clGreen;
   Panel1.Caption:='Победа!!!';
   End;

end;



procedure TForm1.Button4Click(Sender: TObject);
var
i:integer;
begin

   poverka;
   For i:=1 to 15 do
   Pole[i]:=i;
   Pole[16]:=0;
   Trans;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
   pr,i:integer;
   WND :HWND;
   lpText,lpCaption:PChar;
   Tip:Integer;
   wLanguageId:Word;

begin

   If sec<59 then
   inc(sec)
   Else
   Begin
   sec:=0;
   inc(min);
   End;

   If (Min<10) and (sec<10) then
   Panel2.Caption:='0'+IntToStr(min)+':'+'0'+IntToStr(sec);

   If (Min<10) and (sec>10) then
   Panel2.Caption:='0'+IntToStr(min)+':'+IntToStr(sec);

   If (Min>10) and (sec<10) then
   Panel2.Caption:=IntToStr(min)+':'+'0'+IntToStr(sec);

   If (Min>10) and (sec>10) then
   Panel2.Caption:=IntToStr(min)+':'+IntToStr(sec);

   pr:=1;
   For i:=1 to 15 do
   If i<>Pole[i] then
   Begin
   pr:=0;
   Break;
   End;

   If pr=1 then
   Begin
   Timer1.Enabled:=false;
   Panel2.Visible:=false;
   Panel3.Visible:=false;
   Panel1.Color:=clGreen;
   Panel1.Caption:='Победа!!!';
   ShowMessage('Время победы: '+IntToStr(min)+':'+IntToStr(sec)+'    Кол-во ходов: '+IntToStr(kol));
   WND:=Form1.Handle;
   lpCaption:='Победа';
   lpText:='Сохранить результат?';
   Tip:=MB_YESNO+MB_ICONINFORMATION+MB_DEFBUTTON1;
   wLanguageId:=$0419;
   If MessageBoxEx(Wnd,lpText,lpCaption,Tip, wLanguageId)=6 then
   Begin
   Memo2.Lines.LoadFromFile('C:\Users\Администратор\Desktop\----УНИВЕР\2 курс 1 семестр\Информационные технологии\программирование\ДЗ ПРОГРАММЫ\Лабораторная работа 7\1 задание\результат.txt');

   If (kol>=0) and (kol<=9) then
   Memo2.Lines.Add(' Кол-во ходов: 00'+IntToStr(kol)+'   Время победы: '+IntToStr(min)+':'+IntToStr(sec));
   If (kol>=10) and (kol<=99) then
   Memo2.Lines.Add(' Кол-во ходов: 0'+IntToStr(kol)+'   Время победы: '+IntToStr(min)+':'+IntToStr(sec));
   If (kol>=100) and (kol<=999) then
   Memo2.Lines.Add(' Кол-во ходов: '+IntToStr(kol)+'   Время победы: '+IntToStr(min)+':'+IntToStr(sec));

   Button5.Click;
   Memo2.Lines.SaveToFile('C:\Users\Администратор\Desktop\----УНИВЕР\2 курс 1 семестр\Информационные технологии\программирование\ДЗ ПРОГРАММЫ\Лабораторная работа 7\1 задание\результат.txt');

   End;

   End;

end;

procedure TForm1.poverka;
var
pr,i:integer;
begin

   pr:=1;
   For i:=1 to 15 do
   If i<>Pole[i] then
   Begin
   Panel1.Color:=clRed;
   Panel1.Caption:='Порядок неверен';
   pr:=0;
   Break;
   End;
   If pr=1 then
   Begin
   Panel1.Color:=clGreen;
   Panel1.Caption:='Победа!!!';
   End;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin


   Memo2.Lines.LoadFromFile('C:\Users\Администратор\Desktop\----УНИВЕР\2 курс 1 семестр\Информационные технологии\программирование\ДЗ ПРОГРАММЫ\Лабораторная работа 7\1 задание\результат.txt');


end;

procedure TForm1.Button5Click(Sender: TObject);
var
t:Tstringlist;

begin


  t:=TStringList.Create;
  // присваиваем переменной t строки из Memo
  t.AddStrings(memo2.lines);
  // сортируем
  t.Sort;
  memo2.Clear;
  // присваиваем memo уже отсортированные строки
  memo2.Lines.AddStrings(t);
  t.Destroy;


end;

end.
