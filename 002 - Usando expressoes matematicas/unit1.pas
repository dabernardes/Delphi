unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnResultado: TButton;
    Btncalcular2: TButton;
    Btncalcular3: TButton;
    Btncalcular4: TButton;
    EdtValorSub1: TEdit;
    EdtValorSub2: TEdit;
    EdtValorsubResu: TEdit;
    EdtValormult1: TEdit;
    EdtValormul2: TEdit;
    EdtValormultresu: TEdit;
    EdtValorDiv1: TEdit;
    EdtValorDv2: TEdit;
    EdtdivRes: TEdit;
    edtValor2: TEdit;
    edtValor1: TEdit;
    edtValor3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LblTitulo: TLabel;
    lblSoma: TLabel;
    lblIgual: TLabel;
    lalValor1: TLabel;
    lblValor2: TLabel;
    lblResustado: TLabel;
    procedure Btncalcular3Click(Sender: TObject);
    procedure Btncalcular4Click(Sender: TObject);
    procedure BtnResultadoClick(Sender: TObject);
    procedure Btncalcular2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BtnResultadoClick(Sender: TObject);
var
  valor1, valor2, resultado1 :integer;
begin
      valor1 :=StrtoIntDef(edtValor1.text,0);
      valor2 :=StrtoIntDef(edtValor2.text,0);
      resultado1 :=valor1 + valor2 ;
      edtValor3.text :=inttostr(resultado1);

end;

procedure TForm1.Btncalcular3Click(Sender: TObject);
var
    valormulti1,valormulti2,resultadomulti :integer;
begin
      valormulti1 :=StrtoIntDef(edtvalormult1.text,0);
      valormulti2 :=StrtoIntDef(EdtValormul2.text,0);
      resultadomulti :=valormulti1*valormulti2 ;
      EdtValormultresu.text :=inttostr(resultadomulti) ;
end;

procedure TForm1.Btncalcular4Click(Sender: TObject);
var
    valordiv1,valordiv2:integer ;
     resultadodiv:double ;
begin
     valordiv1 :=StrtoIntDef(edtvalordiv1.text,0);
      valordiv2 :=StrtoIntDef(EdtValordv2.text,0);
      resultadodiv :=valordiv1 / valordiv2 ;
      Edtdivres.text :=floattostr(resultadodiv);
end;

procedure TForm1.Btncalcular2Click(Sender: TObject);
var
  valorSub1, valorsub2, resultadosubi :integer;
begin
       valorsub1 :=StrtoIntDef(EdtValorSub1.text,0);
      valorsub2 :=StrtoIntDef(edtValorsub2.text,0);
      resultadosubi :=valorsub1 - valorsub2 ;
      EdtValorsubResu.text :=inttostr(resultadosubi);
end;

end.

