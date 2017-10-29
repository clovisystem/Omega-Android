unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Edit2: TEdit;
    Edit1: TEdit;
    Label7: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Timer3: TTimer;
    Timer4: TTimer;
    Label6: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Button1: TButton;
    HeaderLabel: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit4KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);

    procedure Edit4Exit(Sender: TObject);

    procedure Edit3Exit(Sender: TObject);
    {procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject); }
    procedure Edit1Typing(Sender: TObject);
    procedure Edit2Typing(Sender: TObject);
    procedure Edit3Typing(Sender: TObject);
    procedure Edit4Typing(Sender: TObject);   //procedure Edit1Change(Sender: TObject);
    //procedure Edit4KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      //Shift: TShiftState);
    //procedure Timer3Timer(Sender: TObject);
    //procedure Edit5CanFocus(Sender: TObject; var ACanFocus: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses HeaderFooterTemplate;


function minusculo(texto: string): string; stdcall;
const
maiusculo = 'QWERTYUIOPASDFGHJKLZXCVBNM';
minusculo = 'qwertyuiopasdfghjklzxcvbnm';
var
x: Integer;
begin
for x := 1 to Length(texto) do
if Pos(texto[x], MAIUSCULO) <> 0 then
texto[x] := MINUSCULO[Pos(texto[x], MAIUSCULO)];
Result := texto;
end;



//foi colocado dois "C's" para funcionar em android
function removeAcentos(texto:string):string;
  Const ComAcento = '������������������cc������������������';
  Const SemAcento = 'aaaaeeeiiioooouuucccAAAAEEEIIIOOOOUUUC';
  var iFor : Integer;
begin
   for iFor := 1 to Length(texto) do begin
      if Pos(texto[iFor],ComAcento) <> 0 then begin
         texto[iFor] := SemAcento[Pos(texto[iFor],ComAcento)];
      end;
   end;
   Result := texto;
end;











procedure TForm2.Edit3Exit(Sender: TObject);
begin
If (Edit3.Text<>'marrom') and (Edit3.Text<> 'Marrom')and (Edit3.Text<> 'MARROM') and (Edit3.Text<> 'abobora')and (Edit3.Text<> 'Abobora')and (Edit3.Text<> 'ABOBORA')and (Edit3.Text<> 'lilas') and (Edit3.Text<> 'Lilas')and (Edit3.Text<> 'LILAS')and (Edit3.Text<> 'vermelho') and (Edit3.Text<> 'Vermelho') and (Edit3.Text<> 'VERMELHO')and (Edit3.Text<>'laranja') and (Edit3.Text<>'Laranja')and (Edit3.Text<>'LARANJA')and (Edit3.Text<>'amarelo') and (Edit3.Text<>'Amarelo')and (Edit3.Text<>'AMARELO')and (Edit3.Text<>'verde') and (Edit3.Text<>'Verde')and (Edit3.Text<>'VERDE')and (Edit3.Text<>'azul') and (Edit3.Text<>'Azul')and (Edit3.Text<>'AZUL')and (Edit3.Text<>'roxo')and (Edit3.Text<>'Roxo')and (Edit3.Text<>'ROXO') and (Edit3.Text<>'violeta') and (Edit3.Text<>'Violeta')and (Edit3.Text<>'VIOLETA')and (Edit3.Text<>'preto')and (Edit3.Text<>'Preto')and (Edit3.Text<>'PRETO')   and (Edit3.Text<>'cinza')  and (Edit3.Text<>'Cinza') and (Edit3.Text<>'CINZA')and (Edit3.Text<>'branco')and (Edit3.Text<>'Branco') then
  begin
  Edit3.Text:='Cor n�o dispon�vel na faixa';
  Edit3.SelectAll;
  end;
end;




procedure TForm2.Button1Click(Sender: TObject);
begin
     Form2:=nil;
      hide;
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      Edit4.Text:='';
      Edit5.Text:='';
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
    Edit1.text:='';
    Edit2.text:='';
    Edit3.text:='';
    Edit4.text:='';
    Edit5.text:='';

    label7.text:='';
    label8.text:='';
    label9.text:='';
    label10.text:='';

    timer4.Enabled:=false;
    Edit2.visible:=false;
    Edit3.visible:=false;
    Edit4.visible:=false;
    Edit5.visible:=false;
    //Edit6.visible:=false;

    label3.Visible:=false;
    label4.Visible:=false;
    label5.Visible:=false;
    label6.Visible:=false;
    label7.Visible:=false;
    label8.Visible:=false;
    label9.Visible:=false;
    label10.Visible:=false;
    //label11.Visible:=false;
    //label12.Visible:=false;
end;

{procedure TForm2.Edit1Change(Sender: TObject);
{begin
If (Edit1.Text<>'marrom') and (Edit1.Text<> 'vermelho') and (Edit1.Text<>'laranja') and (Edit1.Text<>'amarelo') and (Edit1.Text<>'verde') and (Edit1.Text<>'azul') and (Edit1.Text<>'roxo') and (Edit1.Text<>'violeta') and (Edit1.Text<>'preto') and (Edit1.Text<>'cinza') and (Edit1.Text<>'branco') then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';

end;}
{If (Edit1.Text<>'vermelho') then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
If (Edit1.Text<>'laranja') then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
If (Edit1.Text<>'amarelo') then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
If (Edit1.Text<>'verde') then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
If (Edit1.Text<>'azul') then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
If (Edit1.Text<>'roxo')  then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
If (Edit1.Text<>'violeta')  then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
If (Edit1.Text<>'preto') then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
If (Edit1.Text<>'cinza') then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
If (Edit1.Text<>'branco') then
begin
Edit1.Text:='Cor n�o dispon�vel na faixa';
end;
end; }









procedure TForm2.Edit1Exit(Sender: TObject);
begin
If (Edit1.Text<>'marrom') and (Edit1.Text<> 'Marrom')and (Edit1.Text<> 'MARROM') and (Edit1.Text<> 'abobora')and (Edit1.Text<> 'Abobora')and (Edit1.Text<> 'ABOBORA')and (Edit1.Text<> 'lilas') and (Edit1.Text<> 'Lilas')and (Edit1.Text<> 'LILAS')and (Edit1.Text<> 'vermelho') and (Edit1.Text<> 'Vermelho') and (Edit1.Text<> 'VERMELHO')and (Edit1.Text<>'laranja') and (Edit1.Text<>'Laranja')and (Edit1.Text<>'LARANJA')and (Edit1.Text<>'amarelo') and (Edit1.Text<>'Amarelo')and (Edit1.Text<>'AMARELO')and (Edit1.Text<>'verde') and (Edit1.Text<>'Verde')and (Edit1.Text<>'VERDE')and (Edit1.Text<>'azul') and (Edit1.Text<>'Azul')and (Edit1.Text<>'AZUL')and (Edit1.Text<>'roxo')and (Edit1.Text<>'Roxo')and (Edit1.Text<>'ROXO') and (Edit1.Text<>'violeta') and (Edit1.Text<>'Violeta')and (Edit1.Text<>'VIOLETA')and (Edit1.Text<>'preto')and (Edit1.Text<>'Preto')and (Edit1.Text<>'PRETO')   and (Edit1.Text<>'cinza')  and (Edit1.Text<>'Cinza') and (Edit1.Text<>'CINZA')and (Edit1.Text<>'branco')and (Edit1.Text<>'Branco')and (Edit1.Text<>'BRANCO') then
  begin
  Edit1.Text:='Cor n�o dispon�vel na faixa';
  Edit1.SelectAll;
end;
end;

procedure TForm2.Edit1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);

var
texto1: string;

begin
texto1:=Edit1.Text;

Edit1.Text:=lowercase(Edit1.Text);

Edit1.Text:=StringReplace(texto1,' ',EmptyStr,[rfReplaceAll]);
Edit1.Text:=removeAcentos(texto1);
 {thetext := Edit1.Text;
 Edit1.Text:=AnsiLowerCase(thetext);
 Edit1.GoToTextEnd;}

if(Edit1.Text.Length > 0) then
begin
  button2.Visible:=true;
end;


if(Edit1.Text.Length > 2) then
begin
  Edit2.Visible:=true;
  //Edit2.setfocus;
  label3.Visible:=true;
end;


 //em ingles
