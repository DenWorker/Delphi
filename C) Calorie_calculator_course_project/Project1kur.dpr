program Project1kur;

uses
  Forms,
  Unit1kur in 'Unit1kur.pas' {Form1},
  Unit1kur1pr in 'Unit1kur1pr.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '!!!!!!!!!!!!!!';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
