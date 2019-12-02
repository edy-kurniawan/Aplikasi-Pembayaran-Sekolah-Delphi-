unit Form_DataBayar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, jpeg, ExtCtrls, Buttons;

type
  TForm_DataPembayaran = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Image2: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Image3: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Image4: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Image5: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Image6: TImage;
    Label12: TLabel;
    Label13: TLabel;
    Image7: TImage;
    Label14: TLabel;
    Label15: TLabel;
    Image8: TImage;
    Label16: TLabel;
    Label17: TLabel;
    Image9: TImage;
    Label18: TLabel;
    Label19: TLabel;
    Image10: TImage;
    Label20: TLabel;
    Label21: TLabel;
    Image11: TImage;
    Label22: TLabel;
    Label23: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    eid: TEdit;
    enominal: TEdit;
    bbnew: TBitBtn;
    bbsave: TBitBtn;
    bbdelete: TBitBtn;
    GroupBox2: TGroupBox;
    bbtampilkan: TBitBtn;
    bbprint: TBitBtn;
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure bbnewClick(Sender: TObject);
    procedure bbsaveClick(Sender: TObject);
    procedure bbdeleteClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure bbtampilkanClick(Sender: TObject);
    procedure bbprintClick(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_DataPembayaran: TForm_DataPembayaran;

implementation

uses Form_DataSiswa, Form_DataKelas, Form_TBayar, Form_ReportBayar,
  Form_ReportSiswa, Form_ReportKelas, Form_ReportTransaksi, tungakan,
  Report_Tunggakan;

{$R *.dfm}

procedure TForm_DataPembayaran.bbnewClick(Sender: TObject);
begin
eid.text:='';
enominal.text:='';
eid.SetFocus;
end;

procedure TForm_DataPembayaran.bbsaveClick(Sender: TObject);
begin
table1.Append;
table1['ID_BAYAR']:=eid.text;
table1['NOMINAL']:=enominal.text;
table1.Post;
end;

procedure TForm_DataPembayaran.bbdeleteClick(Sender: TObject);
begin
if(application.MessageBox('Benar Data Member dihapus ?','KONFIRMASI',mb_yesno
or mb_iconwarning)=idyes) then
table1.Delete;
eid.text:='';
enominal.text:='';
eid.SetFocus;
end;

procedure TForm_DataPembayaran.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TForm_DataPembayaran.Image2Click(Sender: TObject);
begin
form_siswa.show;
end;

procedure TForm_DataPembayaran.Label4Click(Sender: TObject);
begin
form_siswa.show;
end;

procedure TForm_DataPembayaran.Label5Click(Sender: TObject);
begin
form_siswa.show;
end;

procedure TForm_DataPembayaran.Image3Click(Sender: TObject);
begin
form_kelas.show;
end;

procedure TForm_DataPembayaran.Label6Click(Sender: TObject);
begin
form_kelas.show;
end;

procedure TForm_DataPembayaran.Label7Click(Sender: TObject);
begin
form_kelas.show;
end;

procedure TForm_DataPembayaran.Image8Click(Sender: TObject);
begin
form_tpembayaran.show;
end;

procedure TForm_DataPembayaran.Label17Click(Sender: TObject);
begin
form_tpembayaran.show;
end;

procedure TForm_DataPembayaran.Label16Click(Sender: TObject);
begin
form_tpembayaran.show;
end;

procedure TForm_DataPembayaran.bbtampilkanClick(Sender: TObject);
begin
report_bayar.preview;
end;

procedure TForm_DataPembayaran.bbprintClick(Sender: TObject);
begin
report_bayar.print;
end;

procedure TForm_DataPembayaran.Image7Click(Sender: TObject);
begin
report_bayar.preview;
end;

procedure TForm_DataPembayaran.Label14Click(Sender: TObject);
begin
report_bayar.preview;
end;

procedure TForm_DataPembayaran.Label15Click(Sender: TObject);
begin
report_bayar.preview;
end;

procedure TForm_DataPembayaran.Label10Click(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TForm_DataPembayaran.Label11Click(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TForm_DataPembayaran.Image4Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_DataPembayaran.Label8Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_DataPembayaran.Label9Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_DataPembayaran.Image5Click(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TForm_DataPembayaran.Image10Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TForm_DataPembayaran.Label20Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TForm_DataPembayaran.Label21Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TForm_DataPembayaran.Image9Click(Sender: TObject);
begin
TUNGGAKAN.show;
end;

procedure TForm_DataPembayaran.Label18Click(Sender: TObject);
begin
TUNGGAKAN.show;
end;

procedure TForm_DataPembayaran.Label19Click(Sender: TObject);
begin
TUNGGAKAN.show;
end;

procedure TForm_DataPembayaran.Image11Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TForm_DataPembayaran.Label22Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TForm_DataPembayaran.Label23Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

end.
