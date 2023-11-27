unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    BtnResultado: TButton;
    edtValor1: TEdit;
    EdtValor2: TEdit;
    EdtResultado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BtnResultadoClick(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.BtnResultadoClick(Sender: TObject);
var
valor1, valor2, resultado :integer;
begin
  valor1 :=StrtoIntDef(edtValor1.text,0);
  valor2 :=StrtoIntDef(edtValor2.text,0);
  resultado :=valor1 - valor2 ;
  edtResultado.text :=inttostr(resultado);
end;

end.

