unit untAno1858;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, ComCtrls, Registry, jpeg, Gauges,
  FileCtrl, DBClient, Provider, Mask, Grids, DBGrids, IBDatabase,
  IBCustomDataSet, IBQuery;


type
  TForm1 = class(TForm)
    Database1: TDatabase;
    qrCria: TQuery;
    QrAuxiliar: TQuery;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    edCaminhoBanco: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edUsuario: TEdit;
    edSenha: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    edMatricula: TEdit;
    edEmpresa: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    lblConexao: TLabel;
    IBDados: TIBDatabase;
    IBQuery1: TIBQuery;
    IBTrans: TIBTransaction;
    IBEmpresa: TIBQuery;
    IBFuncionario: TIBQuery;
    opdBancoDeDados: TOpenDialog;
    Label6: TLabel;
    edNome: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure edEmpresaExit(Sender: TObject);
    procedure edMatriculaExit(Sender: TObject);
    procedure edMatriculaChange(Sender: TObject);
  private
    function getCaminhoBDE : String;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
   If opdBancoDeDados.Execute then
      edCaminhoBanco.Text:= opdBancoDeDados.FileName;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
   try
      IBDados.Close;
      IBDados.Params.Clear;
      if Trim(edUsuario.Text) <> EmptyStr then
      begin
         IBDados.Params.Add('user_name=' + edUsuario.Text);
         IBDados.Params.Add('password=' + edSenha.Text);
      end
      else
      begin
         IBDados.Params.Add('user_name=SYSDBA');
         IBDados.Params.Add('password=masterkey');
      end;

      IBDados.DatabaseName:= edCaminhoBanco.Text;
      IBDados.Open;

      lblConexao.Font.Color:= clBlue;
      lblConexao.Caption:= 'Conexão estabelecida com êxito';
      GroupBox2.Enabled:= True;

      IBEmpresa.Close;
      IBEmpresa.SQL.Text:= 'select * from empresa';
      IBEmpresa.Open;

      IBFuncionario.Close;
      IBFuncionario.SQL.Text:= 'select * from funcionario';
      IBFuncionario.Open;

      edEmpresa.SetFocus;
   except
      lblConexao.Font.Color:= clRed;
      lblConexao.Caption:= 'Não foi possível estabelecer uma conexão';
      edCaminhoBanco.SetFocus;
      GroupBox2.Enabled:= False;
   end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var sSql : String;
begin
  if not IBTrans.InTransaction then 
     IBTrans.StartTransaction;

  if MessageDlg('Antes de realizar essa operação é recomendável anotar a sequência de horários lançados para o funcionário' + #13 +
                'Confirma a exclusão?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrNo then
                exit;

  sSql := ' delete from seqhorfuncionario where empcodigo = ' + edEmpresa.Text + ' and fundes_docto = ' + QuotedStr(edMatricula.Text);
  IBQuery1.Sql.Text := sSql;

try
  IBQuery1.ExecSQL;

  IBTrans.Commit;

  ShowMessage('Processo concluído com êxito');
  edEmpresa.Text:= EmptyStr;
  edMatricula.Text:= EmptyStr;
  edNome.Text:= EmptyStr;
except
  ShowMessage('Não foi possível completar a operação');
end;
end;

procedure TForm1.edEmpresaExit(Sender: TObject);
begin
   if Trim(edEmpresa.Text) <> EmptyStr then
      if (not IBEmpresa.Locate('EmpCodigo', edEmpresa.Text, [])) then
      begin
         MessageDlg('Código da empresa não cadastrado', MtError, [MbOk], 1);
         edEmpresa.setfocus;
      end;
end;

procedure TForm1.edEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9' , #13 , #8]) Then
     Key := #0;
end;

procedure TForm1.edMatriculaChange(Sender: TObject);
begin
  edNome.Text:= EmptyStr;
end;

procedure TForm1.edMatriculaExit(Sender: TObject);
begin
   if Trim(edMatricula.Text) <> EmptyStr then
      if (not IBFuncionario.Locate('EmpCodigo;Fundes_Docto', VarArrayOf([edEmpresa.Text, edMatricula.Text]), [])) then
      begin
         MessageDlg('Funcionário não cadastrado', MtError, [MbOk], 1);
         edNome.Text:= EmptyStr;
         edMatricula.setfocus;
      end
      else
         edNome.Text:= IBFuncionario.FieldByName('FunNome').AsString;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  edCaminhoBanco.Text := getCaminhoBDE;
  edUsuario.Text:= EmptyStr;
  edSenha.Text:= EmptyStr;
end;

function TForm1.getCaminhoBDE: String;
var
   MyList: TStringList;
begin
   if Session.IsAlias('Ponto') then
   begin
      MyList := TStringList.Create;
      Session.GetAliasParams('ponto', mylist);

      result := trim(copy(mylist[0], 15, length(mylist[0])));
   end
   else
   begin
     edCaminhoBanco.Text:= 'C:\Zeus\Ponto.gdb';
     Application.ProcessMessages;
     edCaminhoBanco.SetFocus;
     Exit;
   end;

end;

end.
