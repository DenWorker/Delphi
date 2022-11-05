program ProjectREZA;

uses
  Forms,
  UnitREZA in 'UnitREZA.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '!!!!';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
