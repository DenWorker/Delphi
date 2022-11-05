program Project11lab1zad;

uses
  Forms,
  Unit11lab1zad in 'Unit11lab1zad.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '!!';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
