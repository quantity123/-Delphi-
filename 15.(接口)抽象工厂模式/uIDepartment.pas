unit uIDepartment;

interface

type
  TDepartment = class
  private
    FDeptID: Integer;
    FDeptName: string;
  public
    property DeptID: Integer read FDeptID write FDeptID;
    property DeptName: string read FDeptName write FDeptName;
  end;

  IDepartment = interface
    procedure Insert(Department: TDepartment);
    function GetDepartment(ID: Integer): TDepartment;
  end;

  TSqlServerDepartment = class(TInterfacedObject, IDepartment)
  public
    procedure Insert(Department: TDepartment);
    function GetDepartment(ID: Integer): TDepartment;
  end;

  TAccessDepartment = class(TInterfacedObject, IDepartment)
  public
    procedure Insert(Department: TDepartment);
    function GetDepartment(ID: Integer): TDepartment;
  end;

implementation

uses
  Dialogs;

{ TSqlServerDepartment }

function TSqlServerDepartment.GetDepartment(ID: Integer): TDepartment;
begin
  ShowMessage('SQL Server中根据ID得到Department表一条记录');
  Result := nil;
end;

procedure TSqlServerDepartment.Insert(Department: TDepartment);
begin
  ShowMessage('SQL Server中给Department表增加一条记录');
end;

{ TAccessDepartment }

function TAccessDepartment.GetDepartment(ID: Integer): TDepartment;
begin
  ShowMessage('Access中根据ID得到Department表一条记录');
  Result := nil;
end;

procedure TAccessDepartment.Insert(Department: TDepartment);
begin
  ShowMessage('Access中给Department表增加一条记录');
end;

end.
