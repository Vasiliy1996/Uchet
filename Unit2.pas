unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, USystemSkladUchet;

type
  TForm2 = class(TForm)
  private
    /// <link>aggregation</link>
    SystemSkladUchet: TSystemSkladUchet;
  public
    published
    constructor create(AOwner: TComponent); override;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TForm2 }

constructor TForm2.create(AOwner: TComponent);
begin
  inherited;
  SystemSkladUchet:= TSystemSkladUchet.Create;
end;

end.
