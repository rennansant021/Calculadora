unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  Tfrm_calculadora = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_igual: TButton;
    btn_ponto: TButton;
    btn_mult: TButton;
    btn_sub: TButton;
    btn_soma: TButton;
    btn_div: TButton;
    Z: TLayout;
    caixa_topo: TLayout;
    txt_nmr1: TEdit;
    lb_operador: TLabel;
    txt_nmr2: TEdit;
    procedure btn_subClick(Sender: TObject);
    procedure btn_somaClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_calculadora: Tfrm_calculadora;

implementation

{$R *.fmx}

procedure Tfrm_calculadora.btn_divClick(Sender: TObject);
begin
  lb_operador.Text := '/';
end;

procedure Tfrm_calculadora.btn_igualClick(Sender: TObject);
var numero1, numero2 : double;
begin
  numero1 := StrToFloat(txt_nmr1.Text);
  numero2 := StrToFloat(txt_nmr2.Text);
end;

procedure Tfrm_calculadora.btn_multClick(Sender: TObject);
begin
  lb_operador.Text := 'x';
end;

procedure Tfrm_calculadora.btn_somaClick(Sender: TObject);
begin
  lb_operador.Text := '+';
end;

procedure Tfrm_calculadora.btn_subClick(Sender: TObject);
begin
  lb_operador.Text := '-';
end;

end.