If (Edit1.Text='Maroon') then
begin
Edit1.text:='marrom';

end

else If (Edit1.Text='Red') then
begin
Edit1.text:='vermelho';
end

else If (Edit1.Text='Orange') then
begin
Edit1.text:='laranja';
end

else If (Edit1.Text='Yellow') then
begin
Edit1.text:='amarelo';
end

else If (Edit1.Text='Green') then
begin
Edit1.text:='verde';
end

else If (Edit1.Text='Blue') then
begin
Edit1.text:='azul';
end

else If (Edit1.Text='Purple')  then
begin
Edit1.text:='roxo';
end


else If (Edit1.Text='Black') then
begin
Edit1.text:='preto';
end

else If (Edit1.Text='Gray') then
begin
Edit1.text:='cinza';
end

else If (Edit1.Text='White') then
begin
Edit1.text:='branco';
end;


 //em portugues
If (Edit1.Text='marrom')or (Edit1.Text='Marrom')or(Edit1.Text='MARROM') then
begin
Edit1.fontcolor:=talphacolorrec.Maroon;

end

else If (Edit1.Text='vermelho') or (Edit1.Text='Vermelho')or(Edit1.Text='VERMELHO')then
begin
Edit1.fontcolor:=talphacolorrec.red
end

else If (Edit1.Text='laranja') or (Edit1.Text='Laranja')or(Edit1.Text='LARANJA')then
begin
Edit1.fontcolor:=talphacolorrec.Orange
end

else If (Edit1.Text='amarelo') or (Edit1.Text='Amarelo')or(Edit1.Text='AMARELO')then
begin
Edit1.fontcolor:=talphacolorrec.yellow
end
else If (Edit1.Text='verde')or (Edit1.Text='Verde')or(Edit1.Text='VERDE')then
begin
Edit1.fontcolor:=talphacolorrec.Green
end

else If (Edit1.Text='azul')or(Edit1.Text='Azul')or(Edit1.Text='AZUL') then
begin
Edit1.fontcolor:=talphacolorrec.Blue
end

else If (Edit1.Text='roxo') or(Edit1.Text='Roxo')or(Edit1.Text='ROXO') then
begin
Edit1.fontcolor:=talphacolorrec.Purple
end

else If (Edit1.Text='violeta')or (Edit1.Text='Violeta')or(Edit1.Text='VIOLETA') then
begin
Edit1.fontcolor:=talphacolorrec.Purple
end
else If (Edit1.Text='preto') or(Edit1.Text='Preto')or(Edit1.Text='PRETO')then
begin
Edit1.fontcolor:=talphacolorrec.Black
end

else If (Edit1.Text='cinza') or(Edit1.Text='Cinza')or(Edit1.Text='CINZA')then
begin
Edit1.fontcolor:=talphacolorrec.Gray
end

else If (Edit1.Text='lilas')or(Edit1.Text='Lilas')or(Edit1.Text='LILAS') then
begin
Edit1.fontcolor:=talphacolorrec.purple
end

else If (Edit1.Text='abobora')or(Edit1.Text='Abobora')or(Edit1.Text='ABOBORA') then
begin
Edit1.fontcolor:=talphacolorrec.orange
end

else If (Edit1.Text='branco') or(Edit1.Text='Branco')or(Edit1.Text='BRANCO')then
begin
Edit1.fontcolor:=talphacolorrec.lightgray;
end;

end;





procedure TForm2.Edit1Typing(Sender: TObject);
var
texto1: string;

begin
texto1:=Edit1.Text;



Edit1.Text:=StringReplace(texto1,' ',EmptyStr,[rfReplaceAll]);


Edit1.Text:=removeAcentos(texto1);
Edit1.Text:=lowercase(Edit1.Text);
 {thetext := Edit1.Text;
 Edit1.Text:=AnsiLowerCase(thetext);
 Edit1.GoToTextEnd;}

if(Edit1.Text.Length > 0) then
begin
  button2.Visible:=true;
end;


if(Edit1.Text.Length > 2) then
begin
  Edit2.Visible:=true;
  //Edit2.setfocus;
  label3.Visible:=true;


end;


 //em ingles
If (Edit1.Text='maroon') then
begin
Edit1.text:='marrom';

end

else If (Edit1.Text='red') then
begin
Edit1.text:='vermelho';
end

else If (Edit1.Text='orange') then
begin
Edit1.text:='laranja';
end

else If (Edit1.Text='yellow') then
begin
Edit1.text:='amarelo';
end

else If (Edit1.Text='green') then
begin
Edit1.text:='verde';
end

else If (Edit1.Text='blue') then
begin
Edit1.text:='azul';
end

else If (Edit1.Text='purple')  then
begin
Edit1.text:='roxo';
end


else If (Edit1.Text='black') then
begin
Edit1.text:='preto';
end

else If (Edit1.Text='gray') then
begin
Edit1.text:='cinza';
end

else If (Edit1.Text='white') then
begin
Edit1.text:='branco';
end;


 //em portugues
If (Edit1.Text='marrom')or (Edit1.Text='Marrom')or(Edit1.Text='MARROM') then
begin
Edit1.fontcolor:=talphacolorrec.Maroon;

end

else If (Edit1.Text='vermelho') or (Edit1.Text='Vermelho')or(Edit1.Text='VERMELHO')then
begin
Edit1.fontcolor:=talphacolorrec.red
end

else If (Edit1.Text='laranja') or (Edit1.Text='Laranja')or(Edit1.Text='LARANJA')then
begin
Edit1.fontcolor:=talphacolorrec.Orange
end

else If (Edit1.Text='amarelo') or (Edit1.Text='Amarelo')or(Edit1.Text='AMARELO')then
begin
Edit1.fontcolor:=talphacolorrec.yellow
end
else If (Edit1.Text='verde')or (Edit1.Text='Verde')or(Edit1.Text='VERDE')then
begin
Edit1.fontcolor:=talphacolorrec.Green
end

else If (Edit1.Text='azul')or(Edit1.Text='Azul')or(Edit1.Text='AZUL') then
begin
Edit1.fontcolor:=talphacolorrec.Blue
end

else If (Edit1.Text='roxo') or(Edit1.Text='Roxo')or(Edit1.Text='ROXO') then
begin
Edit1.fontcolor:=talphacolorrec.Purple
end

else If (Edit1.Text='violeta')or (Edit1.Text='Violeta')or(Edit1.Text='VIOLETA') then
begin
Edit1.fontcolor:=talphacolorrec.Purple
end
else If (Edit1.Text='preto') or(Edit1.Text='Preto')or(Edit1.Text='PRETO')then
begin
Edit1.fontcolor:=talphacolorrec.Black
end

else If (Edit1.Text='cinza') or(Edit1.Text='Cinza')or(Edit1.Text='CINZA')then
begin
Edit1.fontcolor:=talphacolorrec.Gray
end

else If (Edit1.Text='lilas')or(Edit1.Text='Lilas')or(Edit1.Text='LILAS') then
begin
Edit1.fontcolor:=talphacolorrec.purple
end

else If (Edit1.Text='abobora')or(Edit1.Text='Abobora')or(Edit1.Text='ABOBORA') then
begin
Edit1.fontcolor:=talphacolorrec.orange
end

else If (Edit1.Text='branco') or(Edit1.Text='Branco')or(Edit1.Text='BRANCO')then
begin
Edit1.fontcolor:=talphacolorrec.lightgray;
end;

end;












