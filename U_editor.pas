unit U_editor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, ExtCtrls, Buttons, StdCtrls, ExtDlgs;

type
  Tfrmeditor = class(TForm)
    Panel1: TPanel;
    MAPA: TDrawGrid;
    RBbola: TRadioButton;
    bola: TImage;
    RBparede: TRadioButton;
    parede: TImage;
    RBlimpar: TRadioButton;
    limpar: TBevel;
    btsalvar: TButton;
    btcarregar: TButton;
    abrir: TOpenDialog;
    salvar: TSaveDialog;
    final: TImage;
    RBfinal: TRadioButton;
    btnovo: TButton;
    btfechar: TButton;
    procedure DESENHAR(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MAPASelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FOCAR(Sender: TObject);
    procedure CARREGAR_MAPAS(Sender: TObject);
    procedure SALVAR_MAPAS(Sender: TObject);
    procedure NOVO_MAPA(Sender: TObject);
    procedure btfecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmeditor: Tfrmeditor;
  celula:array[0..29,0..29]of integer;

implementation

{$R *.DFM}

procedure Tfrmeditor.MAPASelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
var a,b:integer;
begin
  if RBlimpar.Checked then celula[acol,arow] := 0;
  if RBbola.Checked then
    begin
      for a:=0 to 29 do
        for b:=0 to 29 do
          if celula[a,b] = 1 then celula[a,b] := 0;//Desativa a posição da bola anterior
      celula[acol,arow] := 1;//Ativa a posição da bola atual
      MAPA.Refresh;
    end;
  if RBparede.Checked then celula[acol,arow] := 2;
  if RBfinal.Checked  then
    begin
      for a:=0 to 29 do
        for b:=0 to 29 do
          if celula[a,b] = 3 then celula[a,b] := 0;//Desativa a posição do final anterior
      celula[acol,arow] := 3;//Ativa a posição do final atual
      MAPA.Refresh;
    end;
end;

procedure Tfrmeditor.DESENHAR(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  case celula[ACol,ARow] of
    1:MAPA.Canvas.StretchDraw(Rect,bola.Picture.Graphic);
    2:MAPA.Canvas.StretchDraw(Rect,parede.Picture.Graphic);
    3:MAPA.Canvas.StretchDraw(Rect,final.Picture.Graphic);
  end;
end;

procedure Tfrmeditor.FOCAR(Sender: TObject);
begin
  MAPA.SetFocus;
end;

procedure Tfrmeditor.CARREGAR_MAPAS(Sender: TObject);
var ARQ:textfile;
    x,y:integer;
    temp:string;
begin
try
  if abrir.Execute then
    begin
      AssignFile(ARQ,abrir.FileName);
      Reset(ARQ);
      for y:=0 to 29 do
        begin
          Readln(ARQ,temp);
          for x:=0 to 29 do
            begin
              celula[x,y] := StrToIntDef(copy(temp,1,1),0);
              delete(temp,1,1);
            end;
        end;
    end;
  closefile(ARQ);
  MAPA.Refresh;
Except end;
end;

procedure Tfrmeditor.SALVAR_MAPAS(Sender: TObject);
var ARQ:textfile;
    x,y:integer;
    S:string;
begin
  if salvar.Execute then
    begin
      x:=0; y:=0;
      AssignFile(ARQ,salvar.FileName);
      Rewrite(ARQ);
      for y:=0 to 29 do
        begin
          for x:=0 to 29 do
            S := S+inttostr(celula[x,y]);
          Writeln(ARQ,S);
          S:='';
        end;
      closefile(ARQ);
    end;
end;

procedure Tfrmeditor.NOVO_MAPA(Sender: TObject);
var x,y:integer;
begin
  for y:=0 to 29 do
    for x:=0 to 29 do
      celula[x,y] := 0;
  MAPA.Refresh;
end;

procedure Tfrmeditor.btfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmeditor.FormShow(Sender: TObject);
begin
  btnovo.Click;
end;

end.

