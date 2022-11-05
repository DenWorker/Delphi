unit Unit1kur1pr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, sBitBtn, sEdit, ExtCtrls, sPanel,
  sLabel, sButton, ComCtrls;

type
    TMyGrid=class(TCustomGrid);
  TForm2 = class(TForm)
    StringGrid1: TStringGrid;
    Memo1: TMemo;
    Edit1: TsEdit;
    Edit2: TsEdit;
    Edit3: TsEdit;
    Edit4: TsEdit;
    Edit5: TsEdit;
    BitBtn1: TsBitBtn;
    BitBtn2: TsBitBtn;
    BitBtn3: TsBitBtn;
    BitBtn4: TsBitBtn;
    sPanel1: TsPanel;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sLabelFX4: TsLabelFX;
    sLabelFX5: TsLabelFX;
    sPanel2: TsPanel;
    sLabelFX1: TsLabelFX;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure proverka(q:string; var dannie:string);
    procedure BitBtn4Click(Sender: TObject);
    procedure DeleteARow(Grid: TStringGrid; ARow: Integer);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
 



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ss,VibrNaz:string;
     VibrBel,VibrZhir,VibrUgl:real;


implementation

uses Unit1kur;

{$R *.dfm}



procedure TForm2.FormCreate(Sender: TObject); {�������� �������� ���� ���������}
   var
   i:integer;
begin

   Memo1.Lines.LoadFromFile('�������.txt');
   StringGrid1.Cells[0,0]:='�������� ��������';
   StringGrid1.Cells[1,0]:='�����';
   StringGrid1.Cells[2,0]:='����';
   StringGrid1.Cells[3,0]:='��������';
   StringGrid1.Cells[4,0]:='����';

   For i:=0 to Memo1.Lines.Count-1 do
   try
   If i>StringGrid1.RowCount-1 then
   StringGrid1.RowCount:=i+1;

   StringGrid1.Cells[0,i+1]:=Copy(Memo1.Lines.Strings[i],1,pos('|',Memo1.Lines.Strings[i])-1);
   StringGrid1.Cells[1,i+1]:=Copy(Memo1.Lines.Strings[i],pos('|',Memo1.Lines.Strings[i])+1,pos('&',Memo1.Lines.Strings[i])-pos('|',Memo1.Lines.Strings[i])-1);
   StringGrid1.Cells[2,i+1]:=Copy(Memo1.Lines.Strings[i],pos('&',Memo1.Lines.Strings[i])+1,pos('^',Memo1.Lines.Strings[i])-pos('&',Memo1.Lines.Strings[i])-1);
   StringGrid1.Cells[3,i+1]:=Copy(Memo1.Lines.Strings[i],pos('^',Memo1.Lines.Strings[i])+1,pos('#',Memo1.Lines.Strings[i])-pos('^',Memo1.Lines.Strings[i])-1);
   StringGrid1.Cells[4,i+1]:=Copy(Memo1.Lines.Strings[i],pos('#',Memo1.Lines.Strings[i])+1,Length(Memo1.Lines.Strings[i])-pos('#',Memo1.Lines.Strings[i]));
   except;
   end;


   Edit1.Text:=StringGrid1.Cells[0,1];
   Edit2.Text:=StringGrid1.Cells[1,1];
   Edit3.Text:=StringGrid1.Cells[2,1];
   Edit4.Text:=StringGrid1.Cells[3,1];
   Edit5.Text:=StringGrid1.Cells[4,1];

   StringGrid1.RowCount:=Memo1.Lines.Count+1;

end;

procedure TForm2.BitBtn2Click(Sender: TObject); {������������ �������}
var
nom,i1,ppp:integer;
Label 2;

