////////////////////////////////////////////////////////////////
//LABIRINTO V 1.0                                             //
//DESENVOLVIDO POR CARLOS ALBERTO BRUGNEROTTO "PARRERA".      //
//USE OS CÓDIGOS A VONTADE, FAÇA ALTERAÇÕES OU QUALQUER COISA,//
//APENAS MANTENHA O MEU NOME NO PROGRAMA   -  27/11/2002      //
//SE FIZER ALTERAÇÕES MANDE UM E-MAIL PARA MIM.               //
//                                                            //
//E-MAIL: parrera@eu.zip.net                                  //
////////////////////////////////////////////////////////////////
unit U_princ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, FileCtrl, Menus;

type
  Tfrmprinc = class(TForm)
    abrir: TOpenDialog;
    MOVER: TTimer;
    MainMenu: TMainMenu;
    mnMenu: TMenuItem;
    mnCarregarfase: TMenuItem;
    mnAbrireditor: TMenuItem;
    mnSobre: TMenuItem;
    Exit1: TMenuItem;
    procedure CARREGAR_FASE(Sender: TObject);
    procedure ABRIR_EDITOR(Sender: TObject);
    procedure MOVERTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnSobreClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TBOLA=record
    x,y:integer;
  end;
  TFINAL=record
    x,y:integer;
  end;

var
  frmprinc: Tfrmprinc;
  area:array[0..29,0..29]of integer;
  bola:TBOLA;
  final:TFINAL;
  MAPA,OFFscreen:TBitmap;

implementation

uses U_editor, U_sobre;

{$R *.DFM}

procedure Tfrmprinc.FormCreate(Sender: TObject);
begin
  MAPA        := Tbitmap.create;
  MAPA.Height := frmprinc.Height;
  MAPA.Width  := frmprinc.Width;
  OFFscreen        := Tbitmap.create;
  OFFscreen.Height := frmprinc.Height;
  OFFscreen.Width  := frmprinc.Width;
end;

procedure Tfrmprinc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MAPA.free;
  OFFscreen.free;
end;

procedure NOVO;
var x,y:integer;
begin
  for y:=0 to 29 do
    for x:=0 to 29 do
      area[x,y] := 0;
end;

procedure DESENHAR_MAPA;
var R:Trect;
    X,Y,a,b:integer;
begin
  MAPA.Canvas.Brush.color := clsilver;
  MAPA.Canvas.Rectangle(0,0,MAPA.Width,MAPA.Height);
  for Y:=0 to 29 do
    for X:=0 to 29 do
      begin
        a := X*15;
        b := Y*15;
        R := Rect(a,b,a+15,b+15);
        case AREA[X,Y] of
          2:MAPA.Canvas.StretchDraw(R,frmeditor.parede.Picture.Graphic);
          3:MAPA.Canvas.StretchDraw(R,frmeditor.final.Picture.Graphic);
        end;
      end;
end;

procedure DESENHAR_BOLA;
var R:Trect;
    X,y:integer;
begin
  X := bola.X*15;
  Y := bola.Y*15;
  R := Rect(X,Y,X+15,Y+15);
  OFFscreen.Canvas.Draw(0,0,MAPA);
  OFFscreen.Canvas.StretchDraw(R,frmeditor.bola.Picture.Graphic);
  frmprinc.Canvas.Draw(0,0,OFFscreen);
end;

procedure Tfrmprinc.CARREGAR_FASE(Sender: TObject);
var ARQ:textfile;
    x,y,S:integer;
    temp:string;
begin
try
  if abrir.Execute then
    begin
      NOVO;
      AssignFile(ARQ,abrir.FileName);
      Reset(ARQ);
      for y:=0 to 29 do
        begin
          Readln(ARQ,temp);
          for x:=0 to 29 do
            begin
              S := strtoint(copy(temp,1,1));
              case S of
                1:begin//Define a posição da bola
                    bola.x := x;
                    bola.y := y;
                    area[x,y] := 0;//A posição da bola é controlada pela variável BOLA
                  end;
                2:area[x,y] := 2;
                3:begin//Define a posição do final
                    final.x := x;
                    final.y := y;
                    area[x,y] := 3;
                  end;
              end;
              delete(temp,1,1);
            end;
        end;
    end;
  closefile(ARQ);
  DESENHAR_MAPA;
  DESENHAR_BOLA;
  MOVER.Enabled := true;
Except end;
end;

procedure Tfrmprinc.ABRIR_EDITOR(Sender: TObject);
var PAUSADO:boolean;
begin
  PAUSADO := MOVER.Enabled;
  MOVER.Enabled := false;
  frmeditor.showmodal;
  MOVER.Enabled := PAUSADO;//Ativa o timer somente se já estivesse ativo
end;

procedure Tfrmprinc.MOVERTimer(Sender: TObject);
begin
  if GetKeyState(vk_left)<0 then //esquerda
    begin
      if (bola.x > 0)and(area[bola.x-1,bola.y] <> 2) then//Se for diferente de parede
        bola.x := bola.x-1;
    end;
  if GetKeyState(vk_right)<0 then //direita
    begin
      if (bola.x < 29)and(area[bola.x+1,bola.y] <> 2) then
        bola.x := bola.x+1;
    end;
  if GetKeyState(vk_up)<0 then //cima
    begin
      if (bola.y > 0)and(area[bola.x,bola.y-1] <> 2) then
        bola.y := bola.y-1;
    end;
  if GetKeyState(vk_down)<0 then //baixo
    begin
      if (bola.y < 29)and(area[bola.x,bola.y+1] <> 2) then
        bola.y := bola.y+1;
    end;
  DESENHAR_BOLA;

  if (bola.x = final.x)and(bola.y = final.y)then
    begin
      MOVER.Enabled := false;
      ShowMessage('Você venceu!'+#13+'Escolha outra fase.');
    end;
end;

procedure Tfrmprinc.mnSobreClick(Sender: TObject);
var PAUSADO:boolean;
begin
  PAUSADO := MOVER.Enabled;
  MOVER.Enabled := false;
  frmsobre.showmodal;
  MOVER.Enabled := PAUSADO; 
end;

procedure Tfrmprinc.Exit1Click(Sender: TObject);
begin
 Close;
end;

end.
