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
    procedure DoSomething(); virtual; abstract;
  end;

  TStringClass = class(TBase)
  public
    procedure DoSomething(); override;
  end;

//  THexClass = class(TBase)
//  public
//    procedure DoSomething(); override;
//  end;

  TPrintHW = class(TObject)
  strict private
    FBaseObj : TBase;
  public
    function DoSomething(baseObj:TBase) : String;
  end;

implementation

procedure TStringClass.DoSomething();
begin
 FValue := 'Hello World';
end;

//procedure THexClass.DoSomething();
//begin
//  FValue := '$48$65$6C$6C$6F$20$57$6F$72$6C$64';
//end;

function TPrintHW.DoSomething(baseObj:TBase) : String;
begin
  FBaseObj := baseObj;
  FBaseObj.DoSomething();
  result := FBaseObj.pTheValue;
end;
end.
