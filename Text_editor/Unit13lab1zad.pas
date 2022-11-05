unit Unit13lab1zad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, Buttons, ImgList, Menus;

type
  TForm1 = class(TForm)
    RichEdit1: TRichEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ImageList1: TImageList;
    ToolButton15: TToolButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    MainMenu1: TMainMenu;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    BitBtn1: TBitBtn;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure RichEdit1SelectionChange(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fail: string;

implementation

{$R *.dfm}

procedure TForm1.ToolButton1Click(Sender: TObject);
begin

   RichEdit1.Lines.Clear;
   If SaveDialog1.Execute then
   Begin

   RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
   fail:=SaveDialog1.FileName;

   End;

end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin

   If OpenDialog1.Execute then
   Begin

   RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);

   End;

end;

procedure TForm1.ToolButton14Click(Sender: TObject);
begin

   If SaveDialog1.Execute then
   Begin

   RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
   fail:=SaveDialog1.FileName;

   End;

end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin

   RichEdit1.CutToClipboard;

end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin

   RichEdit1.CopyToClipboard;

end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin

   RichEdit1.PasteFromClipboard;

end;

procedure TForm1.RichEdit1SelectionChange(Sender: TObject);
begin

   ToolButton13.Down:= fsBold in RichEdit1.SelAttributes.Style;
   ToolButton7.Down:= fsItalic in RichEdit1.SelAttributes.Style;
   ToolButton8.Down:= fsUnderline in RichEdit1.SelAttributes.Style;
   ToolButton12.Down:= Boolean(RichEdit1.Paragraph.Numbering);

   If RichEdit1.Paragraph.Alignment=taLeftJustify then
   Begin
   ToolButton9.Down:=true;
   ToolButton10.Down:=false;
   ToolButton11.Down:=false;
   End;

   If RichEdit1.Paragraph.Alignment=taCenter then
   Begin
   ToolButton9.Down:=false;
   ToolButton10.Down:=true;
   ToolButton11.Down:=false;
   End;

   If RichEdit1.Paragraph.Alignment=taRightJustify then
   Begin
   ToolButton9.Down:=false;
   ToolButton10.Down:=false;
   ToolButton11.Down:=true;
   End;


end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin

   If fail<>'' then
   RichEdit1.Lines.SaveToFile(fail)
   Else
   If SaveDialog1.Execute then
   Begin

   RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
   fail:=SaveDialog1.FileName;

   End;


end;


procedure TForm1.ToolButton13Click(Sender: TObject);
begin

   If ToolButton13.Down then
   RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style+[fsBold]
   else
   RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style-[fsBold];

end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin

   If ToolButton8.Down then
   RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style+[fsUnderline]
   else
   RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style-[fsUnderline];

end;

procedure TForm1.ToolButton7Click(Sender: TObject);
begin

   If ToolButton7.Down then
   RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style+[fsItalic]
   else
   RichEdit1.SelAttributes.Style:=RichEdit1.SelAttributes.Style-[fsItalic];

end;

procedure TForm1.ToolButton12Click(Sender: TObject);
begin

   RichEdit1.Paragraph.Numbering:=TNumberingStyle(ToolButton12.Down);

end;

procedure TForm1.ToolButton15Click(Sender: TObject);
begin

   If FontDialog1.Execute then
   RichEdit1.SelAttributes.Assign(FontDialog1.Font);

end;

procedure TForm1.ToolButton9Click(Sender: TObject);
begin

   If ToolButton9.Down then
   RichEdit1.Paragraph.Alignment:=taLeftJustify;
   ToolButton10.Down:=false;
   ToolButton11.Down:=false;


end;

procedure TForm1.ToolButton10Click(Sender: TObject);
begin

   If ToolButton10.Down then
   RichEdit1.Paragraph.Alignment:=taCenter;
   ToolButton9.Down:=false;
   ToolButton11.Down:=false;


end;

procedure TForm1.ToolButton11Click(Sender: TObject);
begin

   If ToolButton11.Down then
   RichEdit1.Paragraph.Alignment:=taRightJustify;
   ToolButton10.Down:=false;
   ToolButton9.Down:=false;


end;

procedure TForm1.N1Click(Sender: TObject);
begin

   ToolButton1Click(Sender);

end;

procedure TForm1.N2Click(Sender: TObject);
begin

   ToolButton2Click(Sender);

end;

procedure TForm1.N3Click(Sender: TObject);
begin

   ToolButton3Click(Sender);

end;

procedure TForm1.N4Click(Sender: TObject);
begin

   ToolButton14Click(Sender);

end;

procedure TForm1.N5Click(Sender: TObject);
begin

   ToolButton4Click(Sender);

end;

procedure TForm1.N6Click(Sender: TObject);
begin

   ToolButton5Click(Sender);

end;

procedure TForm1.N7Click(Sender: TObject);
begin

   ToolButton6Click(Sender);

end;

procedure TForm1.N8Click(Sender: TObject);
begin

   If ToolButton7.Down=False then
   Begin
   ToolButton7.Down:=true;
   ToolButton7Click(Sender);
   End
   Else
   Begin
   ToolButton7.Down:=false;
   ToolButton7Click(Sender);
   End;


