//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Menus.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <VCLTee.Chart.hpp>
#include <VCLTee.Series.hpp>
#include <VCLTee.TeEngine.hpp>
#include <VCLTee.TeeProcs.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TMainMenu *MainMenu1;
	TMenuItem *N1;
	TMenuItem *N2;
	TMenuItem *N3;
	TMenuItem *N4;
	TMenuItem *N7;
	TMenuItem *N8;
	TComboBox *ComboBox1;
	TComboBox *ComboBox2;
	TLabel *Label1;
	TLabel *Label2;
	TButton *Button3;
	TButton *Button4;
	TMemo *Memo1;
	TLabel *Label3;
	TLabel *Label4;
	TMemo *Memo2;
	TTimer *Timer1;
	TEdit *Edit1;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TMemo *Memo3;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *Label10;
	TChart *Chart1;
	TFastLineSeries *Series1;
	TLabel *Label11;
	TLabel *Label12;
	TLabel *Label13;
	TLabel *Label14;
	TPageControl *PageControl2;
	TTabSheet *TabSheet4;
	TTabSheet *TabSheet5;
	TTabSheet *TabSheet6;
	TButton *Button5;
	TCheckBox *CheckBox1;
	TStringGrid *StringGrid1;
	TButton *Button6;
	TEdit *Edit2;
	TComboBox *ComboBox3;
	TButton *Button7;
	TLabel *Label15;
	TButton *Button1;
	TLabel *Label16;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall Button4Click(TObject *Sender);
	void __fastcall FormDestroy(TObject *Sender);
	void __fastcall Button5Click(TObject *Sender);
	void __fastcall Button6Click(TObject *Sender);
	void __fastcall Button7Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall N3Click(TObject *Sender);
	void __fastcall N4Click(TObject *Sender);
	void __fastcall N7Click(TObject *Sender);
	void __fastcall N8Click(TObject *Sender);



private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);

		void OpenPort(void);
		void ClosePort(void);
		void CalculateCommonString(BYTE* NBD);
		void CheckString(void);
		void ControlFackBuffer(void);
		void ControlAtGap(void);
		void Read_mode(void);
		void Drow_diagram(BYTE Ones, BYTE Tws, BYTE Ths, BYTE Foss);
		void Drow_temp(String Temp, String KV2, String DV2);
		void Calculate3Page(BYTE* NBD3Page);
		void Write_mode(char *Operation);
		int Output_data(BYTE One, BYTE Tw);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
