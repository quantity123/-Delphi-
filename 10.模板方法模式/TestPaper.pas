unit TestPaper;

interface

type
  TTestPaper = class
  private
    procedure TestQuestion1;
    procedure TestQuestion2;
    procedure TestQuestion3;
  public
    procedure Answer1; virtual;
    procedure Answer2; virtual;
    procedure Answer3; virtual;
  end;

  TTestPaperA = class(TTestPaper)
  public
    procedure Answer1; override;
    procedure Answer2; override;
    procedure Answer3; override;
  end;

  TTestPaperB = class(TTestPaper)
  public
    procedure Answer1; override;
    procedure Answer2; override;
    procedure Answer3; override;
  end;

implementation

uses
  Dialogs;

{ TTestPaper }

procedure TTestPaper.Answer1;
begin
  TestQuestion1;
end;

procedure TTestPaper.Answer2;
begin
  TestQuestion2;
end;

procedure TTestPaper.Answer3;
begin
  TestQuestion3;
end;

procedure TTestPaper.TestQuestion1;
begin
  ShowMessage('问题1');
end;

procedure TTestPaper.TestQuestion2;
begin
  ShowMessage('问题2');
end;

procedure TTestPaper.TestQuestion3;
begin
  ShowMessage('问题3');
end;

{ TTestPaperA }

procedure TTestPaperA.Answer1;
begin
  inherited;
  ShowMessage('A_1');
end;

procedure TTestPaperA.Answer2;
begin
  inherited;
  ShowMessage('A_2');
end;

procedure TTestPaperA.Answer3;
begin
  inherited;
  ShowMessage('A_3');
end;

{ TTestPaperB }

procedure TTestPaperB.Answer1;
begin
  inherited;
  ShowMessage('B_1');
end;

procedure TTestPaperB.Answer2;
begin
  inherited;
  ShowMessage('B_2');
end;

procedure TTestPaperB.Answer3;
begin
  inherited;
  ShowMessage('B_3');
end;

end.
