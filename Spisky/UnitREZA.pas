unit UnitREZA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, Buttons, sBitBtn, sListBox, sGroupBox,
  sSkinManager, sLabel;

type
  TForm1 = class(TForm)
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sListBox1: TsListBox;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sEdit1: TsEdit;
    sBitBtn3: TsBitBtn;
    sGroupBox3: TsGroupBox;
    sBitBtn4: TsBitBtn;
    sSkinManager1: TsSkinManager;
    sLabel1: TsLabel;
    procedure FormCreate(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
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
begin

   sListBox1.Items.Add('Факультет вычислительной математики и кибернетики');
   sListBox1.Items.Add('Химический факультет');
   sListBox1.Items.Add('Биологический факультет');
   sListBox1.Items.Add('Физический факультет');
   sListBox1.Items.Add('Факультет почвоведения');
   sListBox1.Items.Add('Факультет иностранных языков и регионоведения');
   sListBox1.Items.Add('Механико–математический факультет');
   sListBox1.Items.Add('Исторический факультет');
   sListBox1.Items.Add('Юридический факультет');
   sListBox1.Items.Add('Факультет глобальных процессов');

end;

procedure TForm1.sBitBtn4Click(Sender: TObject);
begin

   Close;

end;

procedure TForm1.sBitBtn1Click(Sender: TObject);
var
   i1:integer;

begin

   For i1:=sListBox1.Items.Count-1 downto 0 do
   If sListBox1.Selected[i1]=true then
   Begin
   sListBox1.Items.Delete(i1);
   End;

end;

procedure TForm1.sBitBtn3Click(Sender: TObject);
var
   i1:integer;

begin

   For i1:=sListBox1.Items.Count-1 downto 0 do
   If sListBox1.Items.Strings[i1]=sEdit1.Text then
   Begin
   ShowMessage('Такой факультет уже есть');
   Exit;
   End;

   sListBox1.Items.Add(sEdit1.Text);

end;

procedure TForm1.sBitBtn2Click(Sender: TObject);
var
   i1:integer;

begin

   sLabel1.Caption:='ФАКУЛЬТЕТЫ:'+#13;
   For i1:=0 to sListBox1.Items.Count-1 do
   If sListBox1.Selected[i1]=true then
   Begin
   sLabel1.Caption:=sLabel1.Caption+sListBox1.Items.Strings[i1]+#13;
   End;

end;

end.