begin

   ppp:=0;
   StringGrid1.RowCount:=StringGrid1.RowCount+1;
   StringGrid1.Cells[0,StringGrid1.RowCount-1]:='';
   StringGrid1.Cells[1,StringGrid1.RowCount-1]:='';
   StringGrid1.Cells[2,StringGrid1.RowCount-1]:='';
   StringGrid1.Cells[3,StringGrid1.RowCount-1]:='';
   StringGrid1.Cells[4,StringGrid1.RowCount-1]:='';

   nom:=StringGrid1.RowCount-1;

   2:
   StringGrid1.Cells[0,nom]:=InputBox('�������� ��������', '����������, ������� �������� ��������', '');
   For i1:=1 to Length(StringGrid1.Cells[0,nom]) do
   If (StringGrid1.Cells[0,nom][i1] ='|') or (StringGrid1.Cells[0,nom][i1] ='&')
   or (StringGrid1.Cells[0,nom][i1] ='^')or (StringGrid1.Cells[0,nom][i1] ='#') then
   Begin
   StringGrid1.Cells[0,nom]:='';
   ShowMessage('� �������� �������� �� ������ ���� ��������: & ^ # | ');
   GoTo 2;
   End;

   If StringGrid1.Cells[0,nom]='' then
   Begin
   ShowMessage('������ �� �������');
   DeleteARow(StringGrid1,StringGrid1.RowCount);
   Exit;
   End;

   For i1:=1 to nom-1 do
   Begin
   If StringGrid1.Cells[0,i1]=StringGrid1.Cells[0,nom] then
   Begin
   StringGrid1.Cells[0,nom]:='';
   ShowMessage('��� ���� ����� �������');
   GoTo 2;
   End;
   End;

   ss:='';
   proverka('�����',ss);
   If ss='' then
   Begin
   ppp:=1;
   DeleteARow(StringGrid1,StringGrid1.RowCount);
   Exit;
   End;
   StringGrid1.Cells[1,nom]:=ss;

   ss:='';
   proverka('����',ss);
   If ss='' then
   Begin
   ppp:=1;
   DeleteARow(StringGrid1,StringGrid1.RowCount);
   Exit;
   End;
   StringGrid1.Cells[2,nom]:=ss;

   ss:='';
   proverka('��������',ss);
   If ss='' then
   Begin
   ppp:=1;
   DeleteARow(StringGrid1,StringGrid1.RowCount);
   Exit;
   End;
   StringGrid1.Cells[3,nom]:=ss;

   StringGrid1.Cells[4,nom]:=FloatToStr(StrToFloat(StringGrid1.Cells[1,nom])*4+StrToFloat(StringGrid1.Cells[2,nom])*9+StrToFloat(StringGrid1.Cells[3,nom])*4);

   Memo1.Lines.Add(StringGrid1.Cells[0,nom]+'|'+StringGrid1.Cells[1,nom]+'&'+StringGrid1.Cells[2,nom]+'^'+StringGrid1.Cells[3,nom]+'#'+StringGrid1.Cells[4,nom]);

end;

procedure TForm2.proverka(q: string; var dannie:string);{���� ������ � �������}
var
i,pr,kol:integer;
s:string;
Label 1;

begin

 1:
 kol:=0;
 pr:=1;
 If q='�����' then
 s:=InputBox(q, '����������, ������� ���-�� ����� �� 100 ����� ��������', '');
 If q='����' then
 s:=InputBox(q, '����������, ������� ���-�� ����� �� 100 ����� ��������', '');
 If q='��������' then
 s:=InputBox(q, '����������, ������� ���-�� ��������� �� 100 ����� ��������', '');
 If q='�����' then
 s:=InputBox(q, '����������, ������� ����� ��������', '');

 If s='' then
 Begin
 ShowMessage('������ �� �������');
 Exit;
 End;

 For i:=1 to length(s) do
 Begin
 If (s[i]<>'0') and (s[i]<>'1') and (s[i]<>'2') and
    (s[i]<>'3') and (s[i]<>'4') and (s[i]<>'5') and
    (s[i]<>'6') and (s[i]<>'7') and (s[i]<>'8') and
    (s[i]<>'9') and (s[i]<>',') then
 pr:=0;
 End;

 For i:=1 to length(s) do
 If s[i]=',' then
 kol:=kol+1;
 If kol>=2 then
 pr:=0;

 If s[Length(s)]=',' then
 pr:=0;

 If s[1]=',' then
 pr:=0;

 If s='' then
 pr:=0;

 If pr=0 then
 Begin
 ShowMessage('���� �������� ������');
 GoTo 1;
 End;


 dannie:=s;

