unit UCustomer;

interface
uses UOrder;
type
  TCustomer = class
    /// <link>aggregation</link>
    Order: TOrder;
  end;
implementation

end.
