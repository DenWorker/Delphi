unit Unitkurspr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, sLabel, sPanel, jpeg, acImage, sSkinManager,
  acPNG;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    sLabel1: TsLabel;
    sImage2: TsImage;
    sGradientPanel1: TsGradientPanel;
    sSkinManager1: TsSkinManager;
    sImage3: TsImage;
    sImage5: TsImage;
    sImage1: TsImage;
    sImage4: TsImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unitkurs;

{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin

  Form1.Show;
  Form2.Close;
  Form2.Timer1.Enabled:=false;

end;

end.
