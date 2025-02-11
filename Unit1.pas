unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    OutputMemo: TMemo;
    ControlsPanel: TPanel;
    ExitButton: TButton;
    PrintAsStringButton: TButton;
    procedure PrintAsStringButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  PrintAsString;

{$R *.dfm}

procedure TForm1.ExitButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.PrintAsStringButtonClick(Sender: TObject);
begin
 OutputMemo.Lines.Add(PrintHW());
end;

end.
