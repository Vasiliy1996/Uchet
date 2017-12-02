unit USystemSkladUchet;

interface
uses UCustomer;

type
  TSystemSkladUchet = class
    /// <link>aggregation</link>
    Customer: TCustomer;
    public
    constructor Create;
  end;

implementation

{ TSystemSkladUchet }

constructor TSystemSkladUchet.Create;
begin
   Customer:= TCustomer.Create;
end;

end.
