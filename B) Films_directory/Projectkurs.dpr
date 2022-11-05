program Projectkurs;

uses
  Forms,
  Unitkurs in 'Unitkurs.pas' {Form1},
  Unitkurspr in 'Unitkurspr.pas' {Form2},
  Unitkerspr2 in 'Unitkerspr2.pas' {Form3},
  Unitkurspr3 in 'Unitkurspr3.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '!!!';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Form2.Show;
  Application.Run;
end.
