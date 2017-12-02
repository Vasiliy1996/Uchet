unit USystemSkladUchet;

interface
uses UCustomer;

type
  TSystemSkladUchet = class
    /// <link>aggregation</link>
    Customer: TCustomer;
    public
    constructor Create;
    procedure Processing;
  end;

implementation

{ TSystemSkladUchet }

constructor TSystemSkladUchet.Create;
begin
  //
end;

procedure TSystemSkladUchet.Processing;
begin
  Customer:= TCustomer.Create;
end;

end.
