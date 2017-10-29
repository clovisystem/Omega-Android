unit HeaderFooterTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ExtCtrls;

type
  TForm1 = class(TForm)
    Header: TToolBar;
    Footer: TToolBar;
    HeaderLabel: TLabel;
    {RadioButton1: TRadioButton;
    RadioButton2: TRadioButton; }
    Label1: TLabel;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    ImageViewer1: TImageViewer;
    ImageViewer2: TImageViewer;

    {procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject); }
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses Unit2, Unit3;



procedure TForm1.Button1Click(Sender: TObject);
begin
    if Form2=nil then
    Form2:=TForm2.Create(Self);
    Form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    if Form3=nil then
    Form3:=TForm3.Create(Self);
    Form3.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  //ImageViewer1.BackgroundFill:=talpharec.blue;
end;

{procedure TForm1.RadioButton1Change(Sender: TObject);
begin
    if Form2=nil then
    Form2:=TForm2.Create(Self);
    Form2.Show;
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
    if Form3=nil then
    Form3:=TForm3.Create(Self);
    Form3.Show;
end; }

procedure TForm1.Timer1Timer(Sender: TObject);
begin
    ImageViewer1.visible:=false;
end;

end.
