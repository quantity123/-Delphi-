unit HandsetBrand;

interface

uses
  HandsetSoft;

type
  THandsetBrand = class
  private
    FHandsetSoft: THandsetSoft;
    FBrand: string;
  public
    procedure SetHandsetSoft(HandsetSoft: THandsetSoft; Brand: string);
    procedure Run; virtual; abstract;
  end;

  THandsetBrandN = class(THandsetBrand)
  public
    procedure Run; override;
  end;

  THandsetBrandM = class(THandsetBrand)
  public
    procedure Run; override;
  end;

  THandsetBrandS = class(THandsetBrand)
  public
    procedure Run; override;
  end;

implementation

{ THandsetBrand }

procedure THandsetBrand.SetHandsetSoft(HandsetSoft: THandsetSoft; Brand: string);
begin
  FHandsetSoft := HandsetSoft;
  FBrand := Brand;
end;

{ THandsetBrandM }

procedure THandsetBrandM.Run;
begin
  FHandsetSoft.Run(FBrand);
end;

{ THandsetBrandN }

procedure THandsetBrandN.Run;
begin
  FHandsetSoft.Run(FBrand);
end;

{ THandsetBrandS }

procedure THandsetBrandS.Run;
begin
  FHandsetSoft.Run(FBrand);
end;

end.
