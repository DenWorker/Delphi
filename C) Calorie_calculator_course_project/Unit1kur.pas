unit Unit1kur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Unit1kur1pr, sSkinManager,
  sTreeView, sBitBtn, sLabel, ExtCtrls, sPanel, Grids, sButton, sDialogs;

type

   Harr=^BZHU;

   BZHU=record
   Massa:real;
   Bel:real;
   Zhir:real;
   Ugl:real;
   Kkal:real;
   end;

  TForm1 = class(TForm)
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    sSkinManager1: TsSkinManager;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    TreeView1: TsTreeView;
    sLabelFX1: TsLabelFX;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    sBitBtn7: TsBitBtn;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sLabelFX4: TsLabelFX;
    sLabelFX5: TsLabelFX;
    sLabelFX6: TsLabelFX;
    sBitBtn8: TsBitBtn;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sBitBtn9: TsBitBtn;
    sBitBtn10: TsBitBtn;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    sBitBtn11: TsBitBtn;
    sBitBtn12: TsBitBtn;
    sBitBtn13: TsBitBtn;
    sSaveDialog1: TsSaveDialog;
    sOpenDialog1: TsOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure vnecenie(var strGlav:string; var Har:Harr);
    procedure podschitivanie;
    procedure Itogo;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure sBitBtn8Click(Sender: TObject);
    procedure sBitBtn11Click(Sender: TObject);
    procedure sBitBtn10Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sBitBtn12Click(Sender: TObject);
    procedure sBitBtn13Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Har:Harr;
  strGlav:string;
  fail:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject); {����� ����}
var
   str2:string;
   i1:integer;
   label 3;

begin

   If TreeView1.Selected=nil then
   Begin
   ShowMessage('���� �� ������');
   exit;
   End;

   3:
   If TreeView1.Selected.Level=0 then
   Begin
   str2:=InputBox('����� ����', '����������, ������� ����� �������� ������ ����', '');
   If str2='' then
   Begin
   ShowMessage('�������� �� �������');
   Exit;
   End;
   i1:=0;
   Repeat
   inc(i1);
   If (str2[i1]='[') or (str2[i1]=']') then
   Begin
   ShowMessage('�������� �� ������ ���������: [ ]');
   GoTo 3
   End;
   Until i1=length(str2);
   str2:=str2+'   [�����:0]   [�����:0][����:0][��������:0]   [����:0]';
   Treeview1.Items.Insert(Treeview1.Selected,str2);
   End;

   If TreeView1.Selected.Level<>0 then
   Begin
   str2:=InputBox('����� ����', '����������, ������� ����� �������� ������ ����', '');
   If str2='' then
   Begin
   ShowMessage('�������� �� �������');
   Exit;
   End;
   i1:=0;
   Repeat
   inc(i1);
   If (str2[i1]='[') or (str2[i1]=']') then
   Begin
   ShowMessage('�������� �� ������ ���������: [ ]');
   GoTo 3
   End;
   Until i1=length(str2);
   str2:=str2+'   [�����:0]   [�����:0][����:0][��������:0]   [����:0]';
   Treeview1.Items.AddFirst(Treeview1.Items.Item[0],str2);
   End;

   podschitivanie;

end;

procedure TForm1.Button2Click(Sender: TObject); {�������� �����}
begin

   If TreeView1.Selected=nil then
   Begin
   ShowMessage('���� �� ������');
   exit;
   End;

   If TreeView1.Selected.Level=0 then
   Begin
   new(Har);
   strGlav:='';
   vnecenie(strGlav,Har);
   If strGlav='' then
   Begin
   Dispose(Har);
   Exit
   End;

   Treeview1.Items.AddChildObject(Treeview1.Selected,strGlav,Har);
   End;

   If (TreeView1.Selected.Level<>0) then
   Begin
   new(Har);
   strGlav:='';
   vnecenie(strGlav,Har);
   If strGlav='' then
   Begin
   Dispose(Har);
   Exit
   End;
   Treeview1.Items.InsertObject(Treeview1.Selected,strGlav,Har);
   End;

   podschitivanie;

end;

procedure TForm1.Button3Click(Sender: TObject); {������������� ����� ����}
var i1:integer;
    str2:string;
    Label 3;
