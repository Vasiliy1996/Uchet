unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Menus,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids, Vcl.Grids, Vcl.DBGrids,
  Unit2;

type
  TForm1 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBCtrlGrid2: TDBCtrlGrid;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBCtrlGrid3: TDBCtrlGrid;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    Label13: TLabel;
    Edit1: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit4: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label17: TLabel;
    Label18: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label19: TLabel;
    DataSource6: TDataSource;
    ADOQuery6: TADOQuery;
    Label20: TLabel;
    //ADOConnection1: TADOConnection;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery5: TADOQuery;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    Connection: IConnection;
  public
  published
    constructor create(AOWner: TComponent); override;
  end;

var
  Form1: TForm1;
  s, s1: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  ADOQuery6.SQL.Clear;
  ADOQuery6.Close;
  ADOQuery6.SQL.Clear;
  ADOQuery6.SQL.Add('UPDATE new_table SET idnew_table=1, new_tablecol=' +
    Edit1.text);
  ADOQuery6.ExecSQL;
  { ADOQuery6.Active := true;
    ADOQuery6.FieldByName('new_tablecol').AsString := Edit1.Text;
    ADOQuery6.FieldByName('Postavchik').AsString:=s;
    ADOQuery6.FieldByName('Nametovar').AsString:=s1;
    ADOQuery6.FieldByName('Col-vo').AsString:=Edit4.Text;
    ADOQuery6.FieldByName('Addres').AsString:=Edit2.Text;
    ADOQuery6.FieldByName('DataZakaza').AsString:=Edit3.Text; }

end;

constructor TForm1.create(AOWner: TComponent);
begin
  inherited;
  Connection := TConnection.create('1234', 'root', 'localhost', 'basa',
    '3306', 'basa');
  Connection.install;
  // ADOConnection1 := Connection.GetADOConnection;
  ADOQuery1.Connection := Connection.GetADOConnection;
  ADOQuery2.Connection := Connection.GetADOConnection;
  ADOQuery3.Connection := Connection.GetADOConnection;
  //ADOQuery4.Connection := Connection.GetADOConnection;
  //ADOQuery5.Connection := Connection.GetADOConnection;
  //ADOQuery6.Connection := Connection.GetADOConnection;
  ADOQuery1.Active := true;
  ADOQuery2.Active := true;
  ADOQuery3.Active := true;

  { ADOQuery4.Active := true;
    ADOQuery5.Active := true;
    ADOQuery6.Active := true; }

end;

procedure TForm1.DBLookupComboBox1Click(Sender: TObject);
begin
  {connection.DBLookupComboBox1Click(ADOQuery4,ADOQuery5,Label17,DBLookupComboBox1,
  DBLookupComboBox2,Label20,s,s1); }
  ADOQuery4.Connection := Connection.GetADOConnection;
  ADOQuery4.Active := true;
  ADOQuery4.Close;
  ADOQuery4.SQL.Clear;
  ADOQuery4.SQL.Add('select FIO, postavchikFIO from postavchik;');
  DBLookupComboBox1.DataField := 'FIO';
  ADOQuery4.Open;
  Label17.Caption := DBLookupComboBox1.ListSource.DataSet['postavchikFIO'];
  s := Label17.Caption;

    ADOQuery5.Connection := Connection.GetADOConnection;
    ADOQuery5.Active:=true;
    ADOQuery5.Close;
    ADOQuery5.SQL.Clear;
    ADOQuery5.SQL.Add('select NameTovar from '+s+';');
    DBLookupComboBox2.DataField := 'NameTovar';
    ADOQuery5.Open;

    Label20.Caption := DBLookupComboBox2.ListSource.DataSet['NameTovar'];
    s1 := Label17.Caption;


end;

end.
