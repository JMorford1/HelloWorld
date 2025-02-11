unit PrintAsString;

interface

uses
  TheClasses;

function PrintHW() : String;

implementation

function PrintHW() : String;
var
  obj : TBase;
begin
  obj := TStringClass.Create;
  try
    obj.DoSomething();
    result := obj.pTheValue;
  finally
    obj.Free;
  end;
end;

end.