begin

   If TreeView1.Selected=nil then
   Begin
   ShowMessage('���� �� ������');
   exit;
   End;

   3:
   If TreeView1.Selected.Level=0 then
   Begin
   str2:=InputBox('����� ����', '����������, ������� ����� �������� ������ ����', '');
   If str2='' then
   Begin
   ShowMessage('�������� �� �������');
   Exit;
   End;
   i1:=0;
   Repeat
   inc(i1);
   If (str2[i1]='[') or (str2[i1]=']') then
   Begin
   ShowMessage('�������� �� ������ ���������: [ ]');
   GoTo 3;
   End;
   Until i1=length(str2);
   str2:=str2+'   [�����:0]   [�����:0][����:0][��������:0]   [����:0]';
   Treeview1.Selected.Text:=str2;
   End
   Else
   ShowMessage('�������� ������ ����� ����');

   podschitivanie;

end;

procedure TForm1.FormCreate(Sender: TObject);{���� ������� ���� ���}
begin

    Treeview1.Selected:=Treeview1.Items.Item[0];
    If Treeview1.Items.Count=0 then
    Treeview1.Items.Insert(nil,InputBox('����� ����', '����������, ������� ����� �������� ������ ����', ''));
    Itogo;

end;

procedure TForm1.BitBtn1Click(Sender: TObject); {��������� ����� �����}
begin

   Form2.sPanel1.Visible:=true;
   Form2.sPanel2.Visible:=false;
   Form2.ShowModal;

end;

procedure TForm1.vnecenie(var strGlav: string; var Har: Harr); {��������� �������� �����}
var
 strBel,strZhir,strUgl,strKkal,strMassa,kk:string;

begin

   ShowMessage('�������� ����� ����� �� ������ ������');
   Form2.sPanel1.Visible:=false;
   Form2.sPanel2.Visible:=true;
   Form2.Edit1.Text:=Form2.StringGrid1.Cells[0,Form2.StringGrid1.Row];
   Form2.Edit2.Text:=Form2.StringGrid1.Cells[1,Form2.StringGrid1.Row];
   Form2.Edit3.Text:=Form2.StringGrid1.Cells[2,Form2.StringGrid1.Row];
   Form2.Edit4.Text:=Form2.StringGrid1.Cells[3,Form2.StringGrid1.Row];
   Form2.Edit5.Text:=Form2.StringGrid1.Cells[4,Form2.StringGrid1.Row];
   Form2.StringGrid1.Row:=1;
   Form2.ShowModal;


   Form2.proverka('�����',kk);
   If kk='' then
   Begin
   Exit;
   End;
   Har^.Massa:=StrToFloat(kk);
   Har^.Bel:=Har^.Massa*VibrBel/100;
   Har^.Zhir:=Har^.Massa*VibrZhir/100;
   Har^.Ugl:=Har^.Massa*VibrUgl/100;
   Har^.kkal:=4*Har^.Bel+9*Har^.Zhir+4*Har^.Ugl;

   strMassa:='';
   strBel:='';
   strZhir:='';
   strUgl:='';
   strKkal:='';
   strGlav:='';

   strMassa:=FloatToStr(Har^.Massa);
   strBel:=FloatToStr(Har^.Bel);
   strZhir:=FloatToStr(Har^.Zhir);
   strUgl:=FloatToStr(Har^.Ugl);
   strKkal:=FloatToStr(Har^.kkal);
   strGlav:=VibrNaz;
   strGlav:=strGlav+'   (�����:'+strMassa+')'+'   (�����:'+strBel+')'+'(����:'+strZhir+')'+'(��������:'+strUgl+')'+'   (����:'+strKkal+')';

end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin

   If TreeView1.Selected=nil then
   Begin
   ShowMessage('���� �� ������');
   exit;
   End;

   If TreeView1.Selected.Level=0 then
   Begin
   new(Har);
   strGlav:='';
   vnecenie(strGlav,Har);
   If strGlav='' then
   Begin
   Dispose(Har);
   Exit
   End;
   Treeview1.Items.AddChildObject(Treeview1.Selected,strGlav,Har);
   End;

   If (TreeView1.Selected.Level<>0) then
   Begin
   new(Har);
   strGlav:='';
   vnecenie(strGlav,Har);
   If strGlav='' then
   Begin
   Dispose(Har);
   Exit
   End;
   Treeview1.Items.AddObject(Treeview1.Selected,strGlav,Har);
   End;

   podschitivanie;

end;

procedure TForm1.BitBtn6Click(Sender: TObject);  {1111}
var i1:integer;
    str2:string;
    Label 3;