procedure TForm2.Edit2Exit(Sender: TObject);
begin
If (Edit2.Text<>'marrom') and (Edit2.Text<> 'Marrom')and (Edit2.Text<> 'MARROM') and (Edit2.Text<> 'abobora')and (Edit2.Text<> 'Abobora')and (Edit2.Text<> 'ABOBORA')and (Edit2.Text<> 'lilas') and (Edit2.Text<> 'Lilas')and (Edit2.Text<> 'LILAS')and (Edit2.Text<> 'vermelho') and (Edit2.Text<> 'Vermelho') and (Edit2.Text<> 'VERMELHO')and (Edit2.Text<>'laranja') and (Edit2.Text<>'Laranja')and (Edit2.Text<>'LARANJA')and (Edit2.Text<>'amarelo') and (Edit2.Text<>'Amarelo')and (Edit2.Text<>'AMARELO')and (Edit2.Text<>'verde') and (Edit2.Text<>'Verde')and (Edit2.Text<>'VERDE')and (Edit2.Text<>'azul') and (Edit2.Text<>'Azul')and (Edit2.Text<>'AZUL')and (Edit2.Text<>'roxo')and (Edit2.Text<>'Roxo')and (Edit2.Text<>'ROXO') and (Edit2.Text<>'violeta') and (Edit2.Text<>'Violeta')and (Edit2.Text<>'VIOLETA')and (Edit2.Text<>'preto')and (Edit2.Text<>'Preto')and (Edit2.Text<>'PRETO')   and (Edit2.Text<>'cinza')  and (Edit2.Text<>'Cinza') and (Edit2.Text<>'CINZA')and (Edit1.Text<>'branco')and (Edit2.Text<>'Branco') then
begin
  Edit2.Text:='Cor n�o dispon�vel na faixa';
  Edit2.SelectAll;

end;
end;

procedure TForm2.Edit2KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);

var
texto2: string;
texto1: string;
//thetext2:string;


begin
texto1:=Edit1.Text;
//TEXTO1:=EDIT1.TEXT;
texto2:=Edit2.Text;
Edit2.Text:=minusculo(Edit2.Text);

Edit2.Text:=StringReplace(texto2,' ',EmptyStr,[rfReplaceAll]);
Edit2.Text:=removeAcentos(texto2);
 {thetext2 := Edit2.Text;
 Edit2.Text:=AnsiLowerCase(thetext2);
 Edit2.GoToTextEnd; }




begin
if(Edit2.Text.Length > 2) then
begin
  Edit3.Visible:=true;
  //Edit3.setfocus;
  label4.Visible:=true;
end;
{if (texto1 <> 'amarelo') or (texto1 <> 'azul') or  (texto1 <>'branco') or  (texto1 <>'cinza') or  (texto1 <>'vermelho') or  (texto1 <>'laranja') or  (texto1 <>'roxo') or  (texto1 <>'violeta') or  (texto1 <>'lilas') or  (texto1 <>'lilas') or (texto1 <>'verde') or  (texto1 <>'preto') or  (texto1 <>'marrom')OR (texto1 <> 'AMARELO') OR (texto1 <> 'AZUL') OR  (texto1 <>'BRANCO') OR  (texto1 <>'CINZA') OR  (texto1 <>'VERMELHO') OR  (texto1 <>'LARANJA') OR  (texto1 <>'ROXO') OR  (texto1 <>'VIOLETA') OR  (texto1 <>'LILAS') OR  (texto1 <>'lilas') OR (texto1 <>'VERDE') OR  (texto1 <>'PRETO') OR  (texto1 <>'MARROM') then
 begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
 end
else }

 //em ingles
If (Edit2.Text='Maroon') then
begin
Edit2.text:='marrom';

end

else If (Edit2.Text='Red') then
begin
Edit2.text:='vermelho';
end

else If (Edit2.Text='Orange') then
begin
Edit2.text:='laranja';
end

else If (Edit2.Text='Yellow') then
begin
Edit2.text:='amarelo';
end

else If (Edit2.Text='Green') then
begin
Edit2.text:='verde';
end

else If (Edit2.Text='Blue') then
begin
Edit2.text:='azul';
end

else If (Edit2.Text='Purple')  then
begin
Edit2.text:='roxo';
end


else If (Edit2.Text='Black') then
begin
Edit2.text:='preto';
end

else If (Edit2.Text='Gray') then
begin
Edit2.text:='cinza';
end

else If (Edit2.Text='White') then
begin
Edit2.text:='branco';
end;


//em portugues
If (Edit2.Text='marrom') or (Edit2.Text='Marrom')or(Edit2.Text='MARROM')then
begin
Edit2.fontcolor:=talphacolorrec.Maroon;
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='vermelho')or (Edit2.Text='Vermelho')or(Edit2.Text='VERMELHO') then
begin
Edit2.fontcolor:=talphacolorrec.Red
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }
else If (Edit2.Text='laranja') or (Edit2.Text='Laranja')or(Edit2.Text='LARANJA') then
begin
Edit2.fontcolor:=talphacolorrec.Orange
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}
else If (Edit2.Text='amarelo')or (Edit2.Text='Amarelo')or(Edit2.Text='AMARELO') then
begin
Edit2.fontcolor:=talphacolorrec.Yellow
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='verde')or (Edit2.Text='Verde')or(Edit2.Text='VERDE') then
begin
Edit2.fontcolor:=talphacolorrec.Green
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='azul')or(Edit2.Text='Azul')or(Edit2.Text='AZUL') then
begin
Edit2.fontcolor:=talphacolorrec.Blue
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='roxo') or(Edit2.Text='Roxo')or(Edit2.Text='ROXO')  then
begin
Edit2.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}

else If (Edit2.Text='violeta') or (Edit2.Text='Violeta')or(Edit2.Text='VIOLETA') then
begin
Edit2.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit2.Text='preto') or(Edit2.Text='Preto')or(Edit2.Text='PRETO')then
begin
Edit2.fontcolor:=talphacolorrec.Black
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='cinza') or(Edit2.Text='Cinza')or(Edit2.Text='CINZA')then
begin
Edit2.fontcolor:=talphacolorrec.Gray
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit2.Text='lilas')or(Edit2.Text='Lilas')or(Edit2.Text='LILAS')  then
begin
Edit2.fontcolor:=talphacolorrec.purple
end

else If (Edit2.Text='abobora')or(Edit2.Text='Abobora')or(Edit2.Text='ABOBORA') then
begin
Edit2.fontcolor:=talphacolorrec.orange
end

else If (Edit2.Text='branco')or(Edit2.Text='Branco')or(Edit2.Text='BRANCO') then
begin
Edit2.fontcolor:=talphacolorrec.lightgray
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

end;


{IF (TEXTO1 <> 'AMARELO') OR (TEXTO1 <> 'AZUL') OR  (TEXTO1 <>'BRANCO') OR  (TEXTO1 <>'CINZA') OR  (TEXTO1 <>'VERMELHO') OR  (TEXTO1 <>'LARANJA') OR  (TEXTO1 <>'ROXO') OR  (TEXTO1 <>'VIOLETA') OR  (TEXTO1 <>'LILAS') OR  (TEXTO1 <>'lilas') OR (TEXTO1 <>'VERDE') OR  (TEXTO1 <>'PRETO') OR  (TEXTO1 <>'MARROM') THEN
 BEGIN
   EDIT1.TEXT:='ESSA COR N�O EXISTE NOS C�DIGOS'

END;   }


end;










procedure TForm2.Edit2Typing(Sender: TObject);
var
texto2: string;
texto1: string;
//thetext2:string;


begin
texto1:=Edit1.Text;
//TEXTO1:=EDIT1.TEXT;
texto2:=Edit2.Text;


Edit2.Text:=StringReplace(texto2,' ',EmptyStr,[rfReplaceAll]);


Edit2.Text:=removeAcentos(texto2);
Edit2.Text:=lowercase(Edit2.Text);
 {thetext2 := Edit2.Text;
 Edit2.Text:=AnsiLowerCase(thetext2);
 Edit2.GoToTextEnd; }




begin
if(Edit2.Text.Length > 2) then
begin
  Edit3.Visible:=true;
  //Edit3.setfocus;
  label4.Visible:=true;


end;
{if (texto1 <> 'amarelo') or (texto1 <> 'azul') or  (texto1 <>'branco') or  (texto1 <>'cinza') or  (texto1 <>'vermelho') or  (texto1 <>'laranja') or  (texto1 <>'roxo') or  (texto1 <>'violeta') or  (texto1 <>'lilas') or  (texto1 <>'lilas') or (texto1 <>'verde') or  (texto1 <>'preto') or  (texto1 <>'marrom')OR (texto1 <> 'AMARELO') OR (texto1 <> 'AZUL') OR  (texto1 <>'BRANCO') OR  (texto1 <>'CINZA') OR  (texto1 <>'VERMELHO') OR  (texto1 <>'LARANJA') OR  (texto1 <>'ROXO') OR  (texto1 <>'VIOLETA') OR  (texto1 <>'LILAS') OR  (texto1 <>'lilas') OR (texto1 <>'VERDE') OR  (texto1 <>'PRETO') OR  (texto1 <>'MARROM') then
 begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
 end
else }

 //em ingles
