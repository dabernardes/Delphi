unit uFirst;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrmPlus }

  TFrmPlus = class(TForm)
    Btn: TButton;
    EdtNumber1: TEdit;
    EdtNumber2: TEdit;
    EdtResult: TEdit;
    LblNumber1: TLabel;
    LblNumber2: TLabel;
    LblResult: TLabel;
    LblPlus: TLabel;
    LblEqual: TLabel;
    LblInfForm: TLabel;
    procedure BtnClick(Sender: TObject);
  private

  public

  end;

var
  FrmPlus: TFrmPlus;

implementation

{$R *.lfm}

{ TFrmPlus }

procedure TFrmPlus.BtnClick(Sender: TObject);
var
  vlr1,vlr2,vlr3:integer;
begin
   vlr1:=strtoint(EdtNumber1.text);
   vlr2:=strtoint(EdtNumber2.text);
   vlr3:=vlr1+vlr2
   EdtResult.text:=inttostr(vlr3);
end;

end.