end;

procedure TForm2.BitBtn4Click(Sender: TObject);
var list1,coplist1:TTreeNode;
    staroenazdereva1,staroenaz1:string;
    i112:integer;
begin
   staroenaz1:=StringGrid1.Cells[0,StringGrid1.Row];
   If StringGrid1.RowCount>2 then
   Begin
   DeleteARow(StringGrid1,StringGrid1.Row);

   with StringGrid1 do
   begin
   Row := 1;
   Col := 1;
   end;
   End
   Else
   ShowMessage('� ������� ������ ���� ������ 1 �������');

   list1:=nil;
   Repeat

   If list1=nil then
   list1:=Form1.TreeView1.Items.Item[0]
   Else
   list1:=list1.GetNext;

   If list1.Level<>0 then
   Begin
   staroenazdereva1:=list1.Text;

   i112:=0;
   Repeat
   inc(i112);
   Until (staroenazdereva1[i112+1]=' ') and (staroenazdereva1[i112+2]=' ') and (staroenazdereva1[i112+3]=' ') and (staroenazdereva1[i112+4]='(') and (staroenazdereva1[i112+5]='�');
   inc(i112);
   Repeat
   Delete(staroenazdereva1,i112,1);
   Until i112-1>=length(staroenazdereva1);



   If (staroenazdereva1=staroenaz1) then
   Begin
   copList1:=List1.GetPrev;
   List1.Delete;
   List1:=copList1;
   End;

   End;

   Until list1.GetNext=nil;

   Form1.podschitivanie;

end;

procedure TForm2.DeleteARow(Grid: TStringGrid; ARow: Integer);
begin

   Memo1.Lines.Delete(StringGrid1.Row-1);
   TMyGrid(Grid).DeleteRow(ARow);

end;

procedure TForm2.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

   Edit1.Text:=StringGrid1.Cells[0,ARow];
   Edit2.Text:=StringGrid1.Cells[1,ARow];
   Edit3.Text:=StringGrid1.Cells[2,ARow];
   Edit4.Text:=StringGrid1.Cells[3,ARow];
   Edit5.Text:=StringGrid1.Cells[4,ARow];

end;

procedure TForm2.BitBtn6Click(Sender: TObject);
var
   i:integer;
begin

    Memo1.Lines.SaveToFile('�������.txt');

    for i:=0 to 100000 do
    StringGrid1.Rows[i].Clear;

    for i:=0 to 100000 do
    StringGrid1.Cols[i].Clear;

    FormCreate(Sender);

end;





procedure TForm2.BitBtn1Click(Sender: TObject);
begin

   VibrNaz:=Edit1.Text;
   VibrBel:=StrToFloat(Edit2.Text);
   VibrZhir:=StrToFloat(Edit3.Text);
   VibrUgl:=StrToFloat(Edit4.Text);
   Form2.Close;

end;

procedure TForm2.sBitBtn1Click(Sender: TObject);
begin

   Form2.Close;

end;


procedure TForm2.sBitBtn2Click(Sender: TObject);
var i1:integer;
    list:TTreeNode;
    staroenaz,staroenazdereva:string;
    starbel,starzhir,starugl,starkkal:real;
    ukazatel1:Harr;
    Label 11;

