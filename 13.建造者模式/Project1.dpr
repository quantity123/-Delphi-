program Project1;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  PersonBodyProperty in 'PersonBodyProperty.pas',
  PersonBuilder in 'PersonBuilder.pas',
  PersonCreate in 'PersonCreate.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
