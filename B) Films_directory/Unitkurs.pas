unit Unitkurs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sGroupBox, sSkinProvider, sSkinManager, ComCtrls,
  sRichEdit, acAlphaHints, sButton, Buttons, sBitBtn, Menus, sDialogs,
  ExtCtrls, sPanel, sStatusBar, sLabel, Unitkurspr, Unitkerspr2,Unitkurspr3, jpeg,
  acImage, acPNG;

type
  TForm1 = class(TForm)
    sGroupBox1: TsGroupBox;
    sRichEdit1: TsRichEdit;
    sSkinManager1: TsSkinManager;
    sAlphaHints1: TsAlphaHints;
    sButton1: TsButton;
    sRichEdit2: TsRichEdit;
    sBitBtn1: TsBitBtn;
    MainMenu1: TMainMenu;
    x1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    PopupMenu1: TPopupMenu;
    FontDialog1: TFontDialog;
    N5: TMenuItem;
    N3: TMenuItem;
    sColorDialog1: TsColorDialog;
    sStatusBar1: TsStatusBar;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    Timer1: TTimer;
    sPanel1: TsPanel;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    sPanel2: TsPanel;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sImage1: TsImage;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure raspredelenie;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

Type
       Film = record
       Nazvanie: string[100];
       FamiliyRezh: string[100];
       GodVipuska: integer;
       Vremy: real;
       CorCh: string[20];
    End;

var
  Form1: TForm1;
  F: array [1..1000] of Film;  {������ �������}
  kol: integer;    {���������� �������}

implementation

{$R *.dfm}




procedure TForm1.FormCreate(Sender: TObject);
begin

   sRichEdit2.Lines.LoadFromFile('������.txt');   {�������� ����� �� ������� �������}
   kol:=sRichEdit2.Lines.Count div 6;   {����� ���������� (��� ��� ���� ������ �� 6 �����)}

   sLabel1.Caption:='���������� �������: '+IntToStr(kol);  {���������� � ���-�� ������� ��������� � �����}

   raspredelenie; {��������� �������� ������� ������� �� ����� � ����� ������� � ���� ������}

   Application.ShowMainForm:=False; {��� ������ ���� �����������}

end;

procedure TForm1.sButton1Click(Sender: TObject);
var
   n,fa,go,sk,cv: string;
   g:integer;
   v:real;
   vv:integer;
   vv1: double;

begin

   {}n:=inputbox('�������� ������', '������� �������� ������', '');
   {}fa:= inputbox('������� ���������', '������� ������� ���������', '');
   {}go:=inputbox('��� �������', '������� ��� �������', '');                    {������������ ����������}
   {}sk:=inputbox('�����(���.)', '������� �����(���.)', '');
   If MessageBox(Handle,'����� �������?','���� ������',MB_YESNO) = MrYES then
   cv:='�������'
   Else
   cv:='�����-�����';


   If (TryStrToInt(go,vv)=false) or (TryStrToFloat(sk,vv1)=false) then
   Begin
   ShowMessage('��������� ������������ �����');
   Exit;
   End
   Else
   Begin
   g:=StrToInt(go);                                    {�������� ������������ �����}
   v:=StrToFloat(sk);
   End;

   If (g<0) or (v<0) then
   Begin
   ShowMessage('��������� ������������ �����');
   Exit;
   End;


   kol:=kol+1;
   F[kol].Nazvanie:=n;
   F[kol].FamiliyRezh:=fa;           {������������ ������}
   F[kol].GodVipuska:=g;
   F[kol].Vremy:=v;
   F[kol].CorCh:=cv;

   sRichEdit1.Lines.Add('�������� ������: '+F[kol].Nazvanie);
   sRichEdit1.Lines.Add('������� ���������: '+F[kol].FamiliyRezh);
   sRichEdit1.Lines.Add('��� �������: '+IntToStr(F[kol].GodVipuska));  {����� ����������}
   sRichEdit1.Lines.Add('�����(���.): '+FloatToStr(F[kol].Vremy));
   sRichEdit1.Lines.Add('������� ��� �����-�����: '+F[kol].CorCh);
   sRichEdit1.Lines.Add('');

   sRichEdit2.Lines.Add(F[kol].Nazvanie);
   sRichEdit2.Lines.Add(F[kol].FamiliyRezh);
   sRichEdit2.Lines.Add(IntToStr(F[kol].GodVipuska));      {����� ������}
   sRichEdit2.Lines.Add(FloatToStr(F[kol].Vremy));
   sRichEdit2.Lines.Add(F[kol].CorCh);
   sRichEdit2.Lines.Add('');

   sLabel1.Caption:='���������� �������: '+IntToStr(kol);

