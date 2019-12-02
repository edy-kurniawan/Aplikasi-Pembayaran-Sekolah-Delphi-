program Pembayaran_Sekolah;

uses
  Forms,
  Form_DataKelas in 'Form_DataKelas.pas' {Form_Kelas},
  Form_DataSiswa in 'Form_DataSiswa.pas' {Form_Siswa},
  Form_ReportSiswa in 'Form_ReportSiswa.pas' {Report_Kelas: TQuickRep},
  Form_ReportKelas in 'Form_ReportKelas.pas' {Report_Siswa: TQuickRep},
  Form_DataBayar in 'Form_DataBayar.pas' {Form_DataPembayaran},
  Form_TBayar in 'Form_TBayar.pas' {Form_TPembayaran},
  Form_ReportBayar in 'Form_ReportBayar.pas' {Report_Bayar: TQuickRep},
  Form_ReportTransaksi in 'Form_ReportTransaksi.pas' {Report_TPembayaran: TQuickRep},
  Form_Loginpage in 'Form_Loginpage.pas' {Page_login},
  PageMenu in 'PageMenu.pas' {FormMenu},
  tungakan in 'tungakan.pas' {TUNGGAKAN},
  Report_Tunggakan in 'Report_Tunggakan.pas' {ReportTunggakan: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPage_login, Page_login);
  Application.CreateForm(TTUNGGAKAN, TUNGGAKAN);
  Application.CreateForm(TForm_TPembayaran, Form_TPembayaran);
  Application.CreateForm(TForm_DataPembayaran, Form_DataPembayaran);
  Application.CreateForm(TForm_Siswa, Form_Siswa);
  Application.CreateForm(TForm_Kelas, Form_Kelas);
  Application.CreateForm(TReport_Kelas, Report_Kelas);
  Application.CreateForm(TReport_Siswa, Report_Siswa);
  Application.CreateForm(TReport_Bayar, Report_Bayar);
  Application.CreateForm(TReport_TPembayaran, Report_TPembayaran);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TReportTunggakan, ReportTunggakan);
  Application.Run;
end.
