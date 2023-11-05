program Ano1858;

uses
  Forms,
  untAno1858 in 'untAno1858.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Ano 1858';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
