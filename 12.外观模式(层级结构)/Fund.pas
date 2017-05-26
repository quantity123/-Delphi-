unit Fund;

interface

uses
  InvestType;

type
  TFund = class
  private
    Stock1: TStock1;
    Stock2: TStock2;
    Stock3: TStock3;
    NationalDebt: TNationalDebt;
    Realty: TRealty;
  public
    procedure Fund1Buy;
    procedure Fund1Sell;
    procedure Fund2Buy;
    procedure Fund2Sell;
  end;

implementation

{ TFund }

procedure TFund.Fund1Buy;
begin
  Stock1.Buy;
  Stock3.Buy;
  Realty.Buy;
end;

procedure TFund.Fund1Sell;
begin
  Stock1.Sell;
  Stock3.Sell;
  Realty.Sell;
end;

procedure TFund.Fund2Buy;
begin
  Stock2.Buy;
  NationalDebt.Buy;
end;

procedure TFund.Fund2Sell;
begin
  Stock2.Sell;
  NationalDebt.Sell;
end;

end.