begin

   staroenaz:=StringGrid1.Cells[0,StringGrid1.Row];

   11:
   StringGrid1.Cells[0,StringGrid1.Row]:=InputBox('�������� ��������', '����������, ������� �������� ��������', '');
   For i1:=1 to Length(StringGrid1.Cells[0,StringGrid1.Row]) do
   If (StringGrid1.Cells[0,StringGrid1.Row][i1] ='|') or (StringGrid1.Cells[0,StringGrid1.Row][i1] ='&')
   or (StringGrid1.Cells[0,StringGrid1.Row][i1] ='^')or (StringGrid1.Cells[0,StringGrid1.Row][i1] ='#') then
   Begin
   StringGrid1.Cells[0,StringGrid1.Row]:='';
   ShowMessage('� �������� �������� �� ������ ���� ��������: & ^ # | ');
   GoTo 11;
   End;


   ss:='';
   proverka('�����',ss);
   StringGrid1.Cells[1,StringGrid1.Row]:=ss;

   ss:='';
   proverka('����',ss);
   StringGrid1.Cells[2,StringGrid1.Row]:=ss;

   ss:='';
   proverka('��������',ss);
   StringGrid1.Cells[3,StringGrid1.Row]:=ss;

   StringGrid1.Cells[4,StringGrid1.Row]:=FloatToStr(StrToFloat(StringGrid1.Cells[1,StringGrid1.Row])*4+StrToFloat(StringGrid1.Cells[2,StringGrid1.Row])*9+StrToFloat(StringGrid1.Cells[3,StringGrid1.Row])*4);

   Memo1.Lines[StringGrid1.Row-1]:=StringGrid1.Cells[0,StringGrid1.Row]+'|'+StringGrid1.Cells[1,StringGrid1.Row]+'&'+StringGrid1.Cells[2,StringGrid1.Row]+'^'+StringGrid1.Cells[3,StringGrid1.Row]+'#'+StringGrid1.Cells[4,StringGrid1.Row];

   list:=nil;
   Repeat

   If list=nil then
   list:=Form1.TreeView1.Items.Item[0]
   Else
   list:=list.GetNext;

   If list.Level<>0 then
   Begin
   staroenazdereva:=list.Text;
   ukazatel1:=list.Data;

   i1:=0;
   Repeat
   inc(i1);
   Until (staroenazdereva[i1+1]=' ') and (staroenazdereva[i1+2]=' ') and (staroenazdereva[i1+3]=' ') and (staroenazdereva[i1+4]='(') and (staroenazdereva[i1+5]='�');
   inc(i1);
   Repeat
   Delete(staroenazdereva,i1,1);
   Until i1-1>=length(staroenazdereva);


   If (staroenazdereva=staroenaz) then
   Begin
   ukazatel1^.Bel:= ukazatel1^.Massa*StrToFloat(StringGrid1.Cells[1,StringGrid1.Row])/100;
   ukazatel1^.Zhir:=ukazatel1^.Massa*StrToFloat(StringGrid1.Cells[2,StringGrid1.Row])/100;
   ukazatel1^.Ugl:=ukazatel1^.Massa*StrToFloat(StringGrid1.Cells[3,StringGrid1.Row])/100;
   ukazatel1^.kkal:=4*ukazatel1^.Bel+9*ukazatel1^.Zhir+4*ukazatel1^.Ugl;

   list.Text:=StringGrid1.Cells[0,StringGrid1.Row]+'   (�����:'+FloatToStr(ukazatel1^.Massa)+')'+'   (�����:'+FloatToStr(ukazatel1^.Bel)+')'+'(����:'+FloatToStr(ukazatel1^.Zhir)+')'+'(��������:'+FloatToStr(ukazatel1^.Ugl)+')'+'   (����:'+FloatToStr(ukazatel1^.Kkal)+')';
   list.Data:=ukazatel1;


   End;
   End;

   Until list.GetNext=nil;
   Form1.podschitivanie;

end;



end.