If (Edit2.Text='maroon') then
begin
Edit2.text:='marrom';

end

else If (Edit2.Text='red') then
begin
Edit2.text:='vermelho';
end

else If (Edit2.Text='orange') then
begin
Edit2.text:='laranja';
end

else If (Edit2.Text='yellow') then
begin
Edit2.text:='amarelo';
end

else If (Edit2.Text='green') then
begin
Edit2.text:='verde';
end

else If (Edit2.Text='blue') then
begin
Edit2.text:='azul';
end

else If (Edit2.Text='purple')  then
begin
Edit2.text:='roxo';
end


else If (Edit2.Text='black') then
begin
Edit2.text:='preto';
end

else If (Edit2.Text='gray') then
begin
Edit2.text:='cinza';
end

else If (Edit2.Text='white') then
begin
Edit2.text:='branco';
end;


//em portugues
If (Edit2.Text='marrom') or (Edit2.Text='Marrom')or(Edit2.Text='MARROM')then
begin
Edit2.fontcolor:=talphacolorrec.Maroon;
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='vermelho')or (Edit2.Text='Vermelho')or(Edit2.Text='VERMELHO') then
begin
Edit2.fontcolor:=talphacolorrec.Red
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }
else If (Edit2.Text='laranja') or (Edit2.Text='Laranja')or(Edit2.Text='LARANJA') then
begin
Edit2.fontcolor:=talphacolorrec.Orange
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}
else If (Edit2.Text='amarelo')or (Edit2.Text='Amarelo')or(Edit2.Text='AMARELO') then
begin
Edit2.fontcolor:=talphacolorrec.Yellow
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='verde')or (Edit2.Text='Verde')or(Edit2.Text='VERDE') then
begin
Edit2.fontcolor:=talphacolorrec.Green
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='azul')or(Edit2.Text='Azul')or(Edit2.Text='AZUL') then
begin
Edit2.fontcolor:=talphacolorrec.Blue
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='roxo') or(Edit2.Text='Roxo')or(Edit2.Text='ROXO')  then
begin
Edit2.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}

else If (Edit2.Text='violeta') or (Edit2.Text='Violeta')or(Edit2.Text='VIOLETA') then
begin
Edit2.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit2.Text='preto') or(Edit2.Text='Preto')or(Edit2.Text='PRETO')then
begin
Edit2.fontcolor:=talphacolorrec.Black
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit2.Text='cinza') or(Edit2.Text='Cinza')or(Edit2.Text='CINZA')then
begin
Edit2.fontcolor:=talphacolorrec.Gray
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit2.Text='lilas')or(Edit2.Text='Lilas')or(Edit2.Text='LILAS')  then
begin
Edit2.fontcolor:=talphacolorrec.purple
end

else If (Edit2.Text='abobora')or(Edit2.Text='Abobora')or(Edit2.Text='ABOBORA') then
begin
Edit2.fontcolor:=talphacolorrec.orange
end

else If (Edit2.Text='branco')or(Edit2.Text='Branco')or(Edit2.Text='BRANCO') then
begin
Edit2.fontcolor:=talphacolorrec.lightgray
end
end;

end;








procedure TForm2.Edit3KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);

var
texto3: string;
texto2: string;

//thetext3:string;

begin
texto2:=Edit2.Text;
//TEXTO2:=EDIT1.TEXT;
texto3:=Edit3.Text;
Edit3.Text:=minusculo(Edit3.Text);

Edit3.Text:=StringReplace(texto3,' ',EmptyStr,[rfReplaceAll]);
Edit3.Text:=removeAcentos(texto3);
// thetext3 := Edit3.Text;
 //Edit3.Text:=AnsiUpperCase(thetext3);
// Edit3.GoToTextEnd;

begin
    if(Edit3.Text.Length > 2) then
begin
  Edit4.Visible:=true;
  //Edit4.setfocus;
  label5.Visible:=true;
end;
{if (texto2 <> 'amarelo') or (texto2 <> 'azul') or  (texto2 <>'branco') or  (texto2 <>'cinza') or  (texto2 <>'vermelho') or  (texto2 <>'laranja') or  (texto2 <>'roxo') or  (texto2 <>'violeta') or  (texto2 <>'lilas') or  (texto2 <>'lilas') or (texto2 <>'verde') or  (texto2 <>'preto') or  (texto2 <>'marrom') or (TEXTO2 <> 'AMARELO') OR (TEXTO2 <> 'AZUL') OR  (TEXTO2 <>'BRANCO') OR  (TEXTO2 <>'CINZA') OR  (TEXTO2 <>'VERMELHO') OR  (TEXTO2 <>'LARANJA') OR  (TEXTO2 <>'ROXO') OR  (TEXTO2 <>'VIOLETA') OR  (TEXTO2 <>'LILAS') OR  (TEXTO2 <>'lilas') OR (TEXTO2 <>'VERDE') OR  (TEXTO2 <>'PRETO') OR  (TEXTO2 <>'MARROM')then
 begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
 end
else }

 //em ingles
If (Edit3.Text='Maroon') then
begin
Edit3.text:='marrom';

end

else If (Edit3.Text='Red') then
begin
Edit3.text:='vermelho';
end

else If (Edit3.Text='Orange') then
begin
Edit3.text:='laranja';
end

else If (Edit3.Text='Yellow') then
begin
Edit3.text:='amarelo';
end

else If (Edit3.Text='Green') then
begin
Edit3.text:='verde';
end

else If (Edit3.Text='Blue') then
begin
Edit3.text:='azul';
end

else If (Edit3.Text='Purple')  then
begin
Edit3.text:='roxo';
end


else If (Edit3.Text='Black') then
begin
Edit3.text:='preto';
end

else If (Edit3.Text='Gray') then
begin
Edit3.text:='cinza';
end

else If (Edit3.Text='White') then
begin
Edit3.text:='branco';
end;





//em portugues
If (Edit3.Text='marrom') or (Edit3.Text='Marrom')or(Edit3.Text='MARROM')then
begin
Edit3.fontcolor:=talphacolorrec.Maroon
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='vermelho')or (Edit3.Text='Vermelho')or(Edit3.Text='VERMELHO') then
begin
Edit3.fontcolor:=talphacolorrec.Red
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }
else If (Edit3.Text='laranja') or (Edit3.Text='Laranja')or(Edit3.Text='LARANJA') then
begin
Edit3.fontcolor:=talphacolorrec.Orange
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}
else If (Edit3.Text='amarelo')or (Edit3.Text='Amarelo')or(Edit3.Text='AMARELO') then
begin
Edit3.fontcolor:=talphacolorrec.Yellow
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='verde')or (Edit3.Text='Verde')or(Edit3.Text='VERDE') then
begin
Edit3.fontcolor:=talphacolorrec.Green
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='azul')or(Edit3.Text='Azul')or(Edit3.Text='AZUL') then
begin
Edit3.fontcolor:=talphacolorrec.Blue
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='roxo') or(Edit3.Text='Roxo')or(Edit3.Text='ROXO')  then
begin
Edit3.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}

else If (Edit3.Text='violeta') or (Edit3.Text='Violeta')or(Edit3.Text='VIOLETA') then
begin
Edit3.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit3.Text='preto') or(Edit3.Text='Preto')or(Edit3.Text='PRETO')then
begin
Edit3.fontcolor:=talphacolorrec.Black
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='cinza') or(Edit3.Text='Cinza')or(Edit3.Text='CINZA')then
begin
Edit3.fontcolor:=talphacolorrec.Gray
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit3.Text='lilas')or(Edit3.Text='Lilas')or(Edit3.Text='LILAS')  then
begin
Edit3.fontcolor:=talphacolorrec.purple
end

else If (Edit3.Text='abobora')or(Edit3.Text='Abobora')or(Edit3.Text='ABOBORA') then
begin
Edit3.fontcolor:=talphacolorrec.orange
end

else If (Edit3.Text='branco')or(Edit3.Text='Branco')or(Edit3.Text='BRANCO') then
begin
Edit3.fontcolor:=talphacolorrec.lightgray
end
end;