end;

procedure TForm1.sBitBtn1Click(Sender: TObject);
var
   name:string;
   nomud: integer;
   i1:integer;

begin

   nomud:=-1;
   name:=inputbox('��������','������� �������� ���������� ������','');
   For i1:=1 to kol do
   If name=F[i1].Nazvanie then
   Begin                                                                  {����� ������ ��������� ������}
   nomud:=i1;
   break;
   End;

   If nomud=-1 then
   Begin
   ShowMessage('������ ������ ���');  {���� ������ ���}
   Exit;
   End;

   kol:=kol-1;

   nomud:=6*(nomud-1);  {������� ������ ������� ������ � ����� ��� �����(������)}

   For i1:=1 to 6 do
   sRichEdit2.Lines.Delete(nomud);   {��������}

   raspredelenie;

   sLabel1.Caption:='���������� �������: '+IntToStr(kol);

end;

procedure TForm1.raspredelenie;
var
   V,i1:integer;
begin

   sRichEdit1.Clear;
   V:=-1;
   For i1:=1 to kol do
   Begin
   inc(V);
   F[i1].Nazvanie:=sRichEdit2.Lines[V];
   inc(V);
   F[i1].FamiliyRezh:=sRichEdit2.Lines[V];
   inc(V);                                                {�������� ������� �� ������}
   F[i1].GodVipuska:=StrToInt(sRichEdit2.Lines[V]);
   inc(V);
   F[i1].Vremy:=StrToFloat(sRichEdit2.Lines[V]);
   inc(V);
   F[i1].CorCh:=sRichEdit2.Lines[V];
   inc(V);
   End;

   For i1:=1 to kol do
   Begin
   sRichEdit1.Lines.Add('�������� ������: '+F[i1].Nazvanie);
   sRichEdit1.Lines.Add('������� ���������: '+F[i1].FamiliyRezh);
   sRichEdit1.Lines.Add('��� �������: '+IntToStr(F[i1].GodVipuska));   {����� ���������� � ��� ����}
   sRichEdit1.Lines.Add('�����(���.): '+FloatToStr(F[i1].Vremy));
   sRichEdit1.Lines.Add('������� ��� �����-�����: '+F[i1].CorCh);
   sRichEdit1.Lines.Add('');
   End;


end;



procedure TForm1.N1Click(Sender: TObject);
begin

   Close;

end;

procedure TForm1.N2Click(Sender: TObject);
begin

   sRichEdit2.Lines.SaveToFile('������.txt');

end;

procedure TForm1.N4Click(Sender: TObject);
begin

   sRichEdit2.Lines.LoadFromFile('������.txt');
   kol:=sRichEdit2.Lines.Count div 6;
   raspredelenie;
   sLabel1.Caption:='���������� �������: '+IntToStr(kol);

end;

procedure TForm1.N5Click(Sender: TObject);
begin

   If FontDialog1.Execute then
   sRichEdit1.Font:=FontDialog1.Font;

end;

procedure TForm1.N3Click(Sender: TObject);
begin

   If sColorDialog1.Execute then
   sRichEdit1.Color:=sColorDialog1.Color;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  today:TDateTime;

begin

   today:=Now;
   sLabel2.Caption:='�����: '+TimeToStr(today);
   sLabel3.Caption:='����: '+DateToStr(today)

end;

procedure TForm1.N10Click(Sender: TObject);
begin

   Form3.Show;

end;

procedure TForm1.sBitBtn5Click(Sender: TObject);
var
   god,vv:integer;
   st:string;
   i1:integer;

