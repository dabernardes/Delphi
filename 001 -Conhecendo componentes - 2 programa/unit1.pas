unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrmCalcular }

  TFrmCalcular = class(TForm)
    BtnSubtrair: TButton;
    BtnSoma: TButton;
    EdtVlr1: TEdit;
    EdtVlr2: TEdit;
    EdtResultado: TEdit;
    LblVlr1: TLabel;
    LblVlr2: TLabel;
    LblResultado: TLabel;
    LblInfo: TLabel;
    procedure BtnSomaClick(Sender: TObject);
    procedure BtnSubtrairClick(Sender: TObject);
  private

  public

  end;

var
  FrmCalcular: TFrmCalcular;

implementation

{$R *.lfm}

{ TFrmCalcular }

procedure TFrmCalcular.BtnSomaClick(Sender: TObject);
var
  vlr1,vlr2:integer;
  resultado:double;
begin
 try
   vlr1:=strtoint(EdtVlr1.text);
   vlr2:=strtoint(EdtVlr2.text);
   resultado:=vlr1+vlr2;
   edtresultado.text:=floattostr(resultado);
 except
   showmessage('Digite um numero valido');
 end;

 end;

procedure TFrmCalcular.BtnSubtrairClick(Sender: TObject);
var
  vlr1,vlr2:integer;
  resultado:double;
begin

  try
   vlr1:=strtoint(EdtVlr1.text);
   vlr2:=strtoint(EdtVlr2.text);
   resultado:=vlr1-vlr2;
   edtresultado.text:=floattostr(resultado);
  except
   showmessage('Digite um numero valido');
  end;
end;

end.

