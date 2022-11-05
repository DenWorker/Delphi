program ProjectK;

uses
  Forms,
  UnitK in 'UnitK.pas' {Form1},
  UnitKpr in 'UnitKpr.pas' {Form2},
  UnitKpr2 in 'UnitKpr2.pas' {Form3},
  UnitKpr3 in 'UnitKpr3.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '!!!!';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Form2.Show;
  Application.Run;
end.
