unit Form_Loginpage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TPage_login = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Page_login: TPage_login;

implementation

uses PageMenu;

{$R *.dfm}

procedure TPage_login.Button1Click(Sender: TObject);
begin
If (Edit1.Text='admin') and (Edit2.Text='admin')then
  begin
FormMenu.show;
  end
  else
  begin
Application.MessageBox('Username / Password salah','informasi',MB_ICONInformation);
  end;
end;

end.
