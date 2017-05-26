unit CashContext;

interface

uses
  CashSuper;

type
  TCashContext = class(TObject)
  private
    FCashSuper: TCashSuper;
  public
    constructor Create(iType: string);
    destructor Destroy; override;
    function GetResult(Money: Double): Double;
  end;

implementation

{ TCashContext }

constructor TCashContext.Create(iType: string);
begin
  if iType = '正常收费' then
  begin
    FCashSuper := TCashNormal.Create;  
  end else
  if iType = '满300返100' then
  begin
    FCashSuper := TCashReturn.Create('300', '100');
  end else
  if iType = '打8折' then
  begin
    FCashSuper := TCashRebate.Create('0.8');
  end;
end;

destructor TCashContext.Destroy;
begin

  inherited;
end;

function TCashContext.GetResult(Money: Double): Double;
begin
  Result := FCashSuper.AcceptCash(Money);
end;

end.
