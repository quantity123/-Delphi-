unit PersonBodyProperty;

interface

uses
  Classes;

type
  TPersonBodyProperty = class
  private
    FList: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Add(Part: string);
    function GetPersonInfo: string;
  end;

implementation

{ TProduct }

procedure TPersonBodyProperty.Add(Part: string);
begin
  FList.Add(Part);
end;

constructor TPersonBodyProperty.Create;
begin
  FList := TStringList.Create;
end;

destructor TPersonBodyProperty.Destroy;
begin
  FList.Free;
  inherited;
end;

function TPersonBodyProperty.GetPersonInfo: string;
begin
  Result := FList.Text;
end;

end.
