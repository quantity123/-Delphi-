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
  HandsetBrand, HandsetSoft;

procedure TForm1.FormCreate(Sender: TObject);
var
  HandsetBrand: THandsetBrand;
  HandsetSoft: THandsetSoft;
begin
  //N品牌手机
  HandsetBrand := THandsetBrandN.Create;

  HandsetSoft := THandSetGame.Create;
  HandsetBrand.SetHandsetSoft(HandsetSoft, 'N品牌');
  HandsetBrand.Run;
  HandsetSoft.Free;

  HandsetSoft := THandSetAddressList.Create;
  HandsetBrand.SetHandsetSoft(HandsetSoft, 'N品牌');
  HandsetBrand.Run;
  HandsetSoft.Free;

  //可以增加MP3功能THandSetMP3

  HandsetBrand.Free;




  
  //M品牌手机
  HandsetBrand := THandsetBrandM.Create;

  HandsetSoft := THandSetGame.Create;
  HandsetBrand.SetHandsetSoft(HandsetSoft, 'M品牌');
  HandsetBrand.Run;
  HandsetSoft.Free;

  HandsetSoft := THandSetAddressList.Create;
  HandsetBrand.SetHandsetSoft(HandsetSoft, 'M品牌');
  HandsetBrand.Run;
  HandsetSoft.Free;

  HandsetBrand.Free;




  
  //可以增加S品牌手机THandsetBrandS
  //''''''''''
  //''''''''''
end;

end.
