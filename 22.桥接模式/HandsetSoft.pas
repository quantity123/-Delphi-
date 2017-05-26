unit HandsetSoft;

interface

type
  THandsetSoft = class
  public
    procedure Run(Brand: string); virtual; abstract;
  end;

  THandSetGame = class(THandsetSoft)
  public
    procedure Run(Brand: string); override;
  end;

  THandSetAddressList = class(THandsetSoft)
  public
    procedure Run(Brand: string); override;
  end;

  THandSetMP3 = class(THandsetSoft)
  public
    procedure Run(Brand: string); override;
  end;

implementation

uses
  Dialogs;

{ THandSetGame }

procedure THandSetGame.Run(Brand: string);
begin
  ShowMessage(Brand+'运行手机游戏');
end;

{ THandSetAddressList }

procedure THandSetAddressList.Run(Brand: string);
begin
  ShowMessage(Brand+'运行手机通讯录');
end;

{ THandSetMP3 }

procedure THandSetMP3.Run(Brand: string);
begin
  ShowMessage(Brand+'运行手机MP3播放器');
end;

end.
