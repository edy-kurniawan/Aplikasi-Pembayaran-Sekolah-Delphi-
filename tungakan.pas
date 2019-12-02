unit tungakan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, jpeg, ExtCtrls, Buttons,
  Mask, DBCtrls;

type
  TTUNGGAKAN = class(TForm)
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
    DBGrid1: TDBGrid;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    eid: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit3: TDBEdit;
    ejumlah: TEdit;
    etotal: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox3: TGroupBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Table1: TTable;
    DataSource1: TDataSource;
    Table2: TTable;
    DataSource2: TDataSource;
    Table3: TTable;
    DataSource3: TDataSource;
    Table4: TTable;
    DataSource4: TDataSource;
    Label30: TLabel;
    ComboBox1: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ejumlahChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
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
  TUNGGAKAN: TTUNGGAKAN;

implementation

uses Report_Tunggakan, Form_DataSiswa, Form_DataKelas, Form_ReportKelas,
  Form_ReportSiswa, Form_DataBayar, Form_ReportBayar, Form_TBayar,
  Form_ReportTransaksi;

{$R *.dfm}

procedure TTUNGGAKAN.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TTUNGGAKAN.BitBtn2Click(Sender: TObject);
begin
eid.Text:='';
dbedit1.Text:='';
dbedit2.text:='';
dbedit3.Text:='0';
ejumlah.Text:='';
etotal.Text:='';
eid.setfocus;
end;

procedure TTUNGGAKAN.BitBtn3Click(Sender: TObject);
begin
table4.Append;
table4['ID_TUNGGAKAN']:=eid.text;
table4['ID_BAYAR']:=dblookupcombobox1.Text;
table4['NAMA']:=dbedit1.text;
table4['KELAS']:=dbedit2.Text;
table4['NIS']:=dblookupcombobox2.text;
table4['NOMINAL']:=dbedit3.Text;
table4['STATUS']:=combobox1.Text;
table4['JUMLAH_TUNGGAKAN']:=ejumlah.text;
table4['TOTAL_TUNGGAKAN']:=etotal.Text;
table4.post;
eid.Text:='';
dbedit1.Text:='';
dbedit2.text:='';
dbedit3.Text:='0';
ejumlah.Text:='';
etotal.Text:='';
eid.setfocus;
end;

procedure TTUNGGAKAN.BitBtn4Click(Sender: TObject);
begin
if(application.messagebox('Yakin Anda Menghapus Data Pembelian..?','KONFIRMASI',mb_yesno
or mb_iconwarning)=idyes) then
table4.Delete;
eid.Text:='';
dbedit1.Text:='';
dbedit2.text:='';
dbedit3.Text:='0';
ejumlah.Text:='';
etotal.Text:='';
eid.setfocus;
end;

procedure TTUNGGAKAN.ejumlahChange(Sender: TObject);
var
Stotal: string[20];
harga,jum,total: single;
kode: integer;
begin
val(dbedit3.Text,harga,kode);
val(ejumlah.Text,jum,kode);
total:=harga*jum;
str(total:20:0,Stotal);
etotal.text:=Stotal;
end;

procedure TTUNGGAKAN.BitBtn5Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TTUNGGAKAN.BitBtn6Click(Sender: TObject);
begin

ReportTunggakan.print;
end;

procedure TTUNGGAKAN.Image2Click(Sender: TObject);
begin
Form_Siswa.show;
end;

procedure TTUNGGAKAN.Label4Click(Sender: TObject);
begin
Form_Siswa.show;
end;

procedure TTUNGGAKAN.Label5Click(Sender: TObject);
begin
Form_Siswa.show;
end;

procedure TTUNGGAKAN.Image3Click(Sender: TObject);
begin
Form_Kelas.show;
end;

procedure TTUNGGAKAN.Label6Click(Sender: TObject);
begin
Form_Kelas.show;
end;

procedure TTUNGGAKAN.Label7Click(Sender: TObject);
begin
Form_Kelas.show;
end;

procedure TTUNGGAKAN.Image4Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TTUNGGAKAN.Label8Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TTUNGGAKAN.Label9Click(Sender: TObject);
begin
Report_Siswa.Preview;
end;

procedure TTUNGGAKAN.Image5Click(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TTUNGGAKAN.Label10Click(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TTUNGGAKAN.Label11Click(Sender: TObject);
begin
Report_Kelas.Preview;
end;

procedure TTUNGGAKAN.Image6Click(Sender: TObject);
begin
Form_DataPembayaran.show;
end;

procedure TTUNGGAKAN.Label12Click(Sender: TObject);
begin
Form_DataPembayaran.show;
end;

procedure TTUNGGAKAN.Label13Click(Sender: TObject);
begin
Form_DataPembayaran.show;
end;

procedure TTUNGGAKAN.Image7Click(Sender: TObject);
begin
Report_Bayar.preview;
end;

procedure TTUNGGAKAN.Label14Click(Sender: TObject);
begin
Report_Bayar.preview;
end;

procedure TTUNGGAKAN.Label15Click(Sender: TObject);
begin
Report_Bayar.preview;
end;

procedure TTUNGGAKAN.Image8Click(Sender: TObject);
begin
Form_TPembayaran.show;
end;

procedure TTUNGGAKAN.Label17Click(Sender: TObject);
begin
Form_TPembayaran.show;
end;

procedure TTUNGGAKAN.Label16Click(Sender: TObject);
begin
Form_TPembayaran.show;
end;

procedure TTUNGGAKAN.Image10Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TTUNGGAKAN.Label20Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TTUNGGAKAN.Label21Click(Sender: TObject);
begin
Report_TPembayaran.preview;
end;

procedure TTUNGGAKAN.Image11Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TTUNGGAKAN.Label22Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

procedure TTUNGGAKAN.Label23Click(Sender: TObject);
begin
ReportTunggakan.preview;
end;

end.