begin

   st:=InPutBox('���','������� ����������� ���','');
   If TryStrToInt(st,vv)=false then
   Begin
   ShowMessage('��������� ������������ �����');
   Exit;
   End
   Else
   god:=StrToInt(st);

   Form4.sLabel1.Caption:='������ �� '+st+' ����';

   Form4.sRichEdit1.Clear;
   For i1:=1 to kol do
   If F[i1].GodVipuska<god then
   Begin
   Form4.sRichEdit1.Lines.Add('�������� ������: '+F[i1].Nazvanie);
   Form4.sRichEdit1.Lines.Add('������� ���������: '+F[i1].FamiliyRezh);
   Form4.sRichEdit1.Lines.Add('��� �������: '+IntToStr(F[i1].GodVipuska));
   Form4.sRichEdit1.Lines.Add('�����(���.): '+FloatToStr(F[i1].Vremy));
   Form4.sRichEdit1.Lines.Add('������� ��� �����-�����: '+F[i1].CorCh);
   Form4.sRichEdit1.Lines.Add('');
   End;

   Form4.Show;

end;

procedure TForm1.sBitBtn4Click(Sender: TObject);
var
   st:string;
   i1:integer;

begin

   st:=InPutBox('���','������� ��� ���������','');

   Form4.sLabel1.Caption:='������ ���������: '+st;

   Form4.sRichEdit1.Clear;
   For i1:=1 to kol do
   If F[i1].FamiliyRezh=st then
   Begin
   Form4.sRichEdit1.Lines.Add('�������� ������: '+F[i1].Nazvanie);
   Form4.sRichEdit1.Lines.Add('������� ���������: '+F[i1].FamiliyRezh);
   Form4.sRichEdit1.Lines.Add('��� �������: '+IntToStr(F[i1].GodVipuska));
   Form4.sRichEdit1.Lines.Add('�����(���.): '+FloatToStr(F[i1].Vremy));
   Form4.sRichEdit1.Lines.Add('������� ��� �����-�����: '+F[i1].CorCh);
   Form4.sRichEdit1.Lines.Add('');
   End;

   Form4.Show;

end;

procedure TForm1.sBitBtn2Click(Sender: TObject);
var
   i1:integer;
begin

   Form4.sLabel1.Caption:='������ ������ 30 ���';
   Form4.sRichEdit1.Clear;
   For i1:=1 to kol do
   If F[i1].Vremy<30 then
   Begin
   Form4.sRichEdit1.Lines.Add('�������� ������: '+F[i1].Nazvanie);
   Form4.sRichEdit1.Lines.Add('������� ���������: '+F[i1].FamiliyRezh);
   Form4.sRichEdit1.Lines.Add('��� �������: '+IntToStr(F[i1].GodVipuska));
   Form4.sRichEdit1.Lines.Add('�����(���.): '+FloatToStr(F[i1].Vremy));
   Form4.sRichEdit1.Lines.Add('������� ��� �����-�����: '+F[i1].CorCh);
   Form4.sRichEdit1.Lines.Add('');
   End;

   Form4.Show;

end;

procedure TForm1.sBitBtn3Click(Sender: TObject);
var
   god,vv:integer;
   st:string;
   i1:integer;

begin

   st:=InPutBox('���','������� ����������� ���','');
   If TryStrToInt(st,vv)=false then
   Begin
   ShowMessage('��������� ������������ �����');
   Exit;
   End
   Else
   god:=StrToInt(st);

   Form4.sLabel1.Caption:='�����-����� ������ �� '+st+' ����';

   Form4.sRichEdit1.Clear;
   For i1:=1 to kol do
   If (F[i1].GodVipuska>god) and (F[i1].CorCh='�����-�����') then
   Begin
   Form4.sRichEdit1.Lines.Add('�������� ������: '+F[i1].Nazvanie);
   Form4.sRichEdit1.Lines.Add('������� ���������: '+F[i1].FamiliyRezh);
   Form4.sRichEdit1.Lines.Add('��� �������: '+IntToStr(F[i1].GodVipuska));
   Form4.sRichEdit1.Lines.Add('�����(���.): '+FloatToStr(F[i1].Vremy));
   Form4.sRichEdit1.Lines.Add('������� ��� �����-�����: '+F[i1].CorCh);
   Form4.sRichEdit1.Lines.Add('');
   End;

   Form4.Show;

end;

end.
