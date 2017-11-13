unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids, Vcl.Grids, Vcl.DBGrids;

type
  IConnection = interface
    procedure install;
    function GetADOConnection: TADOConnection;
    procedure DBLookupComboBox1Click(ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery; Label17: TLabel; DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox; Label20: TLabel; s: string; s1: string);
  end;

  TConnection = class(TInterfacedObject, IConnection)
  private
    fPassword: string;
    fLogin: string;
    fServer: string;
    fDatabase: string;
    fPort: string;
    fTable: string;
    ADOConnection1: TADOConnection;
  public
    procedure install;
    function GetADOConnection: TADOConnection;
    procedure DBLookupComboBox1Click(ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery; Label17: TLabel; DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox; Label20: TLabel; s: string; s1: string);
  published
    constructor create(Password: string; Login: string; Server: string;
      Database: string; Port: string; Table: string);
  end;

implementation

{ TConnection }

constructor TConnection.create(Password: string; Login: string; Server: string;
  Database: string; Port: string; Table: string);
begin
  fPassword := Password;
  fLogin := Login;
  fServer := Server;
  fDatabase := Database;
  fPort := Port;
  fTable := Table;
end;

procedure TConnection.DBLookupComboBox1Click(ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery; Label17: TLabel; DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox; Label20: TLabel; s: string; s1: string);
begin

  ADOQuery4.Close;
  ADOQuery4.SQL.Clear;
  ADOQuery4.SQL.Add('select FIO, postavchikFIO from postavchik;');
  DBLookupComboBox1.DataField := 'FIO';

  ADOQuery4.Open;

  Label17.Caption := DBLookupComboBox1.ListSource.DataSet['postavchikFIO'];
  s := Label17.Caption;

  ADOQuery5.Close;
  ADOQuery5.SQL.Clear;
  ADOQuery5.SQL.Add('select NameTovar from ' + s + ';');
  DBLookupComboBox2.DataField := 'NameTovar';
  ADOQuery5.Open;
  // ADOQuery5.Active := true;
  Label20.Caption := DBLookupComboBox2.ListSource.DataSet['NameTovar'];
  s1 := Label17.Caption;
end;

function TConnection.GetADOConnection: TADOConnection;
begin
  result := ADOConnection1;
end;

procedure TConnection.install;
begin
  if not Assigned(ADOConnection1) then
    ADOConnection1 := TADOConnection.create(nil);
  ADOConnection1.ConnectionString := 'Provider=MSDASQL.1;Password=' + fPassword
    + ';Persist Security Info=True;User ID=' + fLogin +
    ';Extended Properties="DRIVER={MySQL ODBC 5.3 Unicode Driver};UID=' + fLogin
    + ';PWD=' + fPassword + ';SERVER=' + fServer + ';DATABASE=' + fDatabase +
    ';PORT=' + fPort + ';COLUMN_SIZE_S32=1;";Initial Catalog=' + fTable;
  ADOConnection1.LoginPrompt := false;
  ADOConnection1.Connected := true;
end;

end.
