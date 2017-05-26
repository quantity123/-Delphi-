unit InvestType;

interface

type
  //股票1
  TStock1 = class
  public
    procedure Buy;
    procedure Sell;
  end;

  TStock2 = class
  public
    procedure Buy;
    procedure Sell;
  end;

  TStock3 = class
  public
    procedure Buy;
    procedure Sell;
  end;

  //国债
  TNationalDebt = class
  public
    procedure Buy;
    procedure Sell;
  end;

  //房地产
  TRealty = class
  public
    procedure Buy;
    procedure Sell;
  end;

implementation

uses
  Dialogs;

{ TStock1 }

procedure TStock1.Buy;
begin
  ShowMessage('股票1买入');
end;

procedure TStock1.Sell;
begin
  ShowMessage('股票1卖出');
end;

{ TStock2 }

procedure TStock2.Buy;
begin
  ShowMessage('股票2买入');
end;

procedure TStock2.Sell;
begin
  ShowMessage('股票2卖出');
end;

{ TStock3 }

procedure TStock3.Buy;
begin
  ShowMessage('股票3买入');
end;

procedure TStock3.Sell;
begin
  ShowMessage('股票3卖出');
end;

{ TNationalDebt }

procedure TNationalDebt.Buy;
begin
  ShowMessage('国债买入');
end;

procedure TNationalDebt.Sell;
begin
  ShowMessage('国债卖出');
end;

{ TRealty }

procedure TRealty.Buy;
begin
  ShowMessage('房地产买入');
end;

procedure TRealty.Sell;
begin
  ShowMessage('房地产卖出');
end;

end.
