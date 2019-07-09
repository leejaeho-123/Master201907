unit VariableForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmVariable = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    edtSum: TEdit;
    edtNum: TEdit;
    btnPlus: TButton;
    btnMinus: TButton;
    procedure btnPlusClick(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
  private
    { Private declarations }
  public
    FSum : integer;
    FSub : integer;
    { Public declarations }
    /// <summary>���� FSum�� �ʱ�ȭ �Ѵ�.</summary>
    procedure InitData;
    /// <summary>���� FSum�� �Ķ���� ANum ���� ���Ѵ�.</summary>
    function AddNum(ANum: Integer): Integer;
    /// <summary>���� FSum�� �Ķ���� ANum ���� ����.</summary>
    function SubNum(ANum: Integer): Integer;

  end;

var
  frmVariable: TfrmVariable;

implementation

{$R *.dfm}

{ TForm1 }

// ������ ������ �Էµ� ���� ���ϴ�.
procedure TfrmVariable.btnMinusClick(Sender: TObject);
var
  Num, Sum: Integer;
begin
  Num := StrToInt(edtNum.Text);
  Sum := SubNum(Num);

  edtSum.Text := IntToStr(Sum);
end;

// ������ ������ �Էµ� ���� ���մϴ�.
procedure TfrmVariable.btnPlusClick(Sender: TObject);
var
  Num, Sum: Integer;
begin
  Num := StrToInt(edtNum.Text);
  Sum := AddNum(Num);

  edtSum.Text := IntToStr(Sum);
end;

procedure TfrmVariable.InitData;
begin
  // ���� FNum�� �ʱ�ȭ �ϼ���.
end;

function TfrmVariable.AddNum(ANum: Integer): Integer;
begin
  FSum := FSum + ANum;
  Result :=FSum;
end;

function TfrmVariable.SubNum(ANum: Integer): Integer;
begin
  FSub := FSum - ANum;
  Result := Fsub;
end;

end.