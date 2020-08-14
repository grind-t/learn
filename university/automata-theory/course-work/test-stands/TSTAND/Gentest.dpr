program Project1;

uses
  Forms,
  Bakalavr in 'Bakalavr.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
