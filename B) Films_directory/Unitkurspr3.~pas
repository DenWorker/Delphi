unit Unitkurspr3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acArcControls, StdCtrls, ComCtrls, sRichEdit, sLabel, Menus,
  sDialogs;

type
  TForm4 = class(TForm)
    sRichEdit1: TsRichEdit;
    sRoundBtn1: TsRoundBtn;
    sLabel1: TsLabel;
    PopupMenu1: TPopupMenu;
    FontDialog1: TFontDialog;
    sColorDialog1: TsColorDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure sRoundBtn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.sRoundBtn1Click(Sender: TObject);
begin

   Form4.Close;

end;

procedure TForm4.N1Click(Sender: TObject);
begin

   If FontDialog1.Execute then
   sRichEdit1.Font:=FontDialog1.Font;

   end;

procedure TForm4.N2Click(Sender: TObject);
begin

   If sColorDialog1.Execute then
   sRichEdit1.Color:=sColorDialog1.Color;

end;

end.
