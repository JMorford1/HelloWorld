unit TheClasses;

interface

uses
  System.SysUtils,
  System.Classes;

//type
//  TProcedureToPrintHW = reference to procedure(var s:String);

type
  TBase = class(TObject)
  strict protected
    FValue : String;
  public
    property pTheValue : String read FValue;
    procedure BuildString(); virtual; abstract;
  end;

  TStringClass = class(TBase)
  public
    procedure BuildString(); override;
  end;

  THexClass = class(TBase)
  public
    procedure BuildString(); override;
  end;

  TPrintHW = class(TObject)
  strict private
    FBaseObj : TBase;
  public
    function BuildHelloWorldString(baseObj:TBase) : String;
  end;

implementation

procedure TStringClass.BuildString();
begin
  FValue := 'Hello World';
end;

procedure THexClass.BuildString();
begin
  FValue := Chr($48) + Chr($65) + Chr($6C) + Chr($6C) + Chr($6F) +
            Chr($20) + Chr($57) + Chr($6F) + Chr($72) + Chr($6C) + Chr($64);
end;

function TPrintHW.BuildHelloWorldString(baseObj:TBase) : String;
begin
  FBaseObj := baseObj;
  FBaseObj.BuildString();
  result := FBaseObj.pTheValue;
end;
end.