{IF (TEXTO2 <> 'AMARELO') OR (TEXTO2 <> 'AZUL') OR  (TEXTO2 <>'BRANCO') OR  (TEXTO2 <>'CINZA') OR  (TEXTO2 <>'VERMELHO') OR  (TEXTO2 <>'LARANJA') OR  (TEXTO2 <>'ROXO') OR  (TEXTO2 <>'VIOLETA') OR  (TEXTO2 <>'LILAS') OR  (TEXTO2 <>'lilas') OR (TEXTO2 <>'VERDE') OR  (TEXTO2 <>'PRETO') OR  (TEXTO2 <>'MARROM') THEN
 BEGIN
   EDIT2.TEXT:='ESSA COR N�O EXISTE NOS C�DIGOS'

END;       }



end;

procedure TForm2.Edit3Typing(Sender: TObject);
var
texto3: string;
texto2: string;

//thetext3:string;

begin
texto2:=Edit2.Text;
//TEXTO2:=EDIT1.TEXT;
texto3:=Edit3.Text;


Edit3.Text:=StringReplace(texto3,' ',EmptyStr,[rfReplaceAll]);


Edit3.Text:=removeAcentos(texto3);
Edit3.Text:=lowercase(Edit3.Text);
// thetext3 := Edit3.Text;
 //Edit3.Text:=AnsiUpperCase(thetext3);
// Edit3.GoToTextEnd;


if(Edit3.Text.Length > 2) then
begin
  Edit4.Visible:=true;
  //Edit4.setfocus;
  label5.Visible:=true;


end;
{if (texto2 <> 'amarelo') or (texto2 <> 'azul') or  (texto2 <>'branco') or  (texto2 <>'cinza') or  (texto2 <>'vermelho') or  (texto2 <>'laranja') or  (texto2 <>'roxo') or  (texto2 <>'violeta') or  (texto2 <>'lilas') or  (texto2 <>'lilas') or (texto2 <>'verde') or  (texto2 <>'preto') or  (texto2 <>'marrom') or (TEXTO2 <> 'AMARELO') OR (TEXTO2 <> 'AZUL') OR  (TEXTO2 <>'BRANCO') OR  (TEXTO2 <>'CINZA') OR  (TEXTO2 <>'VERMELHO') OR  (TEXTO2 <>'LARANJA') OR  (TEXTO2 <>'ROXO') OR  (TEXTO2 <>'VIOLETA') OR  (TEXTO2 <>'LILAS') OR  (TEXTO2 <>'lilas') OR (TEXTO2 <>'VERDE') OR  (TEXTO2 <>'PRETO') OR  (TEXTO2 <>'MARROM')then
 begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
 end
else }

 //em ingles
If (Edit3.Text='maroon') then
begin
Edit3.text:='marrom';

end

else If (Edit3.Text='red') then
begin
Edit3.text:='vermelho';
end

else If (Edit3.Text='orange') then
begin
Edit3.text:='laranja';
end

else If (Edit3.Text='yellow') then
begin
Edit3.text:='amarelo';
end

else If (Edit3.Text='green') then
begin
Edit3.text:='verde';
end

else If (Edit3.Text='blue') then
begin
Edit3.text:='azul';
end

else If (Edit3.Text='purple')  then
begin
Edit3.text:='roxo';
end


else If (Edit3.Text='black') then
begin
Edit3.text:='preto';
end

else If (Edit3.Text='gray') then
begin
Edit3.text:='cinza';
end

else If (Edit3.Text='white') then
begin
Edit3.text:='branco';
end;





//em portugues
If (Edit3.Text='marrom') or (Edit3.Text='Marrom')or(Edit3.Text='MARROM')then
begin
Edit3.fontcolor:=talphacolorrec.Maroon
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='vermelho')or (Edit3.Text='Vermelho')or(Edit3.Text='VERMELHO') then
begin
Edit3.fontcolor:=talphacolorrec.Red
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }
else If (Edit3.Text='laranja') or (Edit3.Text='Laranja')or(Edit3.Text='LARANJA') then
begin
Edit3.fontcolor:=talphacolorrec.Orange
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}
else If (Edit3.Text='amarelo')or (Edit3.Text='Amarelo')or(Edit3.Text='AMARELO') then
begin
Edit3.fontcolor:=talphacolorrec.Yellow
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='verde')or (Edit3.Text='Verde')or(Edit3.Text='VERDE') then
begin
Edit3.fontcolor:=talphacolorrec.Green
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='azul')or(Edit3.Text='Azul')or(Edit3.Text='AZUL') then
begin
Edit3.fontcolor:=talphacolorrec.Blue
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='roxo') or(Edit3.Text='Roxo')or(Edit3.Text='ROXO')  then
begin
Edit3.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}

else If (Edit3.Text='violeta') or (Edit3.Text='Violeta')or(Edit3.Text='VIOLETA') then
begin
Edit3.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit3.Text='preto') or(Edit3.Text='Preto')or(Edit3.Text='PRETO')then
begin
Edit3.fontcolor:=talphacolorrec.Black
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit3.Text='cinza') or(Edit3.Text='Cinza')or(Edit3.Text='CINZA')then
begin
Edit3.fontcolor:=talphacolorrec.Gray
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit3.Text='lilas')or(Edit3.Text='Lilas')or(Edit3.Text='LILAS')  then
begin
Edit3.fontcolor:=talphacolorrec.purple
end

else If (Edit3.Text='abobora')or(Edit3.Text='Abobora')or(Edit3.Text='ABOBORA') then
begin
Edit3.fontcolor:=talphacolorrec.orange
end

else If (Edit3.Text='branco')or(Edit3.Text='Branco')or(Edit3.Text='BRANCO') then
begin
Edit3.fontcolor:=talphacolorrec.lightgray
end
end;







{procedure TForm2.Edit4KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var
texto4:string;
begin
texto4:=Edit4.Text;
if (texto4 <> 'ouro') or (texto4 <> 'prata') or  (texto4 <>'marrom') or  (texto4 <>'vermelho') or  (texto4 <>'cinza') or  (texto4 <>'preto') then
 begin
   Edit4.Text:='Essa cor n�o existe nos c�digos'

 end;
end; }








procedure TForm2.Edit4Exit(Sender: TObject);
begin
If (Edit4.Text<>'marrom')and (Edit2.Text<> 'Marrom')and (Edit2.Text<> 'MARROM') and (Edit2.Text<> 'nenhum')and (Edit2.Text<> 'Nenhum')and (Edit2.Text<> 'NENHUM') and (Edit2.Text<> '"nenhum"')and (Edit2.Text<> '"Nenhum"')and (Edit2.Text<> '"NENHUM"') and (Edit4.Text<> 'ouro') and (Edit4.Text<> 'Ouro')and (Edit4.Text<> 'OURO')and (Edit4.Text<> 'prata') and (Edit4.Text<> 'Prata')and (Edit4.Text<> 'PRATA')and (Edit4.Text<> 'vermelho') and (Edit4.Text<> 'Vermelho')and (Edit4.Text<> 'VERMELHO') and (Edit4.Text<>'preto') and (Edit4.Text<>'Preto')and (Edit4.Text<>'PRETO') then
  begin
  Edit4.Text:='Cor n�o dispon�vel na faixa';
  Edit2.SelectAll;
end;
end;

procedure TForm2.Edit4KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);

var
texto4: string;
texto3: string;
//thetext4:string;

begin
texto3:=Edit3.Text;
texto4:=Edit4.Text;
Edit4.Text:=minusculo(Edit4.Text);
Edit4.Text:=StringReplace(texto4,' ',EmptyStr,[rfReplaceAll]);
Edit4.Text:=removeAcentos(texto4);



//Timer1.Enabled:=true;


begin
texto4:=Edit4.Text;
Edit4.Text:=StringReplace(texto4,' ',EmptyStr,[rfReplaceAll]);
Edit4.Text:=removeAcentos(texto4);

if(Edit4.Text.Length > 2) then
begin
  Edit5.Visible:=true;
  label6.Visible:=true;
