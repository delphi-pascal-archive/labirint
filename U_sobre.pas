unit U_sobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  Tfrmsobre = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    btfechar: TButton;
    Label4: TLabel;
    Label5: TLabel;
    procedure btfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsobre: Tfrmsobre;

implementation

{$R *.DFM}

procedure Tfrmsobre.btfecharClick(Sender: TObject);
begin
  close;
end;

end.
