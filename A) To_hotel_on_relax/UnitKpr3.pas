unit UnitKpr3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, sPanel, sGroupBox;

type
  TForm4 = class(TForm)
    sGroupBox1: TsGroupBox;
    sPanel1: TsPanel;
    sBitBtn1: TsBitBtn;
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.sBitBtn1Click(Sender: TObject);
begin

   Form4.Close

end;

end.
