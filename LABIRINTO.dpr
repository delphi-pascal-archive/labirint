program LABIRINTO;

uses
  Forms,
  U_editor in 'U_editor.pas' {frmeditor},
  U_princ in 'U_princ.pas' {frmprinc},
  U_sobre in 'U_sobre.pas' {frmsobre};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmprinc, frmprinc);
  Application.CreateForm(Tfrmeditor, frmeditor);
  Application.CreateForm(Tfrmsobre, frmsobre);
  Application.Run;
end.
