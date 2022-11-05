unit Unit10lab1zad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

const
   MaxSpich=3;  

type
  TForm1 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Label5: TLabel;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    Function Proverka: boolean;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
    procedure CheckBox19Click(Sender: TObject);
    procedure CheckBox20Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  CurrentPlayer: integer;
  CurrentSpich: byte=0;

implementation

{$R *.dfm}

{ TForm1 }

function TForm1.Proverka: boolean;
var
 res:boolean;

begin

   res:=true;

   If CurrentSpich>MaxSpich then
   res:=false
   Else
   If (CheckBox1.Checked) and (CheckBox2.Checked) and
      (CheckBox3.Checked) and (CheckBox4.Checked) and
      (CheckBox5.Checked) and (CheckBox6.Checked) and
      (CheckBox7.Checked) and (CheckBox8.Checked) and
      (CheckBox9.Checked) and (CheckBox10.Checked) and
      (CheckBox11.Checked) and (CheckBox12.Checked) and
      (CheckBox13.Checked) and (CheckBox14.Checked) and
      (CheckBox15.Checked) and (CheckBox16.Checked) and
      (CheckBox17.Checked) and (CheckBox18.Checked) and
      (CheckBox19.Checked) and (CheckBox20.Checked) then
   Begin

   If CurrentPlayer=1 then
   ShowMessage('��������(�) '+Edit1.Text);
   If CurrentPlayer=2 then
   ShowMessage('��������(�) '+Edit2.Text);
   If CurrentPlayer=3 then
   ShowMessage('��������(�) '+Edit3.Text);

   Button1.Enabled:=false;
   Edit1.Enabled:=true;
   Edit2.Enabled:=true;
   Edit3.Enabled:=true;
   Button2.Enabled:=true;
   Edit1.Text:='';
   Edit2.Text:='';
   Edit3.Text:='';
   Label4.Caption:='';
   CheckBox1.Checked:=False;
   CheckBox2.Checked:=False;
   CheckBox3.Checked:=False;
   CheckBox4.Checked:=False;
   CheckBox5.Checked:=False;
   CheckBox6.Checked:=False;
   CheckBox7.Checked:=False;
   CheckBox8.Checked:=False;
   CheckBox9.Checked:=False;
   CheckBox10.Checked:=False;
   CheckBox11.Checked:=False;
   CheckBox12.Checked:=False;
   CheckBox13.Checked:=False;
   CheckBox14.Checked:=False;
   CheckBox15.Checked:=False;
   CheckBox16.Checked:=False;
   CheckBox17.Checked:=False;
   CheckBox18.Checked:=False;
   CheckBox19.Checked:=False;
   CheckBox20.Checked:=False;

   End;

   proverka:=res;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

   CurrentPlayer:=1;

   If (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'') then
   Begin

   CheckBox1.Enabled:=True;
   CheckBox2.Enabled:=True;
   CheckBox3.Enabled:=True;
   CheckBox4.Enabled:=True;
   CheckBox5.Enabled:=True;
   CheckBox6.Enabled:=True;
   CheckBox7.Enabled:=True;
   CheckBox8.Enabled:=True;
   CheckBox9.Enabled:=True;
   CheckBox10.Enabled:=True;
   CheckBox11.Enabled:=True;
   CheckBox12.Enabled:=True;
   CheckBox13.Enabled:=True;
   CheckBox14.Enabled:=True;
   CheckBox15.Enabled:=True;
   CheckBox16.Enabled:=True;
   CheckBox17.Enabled:=True;
   CheckBox18.Enabled:=True;
   CheckBox19.Enabled:=True;
   CheckBox20.Enabled:=True;

   Button1.Enabled:=True;
   Label4.Caption:=Edit1.Text;
   Edit1.Enabled:=False;
   Edit2.Enabled:=False;
   Edit3.Enabled:=False;
   Button2.Enabled:=False;

   End
   Else
   ShowMessage('������� ��� �������');

end;

procedure TForm1.Button1Click(Sender: TObject);
begin

   If CurrentPlayer=1 then
   CurrentPlayer:=2
   Else
   If CurrentPlayer=2 then
   CurrentPlayer:=3
   Else
   If CurrentPlayer=3 then
   CurrentPlayer:=1;

   CurrentSpich:=0;

   If CurrentPlayer=1 then
   Label4.Caption:=Edit1.Text;
   If CurrentPlayer=2 then
   Label4.Caption:=Edit2.Text;
   If CurrentPlayer=3 then
   Label4.Caption:=Edit3.Text;

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox1.Enabled:=false
   else
   CheckBox1.Checked:=false;

end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox2.Enabled:=false
   else
   CheckBox2.Checked:=false;


end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox3.Enabled:=false
   else
   CheckBox3.Checked:=false;


end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox4.Enabled:=false
   else
   CheckBox4.Checked:=false;


end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox5.Enabled:=false
   else
   CheckBox5.Checked:=false;


end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox6.Enabled:=false
   else
   CheckBox6.Checked:=false;


end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox7.Enabled:=false
   else
   CheckBox7.Checked:=false;


end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox8.Enabled:=false
   else
   CheckBox8.Checked:=false;


end;

procedure TForm1.CheckBox9Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox9.Enabled:=false
   else
   CheckBox9.Checked:=false;


end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox10.Enabled:=false
   else
   CheckBox10.Checked:=false;

end;

procedure TForm1.CheckBox11Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox11.Enabled:=false
   else
   CheckBox11.Checked:=false;

end;

procedure TForm1.CheckBox12Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox12.Enabled:=false
   else
   CheckBox12.Checked:=false;

end;

procedure TForm1.CheckBox13Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox13.Enabled:=false
   else
   CheckBox13.Checked:=false;

end;

procedure TForm1.CheckBox14Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox14.Enabled:=false
   else
   CheckBox14.Checked:=false;

end;

procedure TForm1.CheckBox15Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox15.Enabled:=false
   else
   CheckBox15.Checked:=false;

end;

procedure TForm1.CheckBox16Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox16.Enabled:=false
   else
   CheckBox16.Checked:=false;

end;

procedure TForm1.CheckBox17Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox17.Enabled:=false
   else
   CheckBox17.Checked:=false;

end;

procedure TForm1.CheckBox18Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox18.Enabled:=false
   else
   CheckBox18.Checked:=false;

end;

procedure TForm1.CheckBox19Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox19.Enabled:=false
   else
   CheckBox19.Checked:=false;

end;

procedure TForm1.CheckBox20Click(Sender: TObject);
begin

   inc(CurrentSpich);

   If proverka then
   CheckBox20.Enabled:=false
   else
   CheckBox20.Checked:=false;

end;

end.
