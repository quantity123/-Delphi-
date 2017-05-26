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
  Factory, LeiFeng;

procedure TForm1.FormCreate(Sender: TObject);
var
  Factory: IFactory;
  Student: TLeiFeng;
begin
  Factory := TUndergraduateFactory.Create;
  //Factory := TVolunteerFactory.Create;
  Student := Factory.CreateLeiFeng;
  Student.Sweep;
  Student.Wash;
  Student.BuyRice;
  Student.Free;
  
  //不用释放Factory接口，局部变量接口自动释放，或者手动Factory := nil释放

end;

end.