begin

   If TreeView1.Selected=nil then
   Begin
   ShowMessage('���� �� ������');
   exit;
   End;

   3:
   If TreeView1.Selected.Level=0 then
   Begin
   str2:=InputBox('����� ����', '����������, ������� ����� �������� ������ ����', '');
   If str2='' then
   Begin
   ShowMessage('�������� �� �������');
   Exit;
   End;
   i1:=0;
   Repeat
   inc(i1);
   If (str2[i1]='[') or (str2[i1]=']') then
   Begin
   ShowMessage('�������� �� ������ ���������: [ ]');
   GoTo 3
   End;
   Until i1=length(str2);
   str2:=str2+'   [�����:0]   [�����:0][����:0][��������:0]   [����:0]';
   Treeview1.Items.Add(Treeview1.Selected,str2);
   End;

   If TreeView1.Selected.Level<>0 then
   Begin
   str2:=InputBox('����� ����', '����������, ������� ����� �������� ������ ����', '');
   If str2='' then
   Begin
   ShowMessage('�������� �� �������');
   Exit;
   End;
   i1:=0;
   Repeat
   inc(i1);
   If (str2[i1]='[') or (str2[i1]=']') then
   Begin
   ShowMessage('�������� �� ������ ���������: [ ]');
   GoTo 3
   End;
   Until i1=length(str2);
   str2:=str2+'   [�����:0]   [�����:0][����:0][��������:0]   [����:0]';

   Treeview1.Items.Add(Treeview1.Items.Item[0],str2)
   End;

   podschitivanie;

end;

procedure TForm1.podschitivanie;
var
   uzel,uzel1:TTreeNode;
   str1:string;
   i1:integer;
   belok,zhiri,uglevod,kkalorii,ves:real;
   ukazatelTek:Harr;
   label 4;

begin

   uzel:=nil;
   Repeat

   If uzel=nil then
   uzel:=TreeView1.Items.Item[0]
   Else
   uzel:=uzel.GetNext;

   4:
   If (uzel.Count=0) and (uzel.Level=0) then
   Begin
   str1:=uzel.Text;
   i1:=0;
   Repeat
   inc(i1);
   Until (uzel.Text[i1+1]=' ') and (uzel.Text[i1+2]=' ') and (uzel.Text[i1+3]=' ') and (uzel.Text[i1+4]='[') and (uzel.Text[i1+5]='�');
   inc(i1);
   Repeat
   Delete(str1,i1,1);
   Until i1-1=length(str1);
   uzel.Text:=str1+'   [�����:0]'+'   [�����:0]'+'[����:0]'+'[��������:0]'+'   [����:0]';
   End;

   If (uzel.Count<>0) and (uzel.Level=0) then
   Begin
   uzel1:=nil;
   belok:=0;
   zhiri:=0;
   uglevod:=0;
   kkalorii:=0;
   ves:=0;
   Repeat
   If uzel1=nil then
   uzel1:=uzel.GetNext
   Else
   uzel1:=uzel1.GetNext;
   ukazatelTek:=uzel1.Data;
   belok:=belok+ukazatelTek^.Bel;
   zhiri:=zhiri+ukazatelTek^.Zhir;
   uglevod:=uglevod+ukazatelTek^.Ugl;
   ves:=ves+ukazatelTek^.Massa;
   Until (uzel1.GetNext=nil) or (uzel1.GetNext.Level=0);
   kkalorii:=belok*4+uglevod*4+zhiri*9;
   str1:=uzel.Text;
   i1:=0;
   Repeat
   inc(i1);
   Until (uzel.Text[i1+1]=' ') and (uzel.Text[i1+2]=' ') and (uzel.Text[i1+3]=' ') and (uzel.Text[i1+4]='[') and (uzel.Text[i1+5]='�');
   inc(i1);
   Repeat
   Delete(str1,i1,1);
   Until i1-1=length(str1);
   uzel.Text:=str1+'   [�����:'+FloatToStr(ves)+']'+'   [�����:'+FloatToStr(belok)+']'+'[����:'+FloatToStr(zhiri)+']'+'[��������:'+FloatToStr(uglevod)+']'+'   [����:'+FloatToStr(kkalorii)+']';
   If (uzel1.GetNext<>nil) and (uzel1.GetNext.Level=0) then
   Begin
   uzel:=uzel1.GetNext;
   GoTo 4;
   End;
   End;

   Until uzel.GetNext=nil;

   Itogo;

end;

procedure TForm1.BitBtn7Click(Sender: TObject);  {2222}
var
    vet,vet2:TTreeNode;
    pr,kol:integer;
