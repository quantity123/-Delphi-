unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Subject;

procedure TForm1.FormCreate(Sender: TObject);
var
  Boss: ISubject;
  StockObServer, NBAObServer: TObServer;
begin
  Boss := TBoss.Create;
  StockObServer := TStockObServer.Create('魏关宅', Boss);
  NBAObServer := TNBAObServer.Create('易管查', Boss);
  Boss.Attach(StockObServer);
  Boss.Attach(NBAObServer);
  Boss.Detach(NBAObServer); //减去了NBA的通知
  Boss.SubjectState := '你们老板我胡汉三回来了';
  Boss.Notify;
  StockObServer.Free;
  NBAObServer.Free;
end;

end.
