unit UCustomer;

interface
uses UOrder;
type
  TCustomer = class
    /// <link>aggregation</link>
    Order: TOrder;
    public
    Constructor Create;
  end;
implementation

{ TCustomer }

constructor TCustomer.Create;
begin
   Order:= TOrder.Create;
end;

end.
