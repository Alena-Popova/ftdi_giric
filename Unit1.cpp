//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <stdio.h>
#include <conio.h>
#include <cstdlib>
#include <iostream>
#include <Windows.h>
#include <windef.h>
#include <ctime>
#include "PCOMM.h"
#include "Unit2.h"
#pragma comment (lib,"pcommb.lib") // ��� ������� � ��������� "x-bcb.lib"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

char ibuf[256];
char BufferComeBack[256];
int DisplacementVector;
int port, ret, count_for_grid;

int Var11 = 0;
bool Flag_for_save, FlagPass;
float spectral_ratio;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
	Flag_for_save = false;
	Timer1->Enabled = false;
	Form1->PageControl2->ActivePageIndex = 0;
	Label7->Caption = " ";
	Label10->Caption = " ";
	Label13->Caption = " ";
	Label14->Caption = " ";
	Label15->Caption = " ";

	Form1->StringGrid1->Cells[0][0] = "���� (����.)";
	Form1->StringGrid1->Cells[1][0] = "����������� (���.��.)";

	count_for_grid = 0; // for output data in a grid in 3 page
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------


void __fastcall TForm1::Button3Click(TObject *Sender)
{
		OpenPort();
		if (ret == SIO_OK) {
		Timer1->Enabled = true;
		Memo2->Lines->Add("�������� �������� ������");
		}
		Form1->PageControl2->Pages[2]->TabVisible = False;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button4Click(TObject *Sender)
{
	ClosePort();

	Timer1->Enabled = false;
	Form1->PageControl2->Pages[2]->TabVisible = True;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormDestroy(TObject *Sender)
{
	Timer1->Enabled = false;
	if (ret == SIO_OK) {
	sio_close (port);
	}
}

void __fastcall TForm1::Button7Click(TObject *Sender)
{
	int ToRun;
	AnsiString Datta;
	char *Command;
	ToRun =  Form1->ComboBox3->ItemIndex + 65;
	Datta =  IntToHex(ToRun, 0).c_str();
	Command = Datta.c_str();

	Write_mode(Command);
}
void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
	Read_mode();
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
/*������ ����������*/
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void TForm1::Write_mode(char *Operation){

	int StateTransmit = 0, StateReturn = 0;

	Timer1->Enabled = false;

	if (Form1->ComboBox3->ItemIndex != -1) {
	StateTransmit = sio_write (port,Operation, strlen(Operation));
	if (StateTransmit >= 0) {
	Memo2->Lines->Add("��������" + String(Operation) + "������� �������� � ���� ");

		sio_read(port, ibuf, 256);
		StateReturn = sio_read(port, ibuf, 256);
		if (StateReturn >= 0) {
		FlagPass = false;
		Sleep(150);
		CheckString();

		if (FlagPass) {
			CalculateCommonString(BufferComeBack);
			}
		else{
			CalculateCommonString(ibuf);
			}

			}
		else{
		 Memo2->Lines->Add("����� �� ������� �� ������");
		}
		}
 else{
 Memo2->Lines->Add("������ �������� ������ � ����");
 }
 }
 else {
   Memo2->Lines->Add("�������� ��������");
 }

}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

 void TForm1::Read_mode(void){

	sio_read(port, ibuf, 256);

	FlagPass = false;
	Sleep(150);

	CheckString();

 }
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void TForm1::OpenPort(void){

	if (Form1->ComboBox1->ItemIndex != -1) {
	port = Form1->ComboBox1->ItemIndex;
	}
	else{
	port = 3;
	}

	ret = sio_open (port);
	if (ret == SIO_OK) {

		Memo2->Lines->Add("���� ������. �� ������ ������ �����");
		Label15->Caption =  "���� ������. �� ������ ������ �����";
		sio_ioctl(port, B19200, P_NONE | BIT_8 | STOP_1 );
		Memo2->Lines->Add("���� ��������");
		Memo2->Lines->Add(port);
	}
	else{
		Memo2->Lines->Add("���� �� ������: ������ - 1");
		Label15->Caption = "���� �� ������: ������ - 1";
		Memo2->Lines->Add(Form1->ComboBox1->ItemIndex);
	}

}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void TForm1::ClosePort(void){

	Timer1->Enabled = false;
	if (ret == SIO_OK) {
	sio_close (port);
	Memo2->Lines->Add("� ���� ��������");
	Label15->Caption = "���� ��������";
	}

}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void TForm1::CheckString(void){

	String BT1 = "", BT2 = "", commonDate = "";
	int i, FFDouble;
	BYTE* B;

	DisplacementVector = 0;

	for (i = 0; i < 16; i++) {

	BT1 = "";
	BT2 = "";
	BT1 += IntToHex((BYTE)ibuf[i],2);
	BT2 += IntToHex((BYTE)ibuf[i+1],2);
	commonDate = BT1 + BT2;
	FFDouble = StrToIntDef("0x" + String(commonDate),0);
	if (FFDouble == 61680) {
	DisplacementVector = i;
	break;
	}
	}
	if (DisplacementVector == 0) {
	ControlAtGap();
	}

	memcpy( BufferComeBack,&ibuf[DisplacementVector], 256 );
	B = BufferComeBack;


	 switch ( Form1->PageControl2->ActivePageIndex )
	  {
		 case 0:
			CalculateCommonString(B);
			break;

		 case 1:
			Calculate3Page(B);
			break;

		 case 2:
			Drow_diagram(B[10] ,B[11] ,B[14] ,B[15]);
			break;
	  }

	  ZeroMemory(B,sizeof(char)*256);
	  ZeroMemory(ibuf,sizeof(char)*256);
	  ZeroMemory(BufferComeBack,sizeof(char)*256);

	}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void TForm1::ControlAtGap(void){

	String GapOnEnd = "", GapOnBegin = "", Gap = "";
	int  F0onGap;

	GapOnEnd += IntToHex((BYTE)ibuf[15],2);
	GapOnBegin += IntToHex((BYTE)ibuf[0],2);

	Gap = GapOnEnd + GapOnBegin;
	F0onGap = StrToIntDef("0x" + String(Gap),0);

	if (F0onGap == 61680 ) {  //F0
	DisplacementVector = 15;
	}
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
 void TForm1::Drow_diagram(BYTE Ones, BYTE Tws, BYTE Ths, BYTE Foss){

	AnsiString WayFile = "", NameFile = "", Angle = "", Result_diagramm = "";
	int SevenW = 0,SixW = 0;
	float Result = 0;
	int Var2,Var3;

	SixW = Output_data(Ones, Tws);
	SevenW   = Output_data(Ths, Foss);

	Memo3->Lines->Add(String().sprintf( L" ������: %.2X  %.2X  %.2X %.2X",Ones,
	Tws,Ths, Foss));

	Result  = SixW/SevenW;
	Result_diagramm = FloatToStrF(Result*100, ffFixed, 4, 4);
	Form1->Label7->Caption = Result_diagramm + " %";

	Form1->StringGrid1->Cells[0][count_for_grid] = Form1->Edit1->Text;
	Form1->StringGrid1->Cells[1][count_for_grid] = Result_diagramm ;

	if (Form1->CheckBox1->Checked == true) {
	  WayFile = ExtractFilePath(Application->ExeName) + Form1->Edit2->Text
	   + FormatDateTime(" ddmmmyyyy_",Now()) + ".txt";

	   FILE* out = fopen(WayFile.c_str(), "a");
	   Angle = Form1->Edit1->Text;
	   fprintf(out,"����(����):\t %s\t �����������(��� ��):\t %s\n",Angle.c_str(),Result_diagramm.c_str());
	   fclose(out);
	   Memo3->Lines->Add("�������� �������� � " + WayFile );
	}
	Application->ProcessMessages();
}

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

void TForm1::CalculateCommonString(BYTE* NBD){

   if (NBD[4] == 0) {
	Output_data(NBD[2],NBD[3]);
   }
   else Var11 = 0;
	Memo1->Lines->Add(String().sprintf( L" %.2X %.2X %.2X %.2X %.2X %.2X %.2X %.2X"
	  L" %.2X %.2X %.2X %.2X %.2X %.2X %.2X %.2X Temp : %d",
	  NBD[0],NBD[1],NBD[2],NBD[3],NBD[4],NBD[5],NBD[6],NBD[7],
	  NBD[8],NBD[9],NBD[10],NBD[11],NBD[12],NBD[13],NBD[14],NBD[15],Var11));

	 Application->ProcessMessages();
}


void TForm1::Calculate3Page(BYTE* NBD3Page){
	Label16->Caption = " ";
	if (NBD3Page[4] == 0) {
	Output_data(NBD3Page[2],NBD3Page[3]);
	Label10->Caption = IntToStr(Var11) + "  �C";
	Chart1->Series[0]->Add(Var11,Date().CurrentTime().FormatString("hh.mm.ss"),clRed);
	Chart1->BottomAxis->DateTimeFormat = Date().CurrentTime().FormatString("hh.mm.ss");
	Chart1->BottomAxis->Increment=DateTimeStep[1];

	Label13->Caption = Output_data(NBD3Page[10],NBD3Page[11]);
	Label14->Caption = Output_data(NBD3Page[14],NBD3Page[15]);

	}
	else{
	Var11 = 0;
	Label10->Caption = "no signal";
	}
	Application->ProcessMessages();
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
int TForm1::Output_data(BYTE One, BYTE Tw){

	Var11 = 0;
	String   Temperature = "", T1 = "" ,T2 = "";
	T1 += IntToHex((BYTE)One,2);
	T2 += IntToHex((BYTE)Tw,2);
	Temperature   = T1 + T2;

	Var11= StrToIntDef("0x" + String(Temperature),0);

	return Var11;
}

void __fastcall TForm1::Button5Click(TObject *Sender)
{
	Timer1->Enabled = false;

	OpenPort();
	count_for_grid++;
	Sleep(300);
	Read_mode();
	ClosePort();

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button6Click(TObject *Sender)
{

	count_for_grid = 0;

 Memo3->Clear();
 Form1->StringGrid1->Cols[0]->Clear();
 Form1->StringGrid1->Cols[1]->Clear();
 Form1->StringGrid1->Cells[0][0] = "���� (����.)";
 Form1->StringGrid1->Cells[1][0] = "����������� (���.��.)";
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button1Click(TObject *Sender)
{
Memo1->Clear();
Memo2->Clear();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::N3Click(TObject *Sender)
{   AnsiString WayFile = "";
	WayFile = ExtractFilePath(Application->ExeName);
	Form2->Show();
	Form2->Memo1->Clear();
	Form2->Memo1->Lines->LoadFromFile(WayFile + "Manual.txt");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N4Click(TObject *Sender)
{
	AnsiString WayFile = "";
	WayFile = ExtractFilePath(Application->ExeName);
	Form2->Show();
	Form2->Memo1->Clear();
	Form2->Memo1->Lines->LoadFromFile(WayFile + "Technical support.txt");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N7Click(TObject *Sender)
{
	Form2->Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N8Click(TObject *Sender)
{
  Form2->Close();
}
//---------------------------------------------------------------------------