end;

procedure TForm1.N9Click(Sender: TObject);
begin

   If ToolButton8.Down=False then
   Begin
   ToolButton8.Down:=true;
   ToolButton8Click(Sender);
   End
   Else
   Begin
   ToolButton8.Down:=false;
   ToolButton8Click(Sender);
   End;


end;

procedure TForm1.N14Click(Sender: TObject);
begin

   If ToolButton13.Down=False then
   Begin
   ToolButton13.Down:=true;
   ToolButton13Click(Sender);
   End
   Else
   Begin
   ToolButton13.Down:=false;
   ToolButton13Click(Sender);
   End;


end;

procedure TForm1.N10Click(Sender: TObject);
begin

   If ToolButton9.Down=False then
   Begin
   ToolButton9.Down:=true;
   ToolButton9Click(Sender);
   End
   Else
   Begin
   ToolButton9.Down:=false;
   ToolButton9Click(Sender);
   End;


end;

procedure TForm1.N11Click(Sender: TObject);
begin

   If ToolButton10.Down=False then
   Begin
   ToolButton10.Down:=true;
   ToolButton10Click(Sender);
   End
   Else
   Begin
   ToolButton10.Down:=false;
   ToolButton10Click(Sender);
   End;

end;

procedure TForm1.N12Click(Sender: TObject);
begin

   If ToolButton11.Down=False then
   Begin
   ToolButton11.Down:=true;
   ToolButton11Click(Sender);
   End
   Else
   Begin
   ToolButton11.Down:=false;
   ToolButton11Click(Sender);
   End;


end;

procedure TForm1.N13Click(Sender: TObject);
begin

   If ToolButton12.Down=False then
   Begin
   ToolButton12.Down:=true;
   ToolButton12Click(Sender);
   End
   Else
   Begin
   ToolButton12.Down:=false;
   ToolButton12Click(Sender);
   End;


end;

procedure TForm1.N15Click(Sender: TObject);
begin

   ToolButton15Click(Sender);

end;

procedure TForm1.N17Click(Sender: TObject);
begin

   ToolButton1Click(Sender);

end;

procedure TForm1.N18Click(Sender: TObject);
begin

   ToolButton2Click(Sender);

end;

procedure TForm1.N19Click(Sender: TObject);
begin

   ToolButton3Click(Sender);

end;

procedure TForm1.N20Click(Sender: TObject);
begin

   ToolButton14Click(Sender);

end;

procedure TForm1.N22Click(Sender: TObject);
begin

   ToolButton4Click(Sender);

end;

procedure TForm1.N23Click(Sender: TObject);
begin

   ToolButton5Click(Sender);

end;

procedure TForm1.N24Click(Sender: TObject);
begin

   ToolButton6Click(Sender);

end;

procedure TForm1.N26Click(Sender: TObject);
begin

   If ToolButton7.Down=False then
   Begin
   ToolButton7.Down:=true;
   ToolButton7Click(Sender);
   End
   Else
   Begin
   ToolButton7.Down:=false;
   ToolButton7Click(Sender);
   End;

end;

procedure TForm1.N27Click(Sender: TObject);
begin

   If ToolButton8.Down=False then
   Begin
   ToolButton8.Down:=true;
   ToolButton8Click(Sender);
   End
   Else
   Begin
   ToolButton8.Down:=false;
   ToolButton8Click(Sender);
   End;

end;

procedure TForm1.N28Click(Sender: TObject);
begin

   If ToolButton13.Down=False then
   Begin
   ToolButton13.Down:=true;
   ToolButton13Click(Sender);
   End
   Else
   Begin
   ToolButton13.Down:=false;
   ToolButton13Click(Sender);
   End;

end;

procedure TForm1.N29Click(Sender: TObject);
begin

   ToolButton15Click(Sender);

end;

procedure TForm1.N31Click(Sender: TObject);
begin

   If ToolButton9.Down=False then
   Begin
   ToolButton9.Down:=true;
   ToolButton9Click(Sender);
   End
   Else
   Begin
   ToolButton9.Down:=false;
   ToolButton9Click(Sender);
   End;


end;

procedure TForm1.N32Click(Sender: TObject);
begin

   If ToolButton10.Down=False then
   Begin
   ToolButton10.Down:=true;
   ToolButton10Click(Sender);
   End
   Else
   Begin
   ToolButton10.Down:=false;
   ToolButton10Click(Sender);
   End;

end;

procedure TForm1.N33Click(Sender: TObject);
begin

   If ToolButton11.Down=False then
   Begin
   ToolButton11.Down:=true;
   ToolButton11Click(Sender);
   End
   Else
   Begin
   ToolButton11.Down:=false;
   ToolButton11Click(Sender);
   End;

end;

procedure TForm1.N34Click(Sender: TObject);
begin

   If ToolButton12.Down=False then
   Begin
   ToolButton12.Down:=true;
   ToolButton12Click(Sender);
   End
   Else
   Begin
   ToolButton12.Down:=false;
   ToolButton12Click(Sender);
   End;

end;





procedure TForm1.BitBtn1Click(Sender: TObject);
begin

   Close;

end;

end.
