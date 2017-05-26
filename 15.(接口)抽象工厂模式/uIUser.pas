unit uIUser;

interface

type
  TUser = class
  private
    FId: Integer;
    FName: string;
  public
    property ID: Integer read FId write FId;
    property Name: string read FName write FName;
  end;

  IUser = interface
    procedure Insert(User: TUser);
    function GetUser(ID: Integer): TUser;
  end;

  TSqlServerUser = class(TInterfacedObject, IUser)
  public
    procedure Insert(User: TUser);
    function GetUser(ID: Integer): TUser;
  end;

  TAccessUser = class(TInterfacedObject, IUser)
  public
    procedure Insert(User: TUser);
    function GetUser(ID: Integer): TUser;
  end;

implementation

uses
  Dialogs;

{ TSqlServerUser }

function TSqlServerUser.GetUser(ID: Integer): TUser;
begin
  ShowMessage('SQL Server�и���ID�õ�User��һ����¼');
  Result := nil;
end;

procedure TSqlServerUser.Insert(User: TUser);
begin
  ShowMessage('SQL Server�и�User������һ����¼');
end;

{ TAccessUser }

function TAccessUser.GetUser(ID: Integer): TUser;
begin
  ShowMessage('Access�и���ID�õ�User��һ����¼');
  Result := nil;
end;

procedure TAccessUser.Insert(User: TUser);
begin
  ShowMessage('Access�и�User������һ����¼');
end;

end.
