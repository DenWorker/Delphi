program Project7lab1zad;

uses
  Forms,
  Unit7lab1zad in 'Unit7lab1zad.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Победа';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
