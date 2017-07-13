unit ProgramaContagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    CONT: TButton;
    visor: TEdit;
    upgrade: TEdit;
    UP: TButton;
    Timer1: TTimer;
    POWER: TButton;
    procedure CONTClick(Sender: TObject);
    procedure UPClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure POWERClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  upg,upc,apc,apg: integer;
  i:integer=0;
  custo,custo2,nupg: double;

implementation

{$R *.dfm}

procedure TForm1.CONTClick(Sender: TObject);
begin
  upg:=StrToInt(upgrade.Text);
  upc:=upc+upg;
  visor.Text:=IntToStr(upc);
  upgrade.Text:=IntToStr(upg);
  if upc>=custo then
  begin
    UP.Enabled:=true;
  end;
  if upc>=custo2 then
  begin
    POWER.Enabled:=true;
  end
end;

procedure TForm1.UPClick(Sender: TObject);
begin
  i:=StrToInt(visor.Text);
  if i>=custo then
  begin
        upg:=StrToInt(upgrade.Text);
        upg:=TRUNC(upg+nupg);
        upgrade.Text:=IntToStr(upg);
        upc:=TRUNC(i-custo);
        visor.Text:=IntToStr(upc);
        custo:=custo*1.25;
        nupg:=nupg+upg;
        UP.Enabled:=false;
  end
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  custo:=30;
  custo2:=60;
  nupg:=1;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  visor.Text:=inttostr(upc);
  inc(upc);
  if upc<custo then
  begin
    UP.Enabled:=false;
  end;
  if upc<custo2 then
  begin
    POWER.Enabled:=false;
  end
end;

procedure TForm1.POWERClick(Sender: TObject);
begin
  Timer1.Interval:=TRUNC(Timer1.Interval-(Timer1.Interval*0.1));
  upc:=TRUNC(i-custo2+(i));
  visor.Text:=IntToStr(upc);
  custo2:=custo2*1.25;
  POWER.Enabled:=false;
  if Timer1.Interval=0 then
  begin
    Timer1.Interval:=1;
  end;
end;

end.
