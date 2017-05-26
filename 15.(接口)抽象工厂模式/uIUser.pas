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
  ShowMessage('SQL Server中根据ID得到User表一条记录');
  Result := nil;
end;

procedure TSqlServerUser.Insert(User: TUser);
begin
  ShowMessage('SQL Server中给User表增加一条记录');
end;

{ TAccessUser }

function TAccessUser.GetUser(ID: Integer): TUser;
begin
  ShowMessage('Access中根据ID得到User表一条记录');
  Result := nil;
end;

procedure TAccessUser.Insert(User: TUser);
begin
  ShowMessage('Access中给User表增加一条记录');
end;

end.
