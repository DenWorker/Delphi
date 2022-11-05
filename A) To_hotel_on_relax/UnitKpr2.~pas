unit UnitKpr2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sLabel, ComCtrls, sRichEdit, Menus,
  sDialogs;

type
  TForm3 = class(TForm)
    sRichEdit1: TsRichEdit;
    sLabel1: TsLabel;
    sBitBtn1: TsBitBtn;
    sColorDialog1: TsColorDialog;
    FontDialog1: TFontDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure sBitBtn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.sBitBtn1Click(Sender: TObject);
begin

   Form3.Close;

end;

procedure TForm3.N1Click(Sender: TObject);
begin

   If FontDialog1.Execute then
   sRichEdit1.Font:=FontDialog1.Font;

end;

procedure TForm3.N2Click(Sender: TObject);
begin

   If sColorDialog1.Execute then
   sRichEdit1.Color:=sColorDialog1.Color;

end;

end.
