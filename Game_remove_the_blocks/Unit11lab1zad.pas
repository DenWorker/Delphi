unit Unit11lab1zad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    DrawGrid1: TDrawGrid;
    Button1: TButton;
    Image1: TImage;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
    Rect: TRect; State: TGridDrawState);
    procedure RedrawCells;
    procedure AssignBrickColors;
    procedure RemoveBricks(cl:Tcolor; ACol,ARow:integer);
    function IsBrickAlone(ACol,ARow:integer):boolean;
    procedure DrawGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
   MAX_COLORS=10;
   PossibleColors: array[0..MAX_COLORS-1] of TColor=(clRed,clBlue,clGreen,clBlack,clYellow,clGray,clAqua,clFuchsia,clHotLight,clSilver);
   MAX_COLUMNS=20;
   MAX_ROWS=20;
   WALL_COLOR: TColor=clWhite;

var
  Form1: TForm1;
  ColorOfBrick: array[0..MAX_COLUMNS,0..MAX_ROWS] of TColor;
  kol,PR:integer;
  strr:string;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.AssignBrickColors;
var
   i,j:integer;
begin

   For i:=0 to Form1.DrawGrid1.ColCount-1 do
   For j:=0 to Form1.DrawGrid1.RowCount-1 do
   ColorOfBrick[i][j]:=PossibleColors[Random(kol)];

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

   PR:=0;
   Repeat
   strr:=InputBox('Цвет','Выберите количество цветов от 1 до 10','');
   If (strr<>'1') and (strr<>'2')
   and (strr<>'3') and (strr<>'4') and (strr<>'5')
   and (strr<>'6') and (strr<>'7') and (strr<>'8')
   and (strr<>'9') and (strr<>'10') then
   ShowMessage('Ввод неверных данных')
   Else
   Begin
   PR:=1;
   kol:=StrToInt(strr);
   End;
   Until PR=1;
   
   AssignBrickColors;
   RedrawCells;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

   Randomize;
   Button1.Click;

end;

procedure TForm1.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin

   DrawGrid1.Canvas.Brush.Color:=ColorOfBrick[ACol][ARow];
   DrawGrid1.Canvas.FillRect(Rect);

end;

procedure TForm1.RedrawCells;
var
   i,j:integer;
begin

  for i:=0 to Form1.DrawGrid1.ColCount-1 do
  for j:=0 to Form1.DrawGrid1.RowCount-1 do
  Form1.DrawGrid1DrawCell(Form1,i,j,Form1.DrawGrid1.CellRect(i,j),[]);

end;

procedure TForm1.RemoveBricks(cl: Tcolor; ACol, ARow: integer);
begin

   If ColorOfBrick[ACol,ARow]<>cl then
   exit;

   ColorOfBrick[ACol,ARow]:=WALL_COLOR;

   If ACol>0 then
   RemoveBricks(cl,ACol-1,ARow);

   If ACol<Form1.DrawGrid1.ColCount-1 then
   RemoveBricks(cl,ACol+1,ARow);

   If ARow>0 then
   RemoveBricks(cl,ACol,ARow-1);

   If ARow<Form1.DrawGrid1.ColCount-1 then
   RemoveBricks(cl,ACol,ARow+1);


end;

function TForm1.IsBrickAlone(ACol, ARow: integer): boolean;
begin

   Result:=True;

   If ColorOfBrick[ACol,ARow]=WALL_COLOR then
   Exit;

   If ACol>0 then
   If ColorOfBrick[ACol-1,ARow]=ColorOfBrick[ACol,ARow] then
   Result:=false;

   If ACol<Form1.DrawGrid1.ColCount-1 then
   If ColorOfBrick[ACol+1,ARow]=ColorOfBrick[ACol,ARow] then
   Result:=False;

   If ARow>0 then
   If ColorOfBrick[ACol,ARow-1]=ColorOfBrick[ACol,ARow] then
   Result:=False;

   If ARow<Form1.DrawGrid1.RowCount-1 then
   If ColorOfBrick[ACol,ARow+1]=ColorOfBrick[ACol,ARow] then
   Result:=False;


end;

procedure TForm1.DrawGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin

   If not IsBrickAlone(ACol,ARow) then
   Begin

   RemoveBricks(ColorOfBrick[ACol,ARow],ACol,ARow);
   RedrawCells;

   End;

end;

end.
