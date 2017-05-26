program Project1;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  InvestType in 'InvestType.pas',
  Fund in 'Fund.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
