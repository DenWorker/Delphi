unit Unit12lab1zad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Grids, jpeg, ExtCtrls;

type

    TMyGrid=class(TCustomGrid);

    TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    StringGrid1: TStringGrid;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
    procedure DeleteARow(Grid: TStringGrid; ARow: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
i:integer;
begin


   Memo1.Lines.LoadFromFile('������.txt');
   StringGrid1.Cells[0,0]:='���';
   StringGrid1.Cells[1,0]:='�������';

   For i:=0 to Memo1.Lines.Count-1 do
   try
   If i>StringGrid1.RowCount-1 then
   StringGrid1.RowCount:=i+1;

   StringGrid1.Cells[0,i+1]:=Copy(Memo1.Lines.Strings[i],1,pos('|',Memo1.Lines.Strings[i])-1);
   StringGrid1.Cells[1,i+1]:=Copy(Memo1.Lines.Strings[i],pos('|',Memo1.Lines.Strings[i])+1,length(Memo1.Lines.Strings[i])-pos('|',Memo1.Lines.Strings[i]));
   except;
   end;

   Edit1.Text:=StringGrid1.Cells[0,1];
   Edit2.Text:=StringGrid1.Cells[1,1];

   StringGrid1.RowCount:=Memo1.Lines.Count+1;

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var i:integer;
begin

   Memo1.Lines.SaveToFile('������.txt');

    for i:=0 to 1000 do
    StringGrid1.Rows[i].Clear;

    for i:=0 to 1000 do
    StringGrid1.Cols[i].Clear;

    FormCreate(Sender);

end;

procedure TForm1.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

   Edit1.Text:=StringGrid1.Cells[0,ARow];
   Edit2.Text:=StringGrid1.Cells[1,ARow];


end;





procedure TForm1.DeleteARow(Grid: TStringGrid; ARow: Integer);
begin

   Memo1.Lines.Delete(StringGrid1.Row-1);
   TMyGrid(Grid).DeleteRow(ARow);

   {DeleteARow(StringGrid1,StringGrid1.Row);
    procedure DeleteARow(Grid: TStringGrid; ARow: Integer);}

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

   DeleteARow(StringGrid1,StringGrid1.Row);

   with StringGrid1 do
   begin
   Row := 1;
   Col := 1;
   end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

   StringGrid1.Cells[Stringgrid1.Col,StringGrid1.Row]:=Edit1.Text;
   StringGrid1.Cells[Stringgrid1.Col+1,StringGrid1.Row]:=Edit2.Text;
   Memo1.Lines[StringGrid1.Row-1]:=Edit1.Text+'|'+Edit2.Text;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

   StringGrid1.RowCount:= StringGrid1.RowCount+1;
   StringGrid1.Cells[0,Memo1.Lines.Count+1]:=Edit1.Text;
   StringGrid1.Cells[1,Memo1.Lines.Count+1]:=Edit2.Text;
   Memo1.Lines.Add(Edit1.Text+'|'+Edit2.Text);

end;

end.
