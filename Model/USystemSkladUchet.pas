unit USystemSkladUchet;

interface
uses UCustomer;

type
  TSystemSkladUchet = class
    /// <link>aggregation</link>
    Customer: TCustomer;
  end;
implementation

end.