begin

   If TreeView1.Selected=nil then
   Begin
   ShowMessage('���� �� ������');
   exit;
   End;
   vet2:=TreeView1.Selected;
   vet:=nil;
   pr:=1;
   kol:=0;
   Repeat
   If vet=nil then
   vet:=TreeView1.Items.Item[0]
   Else
   vet:=vet.GetNext;
   If vet.Level=0 then
   inc(kol);
   Until vet.GetNext=nil;
   If (kol<=1) and (vet2.Level=0) then
   pr:=0;
   If (TreeView1.Items.Count>1) and (pr=1) then
   Begin
   TreeView1.Selected.Delete;
   podschitivanie;
   End
   Else
   ShowMessage('������ ���������� ������ ���� ����� ����');

end;

procedure TForm1.Itogo;
var
   uz:TTreeNode;
   Ibel,Izhir,Iug,Ikkal,Ivec:real;
   x:Harr;

begin

   uz:=nil;
   Ibel:=0;
   Izhir:=0;
   Iug:=0;
   Ikkal:=0;
   Ivec:=0;

   Repeat
   If uz=nil then
   uz:=TreeView1.Items.Item[0]
   Else
   uz:=uz.GetNext;
   If (uz.Level<>0) and (uz.Count=0) then
   Begin
   x:=uz.Data;
   Ibel:=Ibel+x^.Bel;
   Izhir:=Izhir+x^.Zhir;
   Iug:=Iug+x^.Ugl;
   Ivec:=Ivec+x^.Massa;
   End;
   Until uz.GetNext=nil;
   Ikkal:=Ibel*4+Iug*4+Izhir*9;

   Label3.Caption:=FloatToStr(Ibel);
   Label8.Caption:=FloatToStr(Izhir);
   Label9.Caption:=FloatToStr(Iug);
   Label10.Caption:=FloatToStr(Ikkal);
   Label11.Caption:=FloatToStr(Ivec);

end;

procedure TForm1.sBitBtn8Click(Sender: TObject);
begin

 Close;

end;

procedure TForm1.sBitBtn11Click(Sender: TObject);
begin

   If fail<>'' then
   TreeView1.SaveToFile(fail)
   Else
   If sSaveDialog1.Execute then
   Begin

   TreeView1.SaveToFile(sSaveDialog1.FileName);
   fail:=sSaveDialog1.FileName;

   End;

end;

procedure TForm1.sBitBtn10Click(Sender: TObject); {3333}
var  ch1:TTreeNode;
     nazvanie1,substr:string;
     qq:integer;
     r:Harr;

begin

   If sOpenDialog1.Execute then
   Begin

   TreeView1.LoadFromFile(sOpenDialog1.FileName);

   End;

   ch1:=nil;
   Repeat

   If ch1=nil then
   ch1:=TreeView1.Items.Item[0]
   Else
   ch1:=ch1.GetNext;

   If (ch1.Level<>0) then
   Begin
   nazvanie1:=ch1.Text;

   substr:='';
   qq:=pos('(�����:',nazvanie1);
   qq:=qq+7;
   Repeat
   substr:=substr+nazvanie1[qq];
   inc(qq);
   Until nazvanie1[qq]=')';
   new(r);
   r^.Massa:=StrToFloat(substr);

   substr:='';
   qq:=pos('(�����:',nazvanie1);
   qq:=qq+7;
   Repeat
   substr:=substr+nazvanie1[qq];
   inc(qq);
   Until nazvanie1[qq]=')';
   r^.Bel:=StrToFloat(substr);

   substr:='';
   qq:=pos('(����:',nazvanie1);
   qq:=qq+6;
   Repeat
   substr:=substr+nazvanie1[qq];
   inc(qq);
   Until nazvanie1[qq]=')';
   r^.Zhir:=StrToFloat(substr);

   substr:='';
   qq:=pos('(��������:',nazvanie1);
   qq:=qq+10;
   Repeat
   substr:=substr+nazvanie1[qq];
   inc(qq);
   Until nazvanie1[qq]=')';
   r^.Ugl:=StrToFloat(substr);

   r^.Kkal:=r^.Bel*4+r^.Zhir*9+r^.Ugl*4;

   ch1.Data:=r;

   End;

   Until ch1.GetNext=nil;
   podschitivanie;

end;

procedure TForm1.sButton1Click(Sender: TObject);
begin

   TreeView1.FullExpand;

end;

procedure TForm1.sBitBtn12Click(Sender: TObject);
begin

   TreeView1.FullCollapse;

end;

procedure TForm1.sBitBtn13Click(Sender: TObject);
begin

   If sSaveDialog1.Execute then
   Begin

   TreeView1.SaveToFile(sSaveDialog1.FileName);
   fail:=sSaveDialog1.FileName;

   End;

end;

end.

