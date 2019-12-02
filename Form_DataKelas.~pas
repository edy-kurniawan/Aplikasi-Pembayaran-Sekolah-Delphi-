unit Form_DataKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, Buttons, QuickRpt,
  QRCtrls, ExtCtrls, jpeg;

type
  TForm_Kelas = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    eid: TEdit;
    ekelas: TEdit;
    GroupBox2: TGroupBox;
    Table1: TTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    bbnew: TBitBtn;
    bbsave: TBitBtn;
    bbdelete: TBitBtn;
    bbtampilkan: TBitBtn;
    bbprint: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Image3: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Image4: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Image5: TImage;
    Label12: TLabel;
    Label13: TLabel;
    Image6: TImage;
    Label14: TLabel;
    Label15: TLabel;
    Image7: TImage;
    Label16: TLabel;
    Label17: TLabel;
    Image8: TImage;
    Label18: TLabel;
    Label19: TLabel;
    Image9: TImage;
    Label20: TLabel;
    Label21: TLabel;
    Image10: TImage;
    Label22: TLabel;
    Label23: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bbnewClick(Sender: TObject);
    procedure bbsaveClick(Sender: TObject);
    procedure bbdeleteClick(Sender: TObject);
    procedure bbtampilkanClick(Sender: TObject);
    procedure bbprintClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Kelas: TForm_Kelas;

implementation

uses Form_ReportSiswa, Form_ReportBayar, Form_DataSiswa, Form_TBayar, Form_DataBayar,
  Form_ReportKelas, Form_ReportTransaksi, Report_Tunggakan, tungakan;

{$R *.dfm}

procedure TForm_Kelas.Button1Click(Sender: TObject);
begin
table1.Append;
table1['ID_KELAS']:=eid.text;
table1['KELAS']:=ekelas.text;
table1.post;
end;

procedure TForm_Kelas.Button2Click(Sender: TObject);
begin
if(application.MessageBox('Benar Data Member dihapus ?','KONFIRMASI',mb_yesno
or mb_iconwarning)=idyes) then
table1.Delete;
eid.Text:='';
ekelas.text:='';
eid.setfocus;
end;

procedure TForm_Kelas.bbnewClick(Sender: TObject);
begin
eid.text:='';
ekelas.text:='';
eid.setfocus;
end;

procedure TForm_Kelas.bbsaveClick(Sender: TObject);
begin
table1.Append;
table1['ID_KELAS']:=eid.text;
table1['KELAS']:=ekelas.text;
table1.post;
end;

procedure TForm_Kelas.bbdeleteClick(Sender: TObject);
begin
if(application.MessageBox('Benar Data Member dihapus ?','KONFIRMASI',mb_yesno
or mb_iconwarning)=idyes) then
table1.Delete;
eid.text:='';
ekelas.text:='';
eid.setfocus;
end;

procedure TForm_Kelas.bbtampilkanClick(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TForm_Kelas.bbprintClick(Sender: TObject);
begin
Report_Kelas.Print;
end;

procedure TForm_Kelas.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TForm_Kelas.Image1Click(Sender: TObject);
begin
form_siswa.show;
end;

procedure TForm_Kelas.Label4Click(Sender: TObject);
begin
form_siswa.show;
end;

procedure TForm_Kelas.Label5Click(Sender: TObject);
begin
form_siswa.show;
end;

procedure TForm_Kelas.Image7Click(Sender: TObject);
begin
form_TPembayaran.show;
end;

procedure TForm_Kelas.Label17Click(Sender: TObject);
begin
form_tpembayaran.show;
form_kelas.Close;
end;

procedure TForm_Kelas.Label16Click(Sender: TObject);
begin
form_tpembayaran.Show;
end;

procedure TForm_Kelas.Image5Click(Sender: TObject);
begin
form_datapembayaran.show;
end;

procedure TForm_Kelas.Label12Click(Sender: TObject);
begin
form_datapembayaran.show;
end;

procedure TForm_Kelas.Label13Click(Sender: TObject);
begin
form_datapembayaran.show;
end;

procedure TForm_Kelas.Image4Click(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TForm_Kelas.Label10Click(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TForm_Kelas.Label11Click(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TForm_Kelas.Image6Click(Sender: TObject);
begin
report_bayar.preview;
end;

procedure TForm_Kelas.Label14Click(Sender: TObject);
begin
report_bayar.preview;
end;

procedure TForm_Kelas.Label15Click(Sender: TObject);
begin
report_bayar.preview;
end;

procedure TForm_Kelas.Image3Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_Kelas.Label8Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_Kelas.Label9Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_Kelas.Image9Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TForm_Kelas.Label20Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TForm_Kelas.Label21Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TForm_Kelas.Image10Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TForm_Kelas.Label22Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TForm_Kelas.Label23Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TForm_Kelas.Label18Click(Sender: TObject);
begin
TUNGGAKAN.show;
end;

procedure TForm_Kelas.Image8Click(Sender: TObject);
begin
TUNGGAKAN.show;
end;

procedure TForm_Kelas.Label19Click(Sender: TObject);
begin
TUNGGAKAN.show;
end;

end.
