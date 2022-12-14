unit UnitK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitKpr, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit,
  sCurrencyEdit, StdCtrls, sLabel, sEdit, sGroupBox, sSpinEdit, ExtCtrls,
  sPanel, ComCtrls, sRichEdit, sSkinManager, acArcControls, sStatusBar,
  TeeProcs, TeEngine, Chart, Menus, Series, UnitKpr2, UnitKpr3,
  acAlphaHints, sMemo, sDialogs, jpeg, acImage;

type
  TForm1 = class(TForm)
    sGroupBox1: TsGroupBox;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sGroupBox2: TsGroupBox;
    sEdit3: TsEdit;
    sLabel3: TsLabel;
    sSpinEdit1: TsSpinEdit;
    sSpinEdit2: TsSpinEdit;
    sRadioGroup1: TsRadioGroup;
    sRadioGroup2: TsRadioGroup;
    sPanel1: TsPanel;
    sRichEdit1: TsRichEdit;
    sSkinManager1: TsSkinManager;
    sPanel2: TsPanel;
    sRoundBtn1: TsRoundBtn;
    sStatusBar1: TsStatusBar;
    sPanel3: TsPanel;
    sRichEdit2: TsRichEdit;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Chart1: TChart;
    Series1: TPieSeries;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    sRichEdit3: TsRichEdit;
    N6: TMenuItem;
    sAlphaHints1: TsAlphaHints;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    Timer1: TTimer;
    sMemo1: TsMemo;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Y1: TMenuItem;
    N8: TMenuItem;
    FontDialog1: TFontDialog;
    N7: TMenuItem;
    sColorDialog1: TsColorDialog;
    N9: TMenuItem;
    N10: TMenuItem;
    sImage1: TsImage;
    sImage2: TsImage;
    procedure FormCreate(Sender: TObject);
    procedure sRoundBtn1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  nname: string;
  kolCH,kolDET,klassSAM,klassOT: integer;
  CsamVz,CsamDet,CotVz,CotDet,Itogo: integer;
  today:TDateTime;
  KOL5:integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

     Application.ShowMainForm:=False;
     sRichEdit3.Lines.LoadFromFile('???????.txt');
     sMemo1.Lines.LoadFromFile('5 ?????.txt');
     KOL5:=StrToInt(sMemo1.Lines.Text);
     sLabel6.Caption:='?????????? ??????? ? 5-? ??????????? ?????: '+IntToStr(KOL5);

end;