end;
{if (texto3 <> 'amarelo') or (texto3 <> 'azul') or  (texto3 <>'branco') or  (texto3 <>'cinza') or  (texto3 <>'vermelho') or  (texto3 <>'laranja') or  (texto3 <>'roxo') or  (texto3 <>'violeta') or  (texto3 <>'lilas') or  (texto3 <>'lilas') or (texto3 <>'verde') or  (texto3 <>'preto') or  (texto3 <>'marrom') or (TEXTO3 <> 'AMARELO') OR (TEXTO3 <> 'AZUL') OR  (TEXTO3 <>'BRANCO') OR  (TEXTO3 <>'CINZA') OR  (TEXTO3 <>'VERMELHO') OR  (TEXTO3 <>'LARANJA') OR  (TEXTO3 <>'ROXO') OR  (TEXTO3 <>'VIOLETA') OR  (TEXTO3 <>'LILAS') OR  (TEXTO3 <>'lilas') OR (TEXTO3 <>'VERDE') OR  (TEXTO3 <>'PRETO') OR  (TEXTO3 <>'MARROM')then
 begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
 end
else  }
 //em ingles
If (Edit4.Text='Maroon') then
begin
Edit4.text:='marrom';

end

else If (Edit4.Text='Red') then
begin
Edit4.text:='vermelho';
end

else If (Edit4.Text='Orange') then
begin
Edit4.text:='laranja';
end

else If (Edit4.Text='Yellow') then
begin
Edit4.text:='amarelo';
end

else If (Edit4.Text='Green') then
begin
Edit4.text:='verde';
end

else If (Edit4.Text='Blue') then
begin
Edit4.text:='azul';
end

else If (Edit4.Text='Purple')  then
begin
Edit4.text:='roxo';
end


else If (Edit4.Text='Black') then
begin
Edit4.text:='preto';
end

else If (Edit4.Text='Gray') then
begin
Edit4.text:='cinza';
end

else If (Edit4.Text='Gold') then
begin
Edit4.text:='ouro';
end

else If (Edit4.Text='Silver') then
begin
Edit4.text:='prata';
end

else If (Edit4.Text='White') then
begin
Edit4.text:='branco';
end;




//em portugues
If (Edit4.Text='marrom') or (Edit4.Text='Marrom')or(Edit4.Text='MARROM')then
begin
Edit4.fontcolor:=talphacolorrec.Maroon;
end
else If (Edit4.Text='vermelho')or(Edit4.Text='Vermelho')or(Edit4.Text='VERMELHO') then
begin
Edit4.fontcolor:=talphacolorrec.Red
end
else If (Edit4.Text='laranja')or(Edit4.Text='Laranja')or(Edit4.Text='Laranja') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False

end
else If (Edit4.Text='amarelo') or(Edit4.Text='Amarelo')or(Edit4.Text='AMARELO')then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end
else If (Edit4.Text='verde')or(Edit4.Text='Verde')or(Edit4.Text='VERDE') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:='';  }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end
else If (Edit4.Text='azul')or(Edit4.Text='Azul')or(Edit4.Text='AZUL') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:='';}
Timer1.Enabled:=False;
Timer2.Enabled:=False
end
else If (Edit4.Text='roxo')or(Edit4.Text='Roxo')or(Edit4.Text='ROXO')  then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='violeta')or(Edit4.Text='Violeta')or(Edit4.Text='VIOLETA')  then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='preto')or (Edit4.Text='Preto')or(Edit4.Text='PRETO')then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end
else If (Edit4.Text='cinza')or(Edit4.Text='Cinza')or(Edit4.Text='CINZA') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='lilas') or(Edit4.Text='Lilas')or(Edit4.Text='LILAS')then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='abobora') or(Edit4.Text='Abobora')or(Edit4.Text='ABOBORA')then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='branco')or(Edit4.Text='Branco')or(Edit4.Text='BRANCO') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:='';}
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='ouro')or(Edit4.Text='Ouro')or(Edit4.Text='OURO') then
begin
Edit4.fontcolor:=talphacolorrec.Yellow
end
else If (Edit4.Text='prata')or(Edit4.Text='Prata')or(Edit4.Text='PRATA') then
begin
Edit4.fontcolor:=talphacolorrec.Silver
end
else If (Edit4.Text='"nenhum"') or(Edit4.Text='"Nenhum"')or(Edit4.Text='"NENHUM"')then
begin
Timer1.Enabled:=true
end

else If (Edit4.Text='nenhum')or(Edit4.Text='Nenhum')or(Edit4.Text='NENHUM') then
begin
Timer1.Enabled:=true;
end;



 {IF (TEXTO3 <> 'AMARELO') OR (TEXTO3 <> 'AZUL') OR  (TEXTO3 <>'BRANCO') OR  (TEXTO3 <>'CINZA') OR  (TEXTO3 <>'VERMELHO') OR  (TEXTO3 <>'LARANJA') OR  (TEXTO3 <>'ROXO') OR  (TEXTO3 <>'VIOLETA') OR  (TEXTO3 <>'LILAS') OR  (TEXTO3 <>'lilas') OR (TEXTO3 <>'VERDE') OR  (TEXTO3 <>'PRETO') OR  (TEXTO3 <>'MARROM') THEN
 BEGIN
   EDIT3.TEXT:='ESSA COR N�O EXISTE NOS C�DIGOS'

 END; }

end;





end;

procedure TForm2.Edit4Typing(Sender: TObject);
var
texto4: string;
texto3: string;
//thetext4:string;

begin
texto3:=Edit3.Text;
texto4:=Edit4.Text;

Edit4.Text:=StringReplace(texto4,' ',EmptyStr,[rfReplaceAll]);

Edit4.Text:=removeAcentos(texto4);
Edit3.Text:=lowercase(Edit3.Text);



//Timer1.Enabled:=true;





if(Edit4.Text.Length > 2) then
begin
  Edit5.Visible:=true;
  label6.Visible:=true;
  Edit4.Text:=lowercase(Edit4.Text);

end;
{if (texto3 <> 'amarelo') or (texto3 <> 'azul') or  (texto3 <>'branco') or  (texto3 <>'cinza') or  (texto3 <>'vermelho') or  (texto3 <>'laranja') or  (texto3 <>'roxo') or  (texto3 <>'violeta') or  (texto3 <>'lilas') or  (texto3 <>'lilas') or (texto3 <>'verde') or  (texto3 <>'preto') or  (texto3 <>'marrom') or (TEXTO3 <> 'AMARELO') OR (TEXTO3 <> 'AZUL') OR  (TEXTO3 <>'BRANCO') OR  (TEXTO3 <>'CINZA') OR  (TEXTO3 <>'VERMELHO') OR  (TEXTO3 <>'LARANJA') OR  (TEXTO3 <>'ROXO') OR  (TEXTO3 <>'VIOLETA') OR  (TEXTO3 <>'LILAS') OR  (TEXTO3 <>'lilas') OR (TEXTO3 <>'VERDE') OR  (TEXTO3 <>'PRETO') OR  (TEXTO3 <>'MARROM')then
 begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
 end
else  }
 //em ingles
If (Edit4.Text='maroon') then
begin
Edit4.text:='marrom';

end

else If (Edit4.Text='red') then
begin
Edit4.text:='vermelho';
end

else If (Edit4.Text='orange') then
begin
Edit4.text:='laranja';
end

else If (Edit4.Text='yellow') then
begin
Edit4.text:='amarelo';
end

else If (Edit4.Text='green') then
begin
Edit4.text:='verde';
end

else If (Edit4.Text='blue') then
begin
Edit4.text:='azul';
end

else If (Edit4.Text='purple')  then
begin
Edit4.text:='roxo';
end


else If (Edit4.Text='black') then
begin
Edit4.text:='preto';
end

else If (Edit4.Text='gray') then
begin
Edit4.text:='cinza';
end

else If (Edit4.Text='gold') then
begin
Edit4.text:='ouro';
end

else If (Edit4.Text='silver') then
begin
Edit4.text:='prata';
end

else If (Edit4.Text='white') then
begin
Edit4.text:='branco';
end;




//em portugues
If (Edit4.Text='marrom') or (Edit4.Text='Marrom')or(Edit4.Text='MARROM')then
begin
Edit4.fontcolor:=talphacolorrec.Maroon;
end
else If (Edit4.Text='vermelho')or(Edit4.Text='Vermelho')or(Edit4.Text='VERMELHO') then
begin
Edit4.fontcolor:=talphacolorrec.Red
end
else If (Edit4.Text='laranja')or(Edit4.Text='Laranja')or(Edit4.Text='Laranja') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False

