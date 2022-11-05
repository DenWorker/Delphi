unit UnitKpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, sLabel, jpeg, acImage;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    sImage1: TsImage;
    sImage2: TsImage;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sImage3: TsImage;
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

uses UnitK;

{$R *.dfm}

procedure TForm2.Timer1Timer(Sender: TObject);
begin

   Form1.Show;
   Form2.Close;
   Form2.Timer1.Enabled:=false;

end;

end.
