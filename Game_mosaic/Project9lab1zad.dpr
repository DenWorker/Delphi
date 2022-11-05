program Project9lab1zad;

uses
  Forms,
  Unit9lab1zad,
  Unit9lab1zad1pr in 'Unit9lab1zad1pr.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '!!!!';
  Application.CreateForm(TPzForm, PzForm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
