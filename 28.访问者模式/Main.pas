unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  ObjectStructure, Person;

procedure TForm1.FormCreate(Sender: TObject);
var
  ObjectStructure: TObjectStructure;
  Man, Woman: TPerson;
  Success, Failing: TAction;
begin
  ObjectStructure := TObjectStructure.Create;
  Man := TMan.Create;
  Woman := TWoman.Create;
  
  ObjectStructure.Attach(Man);
  ObjectStructure.Attach(Woman);

  Success := TSuccess.Create;
  ObjectStructure.Display(Success);
  Success.Free;  

  Failing := TFailing.Create;
  ObjectStructure.Display(Failing);
  Failing.Free;

  Woman.Free;
  Man.Free;
  ObjectStructure.Free;  
end;

end.
