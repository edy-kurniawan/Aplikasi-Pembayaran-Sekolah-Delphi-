unit Form_DataSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, jpeg, StdCtrls, Buttons, DB, DBTables, DBCtrls,
  Grids, DBGrids, ComCtrls, QRCtrls, QuickRpt;

type
  TForm_Siswa = class(TForm)
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
    Label1: TLabel;
    DataSource1: TDataSource;
    Table1: TTable;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    enis: TEdit;
    enama: TEdit;
    etempat: TEdit;
    ealamat: TEdit;
    ehp: TEdit;
    ComboBox1: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Table2: TTable;
    DataSource2: TDataSource;
    bbtampilkan: TBitBtn;
    bbprint: TBitBtn;
    bbnew: TBitBtn;
    bbsave: TBitBtn;
    bbdelete: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    Table3: TTable;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    Table4: TTable;
    DataSource4: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbnewClick(Sender: TObject);
    procedure bbsaveClick(Sender: TObject);
    procedure bbdeleteClick(Sender: TObject);
    procedure bbtampilkanClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Siswa: TForm_Siswa;

implementation
  uses Form_ReportKelas, Form_DataKelas, Form_TBayar, Form_DataBayar,
  Form_ReportSiswa, Form_ReportBayar, tungakan, Form_ReportTransaksi,
  Report_Tunggakan;

{$R *.dfm}

procedure TForm_Siswa.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TForm_Siswa.bbnewClick(Sender: TObject);
begin
enis.text:='';
enama.text:='';
etempat.text:='';
ComboBox1.text:='';
ealamat.text:='';
ehp.text:='';
enis.setfocus;
end;

procedure TForm_Siswa.bbsaveClick(Sender: TObject);
begin
table4.Append;
table4['KELAS']:=DBLookupComboBox1.text;
table4['NIM']:=enis.text;
table4['NAMA']:=enama.text;
table4['TEMPAT_LAHIR']:=etempat.text;
table4['ALAMAT']:=ealamat.text;
table4['TGL_LAHIR']:=DateTimePicker1.DateTime;
table4['HP']:=ehp.text;
table4['JENIS_KELAMIN']:=ComboBox1.text;
table4.post;
end;

procedure TForm_Siswa.bbdeleteClick(Sender: TObject);
begin
if(application.MessageBox('Benar Data Member dihapus ?','KONFIRMASI',mb_yesno
or mb_iconwarning)=idyes) then
table4.Delete;
enis.text:='';
enama.text:='';
etempat.text:='';
ComboBox1.text:='';
ealamat.text:='';
ehp.text:='';
enis.setfocus;
end;

procedure TForm_Siswa.bbtampilkanClick(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_Siswa.Image3Click(Sender: TObject);
begin
form_kelas.show;
end;

procedure TForm_Siswa.Label6Click(Sender: TObject);
begin
form_kelas.show;
end;

procedure TForm_Siswa.Label7Click(Sender: TObject);
begin
form_kelas.show;
end;

procedure TForm_Siswa.Image8Click(Sender: TObject);
begin
form_tpembayaran.show;
end;

procedure TForm_Siswa.Label17Click(Sender: TObject);
begin
form_tpembayaran.show;
end;

procedure TForm_Siswa.Label16Click(Sender: TObject);
begin
form_tpembayaran.show;
end;

procedure TForm_Siswa.Image6Click(Sender: TObject);
begin
form_datapembayaran.show;
end;

procedure TForm_Siswa.Label12Click(Sender: TObject);
begin
form_datapembayaran.show;
end;

procedure TForm_Siswa.Label13Click(Sender: TObject);
begin
form_datapembayaran.show;
end;

procedure TForm_Siswa.Image4Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_Siswa.Label8Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_Siswa.Label9Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TForm_Siswa.Image5Click(Sender: TObject);
begin
Report_Kelas.preview;
end;

procedure TForm_Siswa.Label10Click(Sender: TObject);
begin
Report_Kelas.preview;
end;

procedure TForm_Siswa.Label11Click(Sender: TObject);
begin
Report_Kelas.preview;
end;

procedure TForm_Siswa.Image7Click(Sender: TObject);
begin
Report_Bayar.preview;
end;

procedure TForm_Siswa.Label14Click(Sender: TObject);
begin
Report_Bayar.preview;
end;

procedure TForm_Siswa.Label15Click(Sender: TObject);
begin
Report_Bayar.preview;
end;

procedure TForm_Siswa.Image9Click(Sender: TObject);
begin
TUNGGAKAN.show;
end;

procedure TForm_Siswa.Label18Click(Sender: TObject);
begin
TUNGGAKAN.show;
end;

procedure TForm_Siswa.Label19Click(Sender: TObject);
begin
TUNGGAKAN.show;
end;

procedure TForm_Siswa.Image10Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TForm_Siswa.Label20Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TForm_Siswa.Label21Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TForm_Siswa.Image11Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TForm_Siswa.Label22Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TForm_Siswa.Label23Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

end.