procedure TForm1.sRoundBtn1Click(Sender: TObject);
begin

   If (sEdit3.Text='') or (StrToInt(sSpinEdit1.Text)<0)
   or (StrToInt(sSpinEdit2.Text)<0) or (sRadioGroup1.ItemIndex=-1)
   or (sRadioGroup2.ItemIndex=-1) or (StrToInt(sSpinEdit1.Text)<StrToInt(sSpinEdit2.Text)) then
   Begin
   ShowMessage('????????? ???????????? ?????');
   Exit;
   End;

   nname:=sEdit3.Text;
   kolCH:=StrToInt(sSpinEdit1.Text);
   kolDET:=StrToInt(sSpinEdit2.Text);

   If sRadioGroup1.ItemIndex=0 then
   klassSAM:=1
   Else
   klassSAM:=2;

   If sRadioGroup2.ItemIndex=0 then
   klassOT:=3;
   If sRadioGroup2.ItemIndex=1 then
   klassOT:=4;
   If sRadioGroup2.ItemIndex=2 then
   klassOT:=5;

   If klassSAM=1 then
   Begin
   CsamVz:=(kolCH-kolDET)*6000;
   CsamDet:=kolDET*3000
   End;

   If klassSAM=2 then
   Begin
   CsamVz:=(kolCH-kolDET)*10000;
   CsamDet:=kolDET*5000
   End;

   If klassOT=3 then
   Begin
   CotVz:=(kolCH-kolDET)*30000;
   CotDet:=kolDET*15000
   End;

   If klassOT=4 then
   Begin
   CotVz:=(kolCH-kolDET)*40000;
   CotDet:=kolDET*20000
   End;

   If klassOT=5 then
   Begin
   CotVz:=(kolCH-kolDET)*60000;
   CotDet:=kolDET*30000
   End;

   If (kolCH-kolDET=2) and (kolDET=1) then
   cotDET:=0;

   If (kolCH-kolDET>=4) and (klassOT=5) then
   Begin
   CotVz:=CotVz-Cotvz div 10;
   CotDet:=CotDet-CotDet div 10;
   End;

   If klassOT=5 then
   Begin
   KOL5:=KOL5+kolCH;
   sMemo1.Clear;
   sMemo1.Lines.Text:=IntToStr(KOL5);
   sMemo1.Lines.SaveToFile('5 ?????.txt');
   End;

   Itogo:=CotVz+CotDet+CsamVz+CsamDet;
   today:=Now;

   sRichEdit2.Lines.Add('??? ??????????: '+nname);
   sRichEdit2.Lines.Add('????? ????????: '+IntToStr(klassSAM));
   sRichEdit2.Lines.Add('????? ?????: '+IntToStr(klassOT));
   sRichEdit2.Lines.Add('?????????? ???????? ? ?????: '+IntToStr(kolCH-kolDET));
   sRichEdit2.Lines.Add('?????????? ????? ? ?????: '+IntToStr(kolDET));
   sRichEdit2.Lines.Add('');
   sRichEdit2.Lines.Add('????????? ???????? ??????? ?? ???????: '+IntToStr(CsamVz)+' ???.');
   sRichEdit2.Lines.Add('????????? ??????? ??????? ?? ???????: '+IntToStr(CsamDet)+' ???.');
   sRichEdit2.Lines.Add('????????? ?????????? ????????: '+IntToStr(CotVz)+' ???.');
   sRichEdit2.Lines.Add('????????? ?????????? ?????: '+IntToStr(CotDet)+' ???.');
   sRichEdit2.Lines.Add('');
   sRichEdit2.Lines.Add('???? ???????: '+DateToStr(today));
   sRichEdit2.Lines.Add('????? ???????: '+TimeToStr(today));
   sRichEdit2.Lines.Add('');
   sRichEdit2.Lines.Add('?????: '+IntToStr(Itogo)+' ???.');
   sRichEdit2.Lines.Add('********************************************');
   sRichEdit2.Lines.Add('');

   sRichEdit3.Lines.Add('??? ??????????: '+nname);
   sRichEdit3.Lines.Add('????? ????????: '+IntToStr(klassSAM));
   sRichEdit3.Lines.Add('????? ?????: '+IntToStr(klassOT));
   sRichEdit3.Lines.Add('?????????? ???????? ? ?????: '+IntToStr(kolCH-kolDET));
   sRichEdit3.Lines.Add('?????????? ????? ? ?????: '+IntToStr(kolDET));
   sRichEdit3.Lines.Add('');
   sRichEdit3.Lines.Add('????????? ???????? ??????? ?? ???????: '+IntToStr(CsamVz)+' ???.');
   sRichEdit3.Lines.Add('????????? ??????? ??????? ?? ???????: '+IntToStr(CsamDet)+' ???.');
   sRichEdit3.Lines.Add('????????? ?????????? ????????: '+IntToStr(CotVz)+' ???.');
   sRichEdit3.Lines.Add('????????? ?????????? ?????: '+IntToStr(CotDet)+' ???.');
   sRichEdit3.Lines.Add('');
   sRichEdit3.Lines.Add('???? ???????: '+DateToStr(today));
   sRichEdit3.Lines.Add('????? ???????: '+TimeToStr(today));
   sRichEdit3.Lines.Add('');
   sRichEdit3.Lines.Add('?????: '+IntToStr(Itogo)+' ???.');
   sRichEdit3.Lines.Add('********************************************');
   sRichEdit3.Lines.Add('');

   sRichEdit3.Lines.SaveToFile('???????.txt');

   With Series1 do
   Begin
   Clear;
   Add(CsamVz, '???. ????????? ???????? ??????? ?? ???????', clYellow);
   Add(CsamDet, '???. ????????? ??????? ??????? ?? ???????', clBlue);
   Add(CotVz, '???. ????????? ?????????? ????????', clRed);
   Add(CotDet, '???. ????????? ?????????? ?????', clPurple);
   End;

   sLabel6.Caption:='?????????? ??????? ? 5-? ??????????? ?????: '+IntToStr(KOL5);

end;

procedure TForm1.N2Click(Sender: TObject);
begin

   Close;

end;

procedure TForm1.N5Click(Sender: TObject);
begin

   Form3.Show;
   Form3.sRichEdit1.Lines.LoadFromFile('???????.txt');

end;



procedure TForm1.N6Click(Sender: TObject);
begin

   Form4.Show;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

   today:=Now;
   sLabel5.Caption:='??????? ?????: '+TimeToStr(today);
   sLabel4.Caption:='??????? ????: '+DateToStr(today);

end;

procedure TForm1.Y1Click(Sender: TObject);
begin

   If FontDialog1.Execute then
   sRichEdit1.Font:=FontDialog1.Font;

end;


procedure TForm1.N8Click(Sender: TObject);
begin

   If FontDialog1.Execute then
   sRichEdit2.Font:=FontDialog1.Font;

end;


procedure TForm1.N7Click(Sender: TObject);
begin

   If sColorDialog1.Execute then
   sRichEdit1.Color:=sColorDialog1.Color;

end;

procedure TForm1.N9Click(Sender: TObject);
begin

   If sColorDialog1.Execute then
   sRichEdit2.Color:=sColorDialog1.Color;

end;

end.
