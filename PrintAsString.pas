unit PrintAsString;

interface

uses
  TheClasses;

function PrintHW() : String;

implementation

function PrintHW() : String;
var
  obj : TPrintHW;
begin

  obj := TPrintHW.Create;
  try

    var builderObj : TBase;
    builderObj := {TStringClass}THexClass.Create;
    try
      result := obj.BuildHelloWorldString(builderObj);
    finally
      builderObj.Free;
    end;


  finally
    obj.Free;
  end;


end;

end.