end
else If (Edit4.Text='amarelo') or(Edit4.Text='Amarelo')or(Edit4.Text='AMARELO')then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end
else If (Edit4.Text='verde')or(Edit4.Text='Verde')or(Edit4.Text='VERDE') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:='';  }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end
else If (Edit4.Text='azul')or(Edit4.Text='Azul')or(Edit4.Text='AZUL') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:='';}
Timer1.Enabled:=False;
Timer2.Enabled:=False
end
else If (Edit4.Text='roxo')or(Edit4.Text='Roxo')or(Edit4.Text='ROXO')  then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='violeta')or(Edit4.Text='Violeta')or(Edit4.Text='VIOLETA')  then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='preto')or (Edit4.Text='Preto')or(Edit4.Text='PRETO')then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end
else If (Edit4.Text='cinza')or(Edit4.Text='Cinza')or(Edit4.Text='CINZA') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='lilas') or(Edit4.Text='Lilas')or(Edit4.Text='LILAS')then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='abobora') or(Edit4.Text='Abobora')or(Edit4.Text='ABOBORA')then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:=''; }
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='branco')or(Edit4.Text='Branco')or(Edit4.Text='BRANCO') then
begin
Edit4.text:='Cor n�o dispon�vel nesta faixa';
Edit4.selectall;
{label7.text:='';
label8.text:='';
label9.text:='';
label10.text:='';


Edit3.Text:='';
Edit2.Text:='';
Edit1.Text:='';}
Timer1.Enabled:=False;
Timer2.Enabled:=False
end

else If (Edit4.Text='ouro')or(Edit4.Text='Ouro')or(Edit4.Text='OURO') then
begin
Edit4.fontcolor:=talphacolorrec.Yellow
end
else If (Edit4.Text='prata')or(Edit4.Text='Prata')or(Edit4.Text='PRATA') then
begin
Edit4.fontcolor:=talphacolorrec.Silver
end
else If (Edit4.Text='"nenhum"') or(Edit4.Text='"Nenhum"')or(Edit4.Text='"NENHUM"')then
begin
Timer1.Enabled:=true
end

else If (Edit4.Text='nenhum')or(Edit4.Text='Nenhum')or(Edit4.Text='NENHUM') then
begin
Timer1.Enabled:=true;
end;


end;


