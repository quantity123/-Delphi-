unit Tmplate;

interface

type
  TAbstractClass = class
  public
    procedure PrimitiveOperation1; virtual;
    procedure PrimitiveOperation2; virtual;
    procedure TemplateMethod;
  end;

  TConcreteClassA = class(TAbstractClass)
  public
    procedure PrimitiveOperation1; override;
    procedure PrimitiveOperation2; override;
  end;

  TConcreteClassB = class(TAbstractClass)
  public
    procedure PrimitiveOperation1; override;
    procedure PrimitiveOperation2; override;
  end;

implementation

uses
  Dialogs;

{ TAbstractClass }

procedure TAbstractClass.PrimitiveOperation1;
begin
  ShowMessage('���෽��1ʵ��');
end;

procedure TAbstractClass.PrimitiveOperation2;
begin
  ShowMessage('���෽��2ʵ��');
end;

procedure TAbstractClass.TemplateMethod;
begin
  PrimitiveOperation1;
  PrimitiveOperation2;
end;

{ TConcreteClassA }

procedure TConcreteClassA.PrimitiveOperation1;
begin
  inherited;
  ShowMessage('������A����1ʵ��');
end;

procedure TConcreteClassA.PrimitiveOperation2;
begin
  inherited;
  ShowMessage('������A����2ʵ��');
end;

{ TConcreteClassB }

procedure TConcreteClassB.PrimitiveOperation1;
begin
  inherited;
  ShowMessage('������B����1ʵ��');
end;

procedure TConcreteClassB.PrimitiveOperation2;
begin
  inherited;
  ShowMessage('������B����2ʵ��');
end;

end.
