program Project1;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  uIUser in 'uIUser.pas',
  uIFactory in 'uIFactory.pas',
  uIDepartment in 'uIDepartment.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