{procedure TForm2.Edit5CanFocus(Sender: TObject; var ACanFocus: Boolean);

var
texto4:string;
begin
texto4:=Edit4.Text;
//TEXTO4:=EDIT4.TEXT;
if (texto4 <> 'ouro') or (texto4 <> 'prata') or  (texto4 <>'marrom') or  (texto4 <>'vermelho') or  (texto4 <>'cinza') or  (texto4 <>'preto')or (TEXTO4 <> 'OURO') OR (TEXTO4 <> 'PRATA') OR  (TEXTO4 <>'MARROM') OR  (TEXTO4 <>'VERMELHO') OR  (TEXTO4 <>'CINZA') OR  (TEXTO4 <>'PRETO') then
 begin
   Edit4.Text:='Cor n�o dispon�vel no resistor';

 end;


 {IF (TEXTO4 <> 'OURO') OR (TEXTO4 <> 'PRATA') OR  (TEXTO4 <>'MARROM') OR  (TEXTO4 <>'VERMELHO') OR  (TEXTO4 <>'CINZA') OR  (TEXTO4 <>'PRETO') THEN
 BEGIN
   EDIT4.TEXT:='ESSA COR N�O EXISTE NOS C�DIGOS'

 END;

end; }

procedure TForm2.FormShow(Sender: TObject);
begin
  label3.Visible:=false;
  label4.Visible:=false;
  label5.Visible:=false;
  label6.Visible:=false;
  label7.Visible:=false;
  label8.Visible:=false;
  label9.Visible:=false;
  label10.Visible:=false;
  //label11.Visible:=false;
  //label12.Visible:=false;


  edit1.SetFocus;
  Edit5.text:='';
  edit2.Visible:=false;
  edit3.Visible:=false;
  edit4.Visible:=false;
  edit5.Visible:=false;
  //edit6.Visible:=false;

  button2.Visible:=false;

end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
texto1:string;
begin
texto1:=Edit1.Text;


If (Edit1.Text='marrom')or (Edit1.Text='Marrom')or(Edit1.Text='MARROM')then
begin
label7.Visible:=true;

label7.text:='1';
label7.fontcolor:=talphacolorrec.Maroon;

end
Else If (Edit1.Text='vermelho')or(Edit1.Text='Vermelho')or(Edit1.Text='VERMELHO') then
begin
label7.Visible:=true;

label7.text:='2';
label7.fontcolor:=talphacolorrec.Red;
end
Else If (Edit1.Text='laranja')or(Edit1.Text='Laranja')or(Edit1.Text='LARANJA') then
begin
label7.Visible:=true;

label7.text:='3';
label7.fontcolor:=talphacolorrec.Orange;
end
Else If (Edit1.Text='amarelo')or(Edit1.Text='Amarelo')or(Edit1.Text='AMARELO')then
begin
label7.Visible:=true;
label7.text:='4';
label7.fontcolor:=talphacolorrec.Yellow;
end
Else If (Edit1.Text='verde')or (Edit1.Text='Verde')or(Edit1.Text='VERDE')then
begin
label7.Visible:=true;
label7.text:='5';
label7.fontcolor:=talphacolorrec.Green;
end
Else If (Edit1.Text='azul')or(Edit1.Text='Azul')or(Edit1.Text='AZUL') then
begin
label7.Visible:=true;
label7.text:='6';
label7.fontcolor:=talphacolorrec.Blue;
end
Else If (Edit1.Text='roxo' ) Or(Edit1.Text='Roxo' )or(Edit1.Text='ROXO' ) or(Edit1.Text='violeta' ) or(Edit1.Text='Violeta' ) or(Edit1.Text='VIOLETA' ) then
begin
label7.Visible:=true;
label7.text:='7';
label7.fontcolor:=talphacolorrec.Purple;
end
Else If (Edit1.Text='cinza') or(Edit1.Text='Cinza')or(Edit1.Text='CINZA')then
begin
label7.Visible:=true;
label7.text:='8';
label7.fontcolor:=talphacolorrec.Gray;
end
Else If (Edit1.Text='branco') or(Edit1.Text='Branco')or(Edit1.Text='BRANCO')then
begin
label7.Visible:=true;
label7.text:='9';
label7.fontcolor:=talphacolorrec.lightgray;
end
Else If (Edit1.Text='lilas') or(Edit1.Text='Lilas')or(Edit1.Text='LILAS')then
begin
label7.Visible:=true;
label7.text:='7';
label7.fontcolor:=talphacolorrec.purple;
end
Else If (Edit1.Text='abobora')or(Edit1.Text='Abobora')or(Edit1.Text='ABOBORA') then
begin
label7.Visible:=true;
label7.text:='3';
label7.fontcolor:=talphacolorrec.orange;
end
Else If (Edit1.Text='preto') or(Edit1.Text='Preto')or(Edit1.Text='PRETO')then
begin
label7.Visible:=true;
label7.text:=' ';
label7.fontcolor:=talphacolorrec.lightgray;

timer1.Enabled:=false;

 end;





If (Edit2.Text='marrom')or (Edit2.Text='Marrom')or(Edit2.Text='MARROM')then
begin
Label8.Visible:=true;

Label8.text:='1';
Label8.fontcolor:=talphacolorrec.Maroon;

end
Else If (Edit2.Text='vermelho')or(Edit2.Text='Vermelho')or(Edit2.Text='VERMELHO') then
begin
Label8.Visible:=true;

Label8.text:='2';
Label8.fontcolor:=talphacolorrec.Red;
end
Else If (Edit2.Text='laranja')or(Edit2.Text='Laranja')or(Edit2.Text='LARANJA') then
begin
Label8.Visible:=true;

Label8.text:='3';
Label8.fontcolor:=talphacolorrec.Orange;
end
Else If (Edit2.Text='amarelo')or(Edit2.Text='Amarelo')or(Edit2.Text='AMARELO')then
begin
Label8.Visible:=true;
Label8.text:='4';
Label8.fontcolor:=talphacolorrec.Yellow;
end
Else If (Edit2.Text='verde')or (Edit2.Text='Verde')or(Edit2.Text='VERDE')then
begin
Label8.Visible:=true;
Label8.text:='5';
Label8.fontcolor:=talphacolorrec.Green;
end
Else If (Edit2.Text='azul')or(Edit2.Text='Azul')or(Edit2.Text='AZUL') then
begin
Label8.Visible:=true;
Label8.text:='6';
Label8.fontcolor:=talphacolorrec.Blue;
end
Else If (Edit2.Text='roxo' ) Or(Edit2.Text='Roxo' )or(Edit2.Text='ROXO' ) or(Edit2.Text='violeta' ) or(Edit2.Text='Violeta' ) or(Edit2.Text='VIOLETA' ) then
begin
Label8.Visible:=true;
Label8.text:='7';
Label8.fontcolor:=talphacolorrec.Purple;
end
Else If (Edit2.Text='cinza') or(Edit2.Text='Cinza')or(Edit2.Text='CINZA')then
begin
Label8.Visible:=true;
Label8.text:='8';
Label8.fontcolor:=talphacolorrec.Gray;
end
Else If (Edit2.Text='branco') or(Edit2.Text='Branco')or(Edit2.Text='BRANCO')then
begin
Label8.Visible:=true;
Label8.text:='9';
Label8.fontcolor:=talphacolorrec.lightgray;
end
Else If (Edit2.Text='lilas') or(Edit2.Text='Lilas')or(Edit2.Text='LILAS')then
begin
Label8.Visible:=true;
Label8.text:='7';
Label8.fontcolor:=talphacolorrec.purple;
end
Else If (Edit2.Text='abobora')or(Edit2.Text='Abobora')or(Edit2.Text='ABOBORA') then
begin
Label8.Visible:=true;
Label8.text:='3';
Label8.fontcolor:=talphacolorrec.orange;
end
Else If (Edit2.Text='preto') or(Edit2.Text='Preto')or(Edit2.Text='PRETO')then
begin
Label8.Visible:=true;
Label8.text:=' ';
Label8.fontcolor:=talphacolorrec.lightgray;

end;







If (Edit3.Text='marrom')or (Edit3.Text='Marrom')or(Edit3.Text='MARROM')then
begin
Label9.Visible:=true;

Label9.text:='0';
Label9.fontcolor:=talphacolorrec.Maroon;

end
Else If (Edit3.Text='vermelho')or(Edit3.Text='Vermelho')or(Edit3.Text='VERMELHO') then
begin
Label9.Visible:=true;

Label9.text:='00';
Label9.fontcolor:=talphacolorrec.Red;
end
Else If (Edit3.Text='laranja')or(Edit3.Text='Laranja')or(Edit3.Text='LARANJA') then
begin
Label9.Visible:=true;

Label9.text:='000';
Label9.fontcolor:=talphacolorrec.Orange;
end
Else If (Edit3.Text='amarelo')or(Edit3.Text='Amarelo')or(Edit3.Text='AMARELO')then
begin
Label9.Visible:=true;
Label9.text:='0000';
Label9.fontcolor:=talphacolorrec.Yellow;
end
Else If (Edit3.Text='verde')or (Edit3.Text='Verde')or(Edit3.Text='VERDE')then
begin
Label9.Visible:=true;
Label9.text:='00000';
Label9.fontcolor:=talphacolorrec.Green;
end
Else If (Edit3.Text='azul')or(Edit3.Text='Azul')or(Edit3.Text='AZUL') then
begin
Label9.Visible:=true;
Label9.text:='000000';
Label9.fontcolor:=talphacolorrec.Blue;
end
Else If (Edit3.Text='roxo' ) Or(Edit3.Text='Roxo' )or(Edit3.Text='ROXO' ) or(Edit3.Text='violeta' ) or(Edit3.Text='Violeta' ) or(Edit3.Text='VIOLETA' ) then
begin
Label9.Visible:=true;
Label9.text:='0000000';
Label9.fontcolor:=talphacolorrec.Purple;
end
Else If (Edit3.Text='cinza') or(Edit3.Text='Cinza')or(Edit3.Text='CINZA')then
begin
Label9.Visible:=true;
Label9.text:='00000000';
Label9.fontcolor:=talphacolorrec.Gray;
end
Else If (Edit3.Text='branco') or(Edit3.Text='Branco')or(Edit3.Text='BRANCO')then
begin
Label9.Visible:=true;
Label9.text:='000000000';
Label9.fontcolor:=talphacolorrec.lightgray;
end
Else If (Edit3.Text='lilas') or(Edit3.Text='Lilas')or(Edit3.Text='LILAS')then
begin
Label9.Visible:=true;
Label9.text:='0000000';
Label9.fontcolor:=talphacolorrec.purple;
end
Else If (Edit3.Text='abobora')or(Edit3.Text='Abobora')or(Edit3.Text='ABOBORA') then
begin
Label9.Visible:=true;
Label9.text:='000';
Label9.fontcolor:=talphacolorrec.orange;
end
Else If (Edit3.Text='preto') or(Edit3.Text='Preto')or(Edit3.Text='PRETO')then
begin
Label9.Visible:=true;
Label9.text:='';
Label9.fontcolor:=talphacolorrec.lightgray;

end;





If (Edit4.Text='marrom')or (Edit4.Text='Marrom')or(Edit4.Text='MARROM')then
begin
label10.Visible:=true;
label10.text:='1%';
label10.fontcolor:=talphacolorrec.Maroon;
end
Else If (Edit4.Text='vermelho')or(Edit4.Text='Vermelho')or(Edit4.Text='VERMELHO') then
begin
label10.Visible:=true;
label10.text:='2%';
label10.fontcolor:=talphacolorrec.Red;
end
Else If (Edit4.Text='ouro')or (Edit4.Text='Ouro')or(Edit4.Text='OURO')then
begin
label10.Visible:=true;
label10.text:='5%';
label10.fontcolor:=talphacolorrec.Yellow;
end
Else If (Edit4.Text='prata') or(Edit4.Text='Prata')or(Edit4.Text='PRATA')then
begin
label10.Visible:=true;
label10.text:='10%';
label10.fontcolor:=talphacolorrec.Silver;
end


Else If (Edit4.Text='"nenhum"')or (Edit4.Text='"Nenhum"')or(Edit4.Text='"NENHUM"')then
begin
label10.Visible:=true;
label10.text:='20%';
label10.fontcolor:=talphacolorrec.lightgray

end

Else If (Edit4.Text='nenhum') or(Edit4.Text='Nenhum')or(Edit4.Text='NENHUM')then
begin
label10.Visible:=true;
label10.text:='20%';
label10.fontcolor:=talphacolorrec.lightgray;

end;

timer2.Enabled:=true;


end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
      Timer4.enabled:=true;
end;



procedure TForm2.Timer4Timer(Sender: TObject);

{var
texto4:string; }
begin


//TEXTO4:=EDIT4.TEXT;
{if (texto4 <> 'ouro') or (texto4 <> 'prata') or  (texto4 <>'marrom') or  (texto4 <>'vermelho') or  (texto4 <>'cinza') or  (texto4 <>'preto')or (TEXTO4 <> 'OURO') OR (TEXTO4 <> 'PRATA') OR  (TEXTO4 <>'MARROM') OR  (TEXTO4 <>'VERMELHO') OR  (TEXTO4 <>'CINZA') OR  (TEXTO4 <>'PRETO') then
 begin
   Edit4.Text:='Cor n�o dispon�vel no resistor'
    //texto4:=Edit4.Text;
    end
 else  if  (texto4 = 'ouro') or (texto4 = 'prata') or  (texto4 ='marrom') or  (texto4 ='vermelho') or  (texto4 ='cinza') or  (texto4 ='preto')or (TEXTO4 = 'OURO') OR (TEXTO4 = 'PRATA') OR  (TEXTO4 ='MARROM') OR  (TEXTO4 ='VERMELHO') OR  (TEXTO4 ='CINZA') OR  (TEXTO4 ='PRETO') then
 }
    edit5.text:=label7.text+label8.text+label9.text+'Ohms'+'    '+label10.text+'tol';
    //timer3.Enabled:=true;
end;

//end;


end.
