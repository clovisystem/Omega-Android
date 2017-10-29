unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    HeaderLabel: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    Edit6: TEdit;
    Label6: TLabel;
    Button2: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    //procedure Edit4KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      //Shift: TShiftState);
    procedure Edit5KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    //procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    {procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure Edit4Click(Sender: TObject);
    procedure Edit5Click(Sender: TObject); }
    procedure Edit1Typing(Sender: TObject);
    procedure Edit2Typing(Sender: TObject);
    procedure Edit3Typing(Sender: TObject);
    //procedure Edit4Typing(Sender: TObject);
    procedure Edit5Typing(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4Typing(Sender: TObject);
    //procedure Edit6CanFocus(Sender: TObject; var ACanFocus: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

uses HeaderFooterTemplate;



function minusculo(texto: string): string; stdcall;
const
maiusculo = 'QWERTYUIOPASDFGHJKLZXCVBNM';
minusculo = 'qwertyuiopasdfghjklzxcvbnm';
var
x: Integer;
begin
for x := 1 to Length(texto) do
if Pos(texto[x], maiusculo) <> 0 then
texto[x] := minusculo[Pos(texto[x], maiusculo)];
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


procedure TForm3.Button1Click(Sender: TObject);
begin
      Form3:=nil;
      hide;
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      Edit4.Text:='';
      Edit5.Text:='';
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
    Edit1.text:='';
    Edit2.text:='';
    Edit3.text:='';
    Edit4.text:='';
    Edit5.text:='';
    Edit6.text:='';

    label7.text:='';
    label8.text:='';
    label9.text:='';
    label10.text:='';

    timer4.Enabled:=false;
    //Edit1.text:='';
    Edit2.visible:=false;
    Edit3.visible:=false;
    Edit4.visible:=false;
    Edit5.visible:=false;
    Edit6.visible:=false;

    label3.Visible:=false;
    label4.Visible:=false;
    label5.Visible:=false;
    label6.Visible:=false;
    label7.Visible:=false;
    label8.Visible:=false;
    label9.Visible:=false;
    label10.Visible:=false;
    label11.Visible:=false;
    label12.Visible:=false;
end;







procedure TForm3.Edit1Exit(Sender: TObject);
begin
If (Edit1.Text<>'marrom') and (Edit1.Text<> 'Marrom')and (Edit1.Text<> 'MARROM') and (Edit1.Text<> 'abobora')and (Edit1.Text<> 'Abobora')and (Edit1.Text<> 'ABOBORA')and (Edit1.Text<> 'lilas') and (Edit1.Text<> 'Lilas')and (Edit1.Text<> 'LILAS')and (Edit1.Text<> 'vermelho') and (Edit1.Text<> 'Vermelho') and (Edit1.Text<> 'VERMELHO')and (Edit1.Text<>'laranja') and (Edit1.Text<>'Laranja')and (Edit1.Text<>'LARANJA')and (Edit1.Text<>'amarelo') and (Edit1.Text<>'Amarelo')and (Edit1.Text<>'AMARELO')and (Edit1.Text<>'verde') and (Edit1.Text<>'Verde')and (Edit1.Text<>'VERDE')and (Edit1.Text<>'azul') and (Edit1.Text<>'Azul')and (Edit1.Text<>'AZUL')and (Edit1.Text<>'roxo')and (Edit1.Text<>'Roxo')and (Edit1.Text<>'ROXO') and (Edit1.Text<>'violeta') and (Edit1.Text<>'Violeta')and (Edit1.Text<>'VIOLETA')and (Edit1.Text<>'preto')and (Edit1.Text<>'Preto')and (Edit1.Text<>'PRETO')   and (Edit1.Text<>'cinza')  and (Edit1.Text<>'Cinza') and (Edit1.Text<>'CINZA')and (Edit1.Text<>'Branco')and (Edit1.Text<>'branco') then
  begin
  Edit1.Text:='Cor n�o dispon�vel na faixa';
  Edit1.SelectAll;
end;
end;

procedure TForm3.Edit1KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var texto:string;


begin
  texto:=Edit1.Text;
  Edit1.Text:=minusculo(Edit1.Text);
  Edit1.Text:=StringReplace(texto,' ',EmptyStr,[rfReplaceAll]);
  Edit1.Text:=removeAcentos(texto);

if(Edit1.Text.Length > 0) then
begin
  button2.Visible:=true;

end;

if(Edit1.Text.Length > 2) then
begin
  Edit2.Visible:=true;
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




procedure TForm3.Edit1Typing(Sender: TObject);
var texto:string;


begin
  texto:=Edit1.Text;

  Edit1.Text:=StringReplace(texto,' ',EmptyStr,[rfReplaceAll]);


  Edit1.Text:=removeAcentos(texto);
  Edit1.Text:=lowercase(Edit1.Text);

if(Edit1.Text.Length > 0) then
begin
  button2.Visible:=true;

end;

if(Edit1.Text.Length > 2) then
begin
  Edit2.Visible:=true;
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















procedure TForm3.Edit2Exit(Sender: TObject);
begin
If (Edit2.Text<>'marrom') and (Edit2.Text<> 'Marrom')and (Edit2.Text<> 'MARROM') and (Edit2.Text<> 'abobora')and (Edit2.Text<> 'Abobora')and (Edit2.Text<> 'ABOBORA')and (Edit2.Text<> 'lilas') and (Edit2.Text<> 'Lilas')and (Edit2.Text<> 'LILAS')and (Edit2.Text<> 'vermelho') and (Edit2.Text<> 'Vermelho') and (Edit2.Text<> 'VERMELHO')and (Edit2.Text<>'laranja') and (Edit2.Text<>'Laranja')and (Edit2.Text<>'LARANJA')and (Edit2.Text<>'amarelo') and (Edit2.Text<>'Amarelo')and (Edit2.Text<>'AMARELO')and (Edit2.Text<>'verde') and (Edit2.Text<>'Verde')and (Edit2.Text<>'VERDE')and (Edit2.Text<>'azul') and (Edit2.Text<>'Azul')and (Edit2.Text<>'AZUL')and (Edit2.Text<>'roxo')and (Edit2.Text<>'Roxo')and (Edit2.Text<>'ROXO') and (Edit2.Text<>'violeta') and (Edit2.Text<>'Violeta')and (Edit2.Text<>'VIOLETA')and (Edit2.Text<>'preto')and (Edit2.Text<>'Preto')and (Edit2.Text<>'PRETO')   and (Edit2.Text<>'cinza')  and (Edit2.Text<>'Cinza') and (Edit2.Text<>'CINZA')and (Edit2.Text<>'branco')and (Edit2.Text<>'Branco') then
  begin
  Edit2.Text:='Cor n�o dispon�vel na faixa';
  Edit2.SelectAll;
end;
end;

procedure TForm3.Edit2KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);

var
texto2: string;
texto1: string;



begin
  texto1:=Edit1.Text;
  texto2:=Edit2.Text;
  Edit2.Text:=minusculo(Edit2.Text);
  Edit2.Text:=StringReplace(texto2,' ',EmptyStr,[rfReplaceAll]);
  Edit2.Text:=removeAcentos(texto2);

if(Edit2.Text.Length > 2) then
begin
  Edit3.Visible:=true;
  label4.Visible:=true;
end;

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
Edit2.fontcolor:=talphacolorrec.Maroon
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


procedure TForm3.Edit2Typing(Sender: TObject);
var
texto2: string;
texto1: string;



begin
  texto1:=Edit1.Text;
  texto2:=Edit2.Text;

  Edit2.Text:=StringReplace(texto2,' ',EmptyStr,[rfReplaceAll]);


  Edit2.Text:=removeAcentos(texto2);
  Edit2.Text:=lowercase(Edit2.Text);

if(Edit2.Text.Length > 2) then
begin
  Edit3.Visible:=true;
  label4.Visible:=true;


end;

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
Edit2.fontcolor:=talphacolorrec.Maroon
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














procedure TForm3.Edit3Exit(Sender: TObject);
begin
If (Edit3.Text<>'marrom') and (Edit3.Text<> 'Marrom')and (Edit3.Text<> 'MARROM') and (Edit3.Text<> 'abobora')and (Edit3.Text<> 'Abobora')and (Edit3.Text<> 'ABOBORA')and (Edit3.Text<> 'lilas') and (Edit3.Text<> 'Lilas')and (Edit3.Text<> 'LILAS')and (Edit3.Text<> 'vermelho') and (Edit3.Text<> 'Vermelho') and (Edit3.Text<> 'VERMELHO')and (Edit3.Text<>'laranja') and (Edit3.Text<>'Laranja')and (Edit3.Text<>'LARANJA')and (Edit3.Text<>'amarelo') and (Edit3.Text<>'Amarelo')and (Edit3.Text<>'AMARELO')and (Edit3.Text<>'verde') and (Edit3.Text<>'Verde')and (Edit3.Text<>'VERDE')and (Edit3.Text<>'azul') and (Edit3.Text<>'Azul')and (Edit3.Text<>'AZUL')and (Edit3.Text<>'roxo')and (Edit3.Text<>'Roxo')and (Edit3.Text<>'ROXO') and (Edit3.Text<>'violeta') and (Edit3.Text<>'Violeta')and (Edit3.Text<>'VIOLETA')and (Edit3.Text<>'preto')and (Edit3.Text<>'Preto')and (Edit3.Text<>'PRETO')   and (Edit3.Text<>'cinza')  and (Edit3.Text<>'Cinza') and (Edit3.Text<>'CINZA')and (Edit3.Text<>'branco')and (Edit3.Text<>'Branco')and (Edit3.Text<>'BRANCO') then
  begin
  Edit3.Text:='Cor n�o dispon�vel na faixa';
  Edit3.SelectAll;
end;
end;

procedure TForm3.Edit3KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var
texto3: string;
texto2: string;


begin
  texto2:=Edit2.Text;
  texto3:=Edit3.Text;
  Edit3.Text:=minusculo(Edit3.Text);
  Edit3.Text:=StringReplace(texto3,' ',EmptyStr,[rfReplaceAll]);
  Edit3.Text:=removeAcentos(texto3);

if(Edit3.Text.Length > 2) then
begin
  Edit4.Visible:=true;
  label5.Visible:=true;
end;


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
If (Edit3.Text='marrom') then
begin
Edit3.fontcolor:=talphacolorrec.Maroon
end
else If (Edit3.Text='vermelho') then
begin
Edit3.fontcolor:=talphacolorrec.Red
end
else If (Edit3.Text='laranja') then
begin
Edit3.fontcolor:=talphacolorrec.Orange
end

else If (Edit3.Text='amarelo') then
begin
Edit3.fontcolor:=talphacolorrec.Yellow
end

else If (Edit3.Text='verde') then
begin
Edit3.fontcolor:=talphacolorrec.Green
end

else If (Edit3.Text='azul') then
begin
Edit3.fontcolor:=talphacolorrec.Blue
end

else If (Edit3.Text='roxo')  then
begin
Edit3.fontcolor:=talphacolorrec.Purple
end

else If (Edit3.Text='violeta')  then
begin
Edit3.fontcolor:=talphacolorrec.Purple
end

else If (Edit3.Text='preto') then
begin
Edit3.fontcolor:=talphacolorrec.Black
end

else If (Edit3.Text='cinza') then
begin
Edit3.fontcolor:=talphacolorrec.Gray
end

else If (Edit3.Text='lilas') then
begin
Edit3.fontcolor:=talphacolorrec.purple
end

else If (Edit3.Text='abobora') then
begin
Edit3.fontcolor:=talphacolorrec.orange
end

else If (Edit3.Text='branco') then
begin
Edit3.fontcolor:=talphacolorrec.lightgray;
end;

{if (texto2 <> 'amarelo') or (texto2 <> 'azul') or  (texto2 <>'branco') or  (texto2 <>'cinza') or  (texto2 <>'vermelho') or  (texto2 <>'laranja') or  (texto2 <>'roxo') or  (texto2 <>'violeta') or  (texto2 <>'lilas') or  (texto2 <>'lilas') or (texto2 <>'verde') or  (texto2 <>'preto') or  (texto2 <>'marrom') or (TEXTO2 <> 'AMARELO') OR (TEXTO2 <> 'AZUL') OR  (TEXTO2 <>'BRANCO') OR  (TEXTO2 <>'CINZA') OR  (TEXTO2 <>'VERMELHO') OR  (TEXTO2 <>'LARANJA') OR  (TEXTO2 <>'ROXO') OR  (TEXTO2 <>'VIOLETA') OR  (TEXTO2 <>'LILAS') OR  (TEXTO2 <>'lilas') OR (TEXTO2 <>'VERDE') OR  (TEXTO2 <>'PRETO') OR  (TEXTO2 <>'MARROM')then
 begin
   Edit2.Text:='Cor n�o dispon�vel no resistor';

end; }
{IF (TEXTO2 <> 'AMARELO') OR (TEXTO2 <> 'AZUL') OR  (TEXTO2 <>'BRANCO') OR  (TEXTO2 <>'CINZA') OR  (TEXTO2 <>'VERMELHO') OR  (TEXTO2 <>'LARANJA') OR  (TEXTO2 <>'ROXO') OR  (TEXTO2 <>'VIOLETA') OR  (TEXTO2 <>'LILAS') OR  (TEXTO2 <>'lilas') OR (TEXTO2 <>'VERDE') OR  (TEXTO2 <>'PRETO') OR  (TEXTO2 <>'MARROM') THEN
 BEGIN
   EDIT2.TEXT:='ESSA COR N�O EXISTE NOS C�DIGOS'

END; }
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



procedure TForm3.Edit3Typing(Sender: TObject);
var
texto3: string;
texto2: string;


begin
  texto2:=Edit2.Text;
  texto3:=Edit3.Text;

  Edit3.Text:=StringReplace(texto3,' ',EmptyStr,[rfReplaceAll]);


  Edit3.Text:=removeAcentos(texto3);
  Edit3.Text:=lowercase(Edit3.Text);

if(Edit3.Text.Length > 2) then
begin
  Edit4.Visible:=true;
  label5.Visible:=true;


end;


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
If (Edit3.Text='marrom') then
begin
Edit3.fontcolor:=talphacolorrec.Maroon
end
else If (Edit3.Text='vermelho') then
begin
Edit3.fontcolor:=talphacolorrec.Red
end
else If (Edit3.Text='laranja') then
begin
Edit3.fontcolor:=talphacolorrec.Orange
end

else If (Edit3.Text='amarelo') then
begin
Edit3.fontcolor:=talphacolorrec.Yellow
end

else If (Edit3.Text='verde') then
begin
Edit3.fontcolor:=talphacolorrec.Green
end

else If (Edit3.Text='azul') then
begin
Edit3.fontcolor:=talphacolorrec.Blue
end

else If (Edit3.Text='roxo')  then
begin
Edit3.fontcolor:=talphacolorrec.Purple
end

else If (Edit3.Text='violeta')  then
begin
Edit3.fontcolor:=talphacolorrec.Purple
end

else If (Edit3.Text='preto') then
begin
Edit3.fontcolor:=talphacolorrec.Black
end

else If (Edit3.Text='cinza') then
begin
Edit3.fontcolor:=talphacolorrec.Gray
end

else If (Edit3.Text='lilas') then
begin
Edit3.fontcolor:=talphacolorrec.purple
end

else If (Edit3.Text='abobora') then
begin
Edit3.fontcolor:=talphacolorrec.orange
end

else If (Edit3.Text='branco') then
begin
Edit3.fontcolor:=talphacolorrec.lightgray;
end;

{if (texto2 <> 'amarelo') or (texto2 <> 'azul') or  (texto2 <>'branco') or  (texto2 <>'cinza') or  (texto2 <>'vermelho') or  (texto2 <>'laranja') or  (texto2 <>'roxo') or  (texto2 <>'violeta') or  (texto2 <>'lilas') or  (texto2 <>'lilas') or (texto2 <>'verde') or  (texto2 <>'preto') or  (texto2 <>'marrom') or (TEXTO2 <> 'AMARELO') OR (TEXTO2 <> 'AZUL') OR  (TEXTO2 <>'BRANCO') OR  (TEXTO2 <>'CINZA') OR  (TEXTO2 <>'VERMELHO') OR  (TEXTO2 <>'LARANJA') OR  (TEXTO2 <>'ROXO') OR  (TEXTO2 <>'VIOLETA') OR  (TEXTO2 <>'LILAS') OR  (TEXTO2 <>'lilas') OR (TEXTO2 <>'VERDE') OR  (TEXTO2 <>'PRETO') OR  (TEXTO2 <>'MARROM')then
 begin
   Edit2.Text:='Cor n�o dispon�vel no resistor';

end; }
{IF (TEXTO2 <> 'AMARELO') OR (TEXTO2 <> 'AZUL') OR  (TEXTO2 <>'BRANCO') OR  (TEXTO2 <>'CINZA') OR  (TEXTO2 <>'VERMELHO') OR  (TEXTO2 <>'LARANJA') OR  (TEXTO2 <>'ROXO') OR  (TEXTO2 <>'VIOLETA') OR  (TEXTO2 <>'LILAS') OR  (TEXTO2 <>'lilas') OR (TEXTO2 <>'VERDE') OR  (TEXTO2 <>'PRETO') OR  (TEXTO2 <>'MARROM') THEN
 BEGIN
   EDIT2.TEXT:='ESSA COR N�O EXISTE NOS C�DIGOS'

END; }
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





procedure TForm3.Edit4Exit(Sender: TObject);
begin

If (Edit4.Text<>'marrom') and (Edit4.Text<> 'Marrom')and (Edit4.Text<> 'MARROM') and (Edit4.Text<> 'abobora')and (Edit4.Text<> 'Abobora')and (Edit4.Text<> 'ABOBORA')and (Edit4.Text<> 'lilas') and (Edit4.Text<> 'Lilas')and (Edit4.Text<> 'LILAS')and (Edit4.Text<> 'vermelho') and (Edit4.Text<> 'Vermelho') and (Edit4.Text<> 'VERMELHO')and (Edit4.Text<>'laranja') and (Edit4.Text<>'Laranja')and (Edit4.Text<>'LARANJA')and (Edit4.Text<>'amarelo') and (Edit4.Text<>'Amarelo')and (Edit4.Text<>'AMARELO')and (Edit4.Text<>'verde') and (Edit4.Text<>'Verde')and (Edit4.Text<>'VERDE')and (Edit4.Text<>'azul') and (Edit4.Text<>'Azul')and (Edit4.Text<>'AZUL')and (Edit4.Text<>'roxo')and (Edit4.Text<>'Roxo')and (Edit4.Text<>'ROXO') and (Edit4.Text<>'violeta') and (Edit4.Text<>'Violeta')and (Edit4.Text<>'VIOLETA')and (Edit4.Text<>'preto')and (Edit4.Text<>'Preto')and (Edit4.Text<>'PRETO')   and (Edit4.Text<>'cinza')  and (Edit4.Text<>'Cinza') and (Edit4.Text<>'CINZA')and (Edit4.Text<>'branco')and (Edit4.Text<>'Branco') then
  begin
  Edit4.Text:='Cor n�o dispon�vel na faixa';
  Edit4.SelectAll;
  end;
end;



procedure TForm3.Edit4Typing(Sender: TObject);

var
texto4: string;
texto3: string;

//thetext3:string;

begin
texto3:=Edit3.Text;
//TEXTO2:=EDIT1.TEXT;
texto4:=Edit4.Text;


Edit4.Text:=StringReplace(texto4,' ',EmptyStr,[rfReplaceAll]);


Edit4.Text:=removeAcentos(texto4);
Edit4.Text:=lowercase(Edit4.Text);
// thetext3 := Edit3.Text;
 //Edit3.Text:=AnsiUpperCase(thetext3);
// Edit3.GoToTextEnd;

begin
    if(Edit4.Text.Length > 2) then
begin
  Edit5.Visible:=true;
  //Edit4.setfocus;
  label6.Visible:=true;


end;
{if (texto2 <> 'amarelo') or (texto2 <> 'azul') or  (texto2 <>'branco') or  (texto2 <>'cinza') or  (texto2 <>'vermelho') or  (texto2 <>'laranja') or  (texto2 <>'roxo') or  (texto2 <>'violeta') or  (texto2 <>'lilas') or  (texto2 <>'lilas') or (texto2 <>'verde') or  (texto2 <>'preto') or  (texto2 <>'marrom') or (TEXTO2 <> 'AMARELO') OR (TEXTO2 <> 'AZUL') OR  (TEXTO2 <>'BRANCO') OR  (TEXTO2 <>'CINZA') OR  (TEXTO2 <>'VERMELHO') OR  (TEXTO2 <>'LARANJA') OR  (TEXTO2 <>'ROXO') OR  (TEXTO2 <>'VIOLETA') OR  (TEXTO2 <>'LILAS') OR  (TEXTO2 <>'lilas') OR (TEXTO2 <>'VERDE') OR  (TEXTO2 <>'PRETO') OR  (TEXTO2 <>'MARROM')then
 begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
 end
else }

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

else If (Edit4.Text='white') then
begin
Edit4.text:='branco';
end;





//em portugues
If (Edit4.Text='marrom') or (Edit4.Text='Marrom')or(Edit4.Text='MARROM')then
begin
Edit4.fontcolor:=talphacolorrec.Maroon
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit4.Text='vermelho')or (Edit4.Text='Vermelho')or(Edit4.Text='VERMELHO') then
begin
Edit4.fontcolor:=talphacolorrec.Red
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }
else If (Edit4.Text='laranja') or (Edit4.Text='Laranja')or(Edit4.Text='LARANJA') then
begin
Edit4.fontcolor:=talphacolorrec.Orange
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}
else If (Edit4.Text='amarelo')or (Edit4.Text='Amarelo')or(Edit4.Text='AMARELO') then
begin
Edit4.fontcolor:=talphacolorrec.Yellow
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit4.Text='verde')or (Edit4.Text='Verde')or(Edit4.Text='VERDE') then
begin
Edit4.fontcolor:=talphacolorrec.Green
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit4.Text='azul')or(Edit4.Text='Azul')or(Edit4.Text='AZUL') then
begin
Edit4.fontcolor:=talphacolorrec.Blue
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit4.Text='roxo') or(Edit4.Text='Roxo')or(Edit4.Text='ROXO')  then
begin
Edit4.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;}

else If (Edit4.Text='violeta') or (Edit4.Text='Violeta')or(Edit4.Text='VIOLETA') then
begin
Edit4.fontcolor:=talphacolorrec.Purple
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit4.Text='preto') or(Edit4.Text='Preto')or(Edit4.Text='PRETO')then
begin
Edit4.fontcolor:=talphacolorrec.Black
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end; }

else If (Edit4.Text='cinza') or(Edit4.Text='Cinza')or(Edit4.Text='CINZA')then
begin
Edit4.fontcolor:=talphacolorrec.Gray
end
{else
begin
   Edit1.Text:='Cor n�o dispon�vel no resistor'
end;  }

else If (Edit4.Text='lilas')or(Edit4.Text='Lilas')or(Edit4.Text='LILAS')  then
begin
Edit4.fontcolor:=talphacolorrec.purple
end

else If (Edit4.Text='abobora')or(Edit4.Text='Abobora')or(Edit4.Text='ABOBORA') then
begin
Edit4.fontcolor:=talphacolorrec.orange
end

else If (Edit4.Text='branco')or(Edit4.Text='Branco')or(Edit4.Text='BRANCO') then
begin
Edit4.fontcolor:=talphacolorrec.lightgray
end
end;




end;

{IF (TEXTO2 <> 'AMARELO') OR (TEXTO2 <> 'AZUL') OR  (TEXTO2 <>'BRANCO') OR  (TEXTO2 <>'CINZA') OR  (TEXTO2 <>'VERMELHO') OR  (TEXTO2 <>'LARANJA') OR  (TEXTO2 <>'ROXO') OR  (TEXTO2 <>'VIOLETA') OR  (TEXTO2 <>'LILAS') OR  (TEXTO2 <>'lilas') OR (TEXTO2 <>'VERDE') OR  (TEXTO2 <>'PRETO') OR  (TEXTO2 <>'MARROM') THEN
 BEGIN
   EDIT2.TEXT:='ESSA COR N�O EXISTE NOS C�DIGOS'

END;       }





















procedure TForm3.Edit5Exit(Sender: TObject);
begin
If (Edit5.Text<>'marrom')and (Edit2.Text<> 'Marrom')and (Edit2.Text<> 'MARROM') and (Edit2.Text<> 'nenhum')and (Edit2.Text<> 'Nenhum')and (Edit2.Text<> 'NENHUM') and (Edit2.Text<> '"nenhum"')and (Edit2.Text<> '"Nenhum"')and (Edit2.Text<> '"NENHUM"') and (Edit5.Text<> 'ouro') and (Edit5.Text<> 'Ouro')and (Edit5.Text<> 'OURO')and (Edit5.Text<> 'prata') and (Edit5.Text<> 'Prata')and (Edit5.Text<> 'PRATA')and (Edit5.Text<> 'vermelho') and (Edit5.Text<> 'Vermelho')and (Edit5.Text<> 'VERMELHO') and (Edit5.Text<>'preto') and (Edit5.Text<>'Preto')and (Edit5.Text<>'PRETO') then
  begin
  Edit5.Text:='Cor n�o dispon�vel na faixa';
  Edit5.SelectAll;
end;
end;

procedure TForm3.Edit5KeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var
texto5: string;
texto4: string;


begin
  texto4:=Edit3.Text;
  texto5:=Edit5.Text;
  Edit5.Text:=minusculo(Edit5.Text);
  Edit5.Text:=StringReplace(texto5,' ',EmptyStr,[rfReplaceAll]);
  Edit5.Text:=removeAcentos(texto5);

if(Edit5.Text.Length > 2) then
begin
  Edit6.Visible:=true;
  label7.Visible:=true;
end;

{if(Edit4.Text.Length > 3) then
begin
  Edit5.Visible:=true;
end; }

Timer1.Enabled:=true;

 //em ingles
If (Edit5.Text='maroon') then
begin
Edit5.text:='marrom';

end

else If (Edit5.Text='red') then
begin
Edit5.text:='vermelho';
end

else If (Edit5.Text='orange') then
begin
Edit5.text:='laranja';
end

else If (Edit5.Text='yellow') then
begin
Edit5.text:='amarelo';
end

else If (Edit5.Text='green') then
begin
Edit5.text:='verde';
end

else If (Edit5.Text='blue') then
begin
Edit5.text:='azul';
end

else If (Edit5.Text='purple')  then
begin
Edit5.text:='roxo';
end


else If (Edit5.Text='black') then
begin
Edit5.text:='preto';
end

else If (Edit5.Text='gray') then
begin
Edit5.text:='cinza';
end

else If (Edit4.Text='gold') then
begin
Edit4.text:='ouro';
end

else If (Edit4.Text='silver') then
begin
Edit4.text:='prata';
end

else If (Edit5.Text='white') then
begin
Edit5.text:='branco';
end;





//em portugues
If (Edit5.Text='marrom') or (Edit5.Text='Marrom')or(Edit5.Text='MARROM')then
begin
Edit5.fontcolor:=talphacolorrec.Maroon;
end
else If (Edit5.Text='vermelho')or(Edit5.Text='Vermelho')or(Edit5.Text='VERMELHO') then
begin
Edit5.fontcolor:=talphacolorrec.Red
end
else If (Edit5.Text='laranja')or(Edit5.Text='Laranja')or(Edit5.Text='Laranja') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='amarelo') or(Edit5.Text='Amarelo')or(Edit5.Text='AMARELO')then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='verde')or(Edit5.Text='Verde')or(Edit5.Text='VERDE') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='azul')or(Edit5.Text='Azul')or(Edit5.Text='AZUL') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='roxo')or(Edit5.Text='Roxo')or(Edit5.Text='ROXO')  then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='violeta')or(Edit5.Text='Violeta')or(Edit5.Text='VIOLETA')  then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='preto')or (Edit5.Text='Preto')or(Edit5.Text='PRETO')then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='cinza')or(Edit5.Text='Cinza')or(Edit5.Text='CINZA') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='lilas') or(Edit5.Text='Lilas')or(Edit5.Text='LILAS')then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='abobora') or(Edit5.Text='Abobora')or(Edit5.Text='ABOBORA')then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='branco')or(Edit5.Text='Branco')or(Edit5.Text='BRANCO') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='ouro')or(Edit5.Text='Ouro')or(Edit5.Text='OURO') then
begin
Edit5.fontcolor:=talphacolorrec.Yellow
end
else If (Edit5.Text='prata')or(Edit5.Text='Prata')or(Edit5.Text='PRATA') then
begin
Edit5.fontcolor:=talphacolorrec.Silver
end
else If (Edit5.Text='"nenhum"') or(Edit5.Text='"Nenhum"')or(Edit5.Text='"NENHUM"')then
begin
Timer1.Enabled:=true
end

else If (Edit5.Text='nenhum')or(Edit5.Text='Nenhum')or(Edit5.Text='NENHUM') then
begin
Timer1.Enabled:=true;
end;

end;




procedure TForm3.Edit5Typing(Sender: TObject);
var
texto5: string;
texto4: string;


begin
  texto4:=Edit3.Text;
  texto5:=Edit5.Text;

  Edit5.Text:=StringReplace(texto5,' ',EmptyStr,[rfReplaceAll]);


  Edit5.Text:=removeAcentos(texto5);
  Edit5.Text:=lowercase(Edit5.Text);

if(Edit5.Text.Length > 2) then
begin
  Edit6.Visible:=true;
  label7.Visible:=true;


end;

{if(Edit4.Text.Length > 3) then
begin
  Edit5.Visible:=true;
end; }

Timer1.Enabled:=true;

 //em ingles
If (Edit5.Text='maroon') then
begin
Edit5.text:='marrom';

end

else If (Edit5.Text='red') then
begin
Edit5.text:='vermelho';
end

else If (Edit5.Text='orange') then
begin
Edit5.text:='laranja';
end

else If (Edit5.Text='yellow') then
begin
Edit5.text:='amarelo';
end

else If (Edit5.Text='green') then
begin
Edit5.text:='verde';
end

else If (Edit5.Text='blue') then
begin
Edit5.text:='azul';
end

else If (Edit5.Text='purple')  then
begin
Edit5.text:='roxo';
end


else If (Edit5.Text='black') then
begin
Edit5.text:='preto';
end

else If (Edit5.Text='gray') then
begin
Edit5.text:='cinza';
end

else If (Edit4.Text='gold') then
begin
Edit4.text:='ouro';
end

else If (Edit4.Text='silver') then
begin
Edit4.text:='prata';
end

else If (Edit5.Text='white') then
begin
Edit5.text:='branco';
end;





//em portugues
If (Edit5.Text='marrom') or (Edit5.Text='Marrom')or(Edit5.Text='MARROM')then
begin
Edit5.fontcolor:=talphacolorrec.Maroon;
end
else If (Edit5.Text='vermelho')or(Edit5.Text='Vermelho')or(Edit5.Text='VERMELHO') then
begin
Edit5.fontcolor:=talphacolorrec.Red
end
else If (Edit5.Text='laranja')or(Edit5.Text='Laranja')or(Edit5.Text='Laranja') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='amarelo') or(Edit5.Text='Amarelo')or(Edit5.Text='AMARELO')then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='verde')or(Edit5.Text='Verde')or(Edit5.Text='VERDE') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='azul')or(Edit5.Text='Azul')or(Edit5.Text='AZUL') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='roxo')or(Edit5.Text='Roxo')or(Edit5.Text='ROXO')  then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='violeta')or(Edit5.Text='Violeta')or(Edit5.Text='VIOLETA')  then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='preto')or (Edit5.Text='Preto')or(Edit5.Text='PRETO')then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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
else If (Edit5.Text='cinza')or(Edit5.Text='Cinza')or(Edit5.Text='CINZA') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='lilas') or(Edit5.Text='Lilas')or(Edit5.Text='LILAS')then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='abobora') or(Edit5.Text='Abobora')or(Edit5.Text='ABOBORA')then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='branco')or(Edit5.Text='Branco')or(Edit5.Text='BRANCO') then
begin
Edit5.text:='Cor n�o dispon�vel nesta faixa';
Edit5.selectall;
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

else If (Edit5.Text='ouro')or(Edit5.Text='Ouro')or(Edit5.Text='OURO') then
begin
Edit5.fontcolor:=talphacolorrec.Yellow
end
else If (Edit5.Text='prata')or(Edit5.Text='Prata')or(Edit5.Text='PRATA') then
begin
Edit5.fontcolor:=talphacolorrec.Silver
end
else If (Edit5.Text='"nenhum"') or(Edit5.Text='"Nenhum"')or(Edit5.Text='"NENHUM"')then
begin
Timer1.Enabled:=true
end

else If (Edit5.Text='nenhum')or(Edit5.Text='Nenhum')or(Edit5.Text='NENHUM') then
begin
Timer1.Enabled:=true;
end;

end;





{if (texto4 <> 'amarelo') or (texto4 <> 'azul') or  (texto4 <>'branco') or  (texto4 <>'cinza') or  (texto4 <>'vermelho') or  (texto4 <>'laranja') or  (texto4 <>'roxo') or  (texto4 <>'violeta') or  (texto4 <>'lilas') or  (texto4 <>'lilas') or (texto4 <>'verde') or  (texto4 <>'preto') or  (texto4 <>'marrom') or (TEXTO4 <> 'AMARELO') OR (TEXTO4 <> 'AZUL') OR  (TEXTO4 <>'BRANCO') OR  (TEXTO4 <>'CINZA') OR  (TEXTO4 <>'VERMELHO') OR  (TEXTO4 <>'LARANJA') OR  (TEXTO4 <>'ROXO') OR  (TEXTO4 <>'VIOLETA') OR  (TEXTO4 <>'LILAS') OR  (TEXTO4 <>'lilas') OR (TEXTO4 <>'VERDE') OR  (TEXTO4 <>'PRETO') OR  (TEXTO4 <>'MARROM')then
 begin
   Edit4.Text:='Cor n�o dispon�vel no resistor';

end;  }
{IF (TEXTO4 <> 'AMARELO') OR (TEXTO4 <> 'AZUL') OR  (TEXTO4 <>'BRANCO') OR  (TEXTO4 <>'CINZA') OR  (TEXTO4 <>'VERMELHO') OR  (TEXTO4 <>'LARANJA') OR  (TEXTO4 <>'ROXO') OR  (TEXTO4 <>'VIOLETA') OR  (TEXTO4 <>'LILAS') OR  (TEXTO4 <>'lilas') OR (TEXTO4 <>'VERDE') OR  (TEXTO4 <>'PRETO') OR  (TEXTO4 <>'MARROM') THEN
 BEGIN
   EDIT2.TEXT:='ESSA COR N�O EXISTE NOS C�DIGOS'

END;  }


{procedure TForm3.Edit6CanFocus(Sender: TObject; var ACanFocus: Boolean);
var
texto5:string;
begin
texto5:=Edit5.Text;
if (texto5 <> 'ouro') or (texto5 <> 'prata') or  (texto5 <>'marrom') or  (texto5 <>'vermelho') or  (texto5 <>'cinza') or  (texto5 <>'preto')or (TEXTO5 <> 'OURO') OR (TEXTO5 <> 'PRATA') OR  (TEXTO5 <>'MARROM') OR  (TEXTO5 <>'VERMELHO') OR  (TEXTO5 <>'CINZA') OR  (TEXTO5 <>'PRETO') then
 begin
   Edit5.Text:='Cor n�o dispon�vel no resistor';

 end;
 IF (TEXTO5 <> 'OURO') OR (TEXTO5 <> 'PRATA') OR  (TEXTO5 <>'MARROM') OR  (TEXTO5 <>'VERMELHO') OR  (TEXTO5 <>'CINZA') OR  (TEXTO5 <>'PRETO') THEN
 BEGIN
   EDIT5.TEXT:='Cor n�o dispon�vel no resistor';

 END;


end;  }

procedure TForm3.FormShow(Sender: TObject);
  begin

  label3.Visible:=false;
  label4.Visible:=false;
  label5.Visible:=false;
  label6.Visible:=false;
  label7.Visible:=false;
  label8.Visible:=false;
  label9.Visible:=false;
  label10.Visible:=false;
  label11.Visible:=false;
  label12.Visible:=false;


  edit1.SetFocus;
  edit6.Text:='';

  edit2.Visible:=false;
  edit3.Visible:=false;
  edit4.Visible:=false;
  edit5.Visible:=false;
  edit6.Visible:=false;

  button2.Visible:=false;


end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
If (Edit1.Text='marrom')or (Edit1.Text='Marrom')or(Edit1.Text='MARROM')then
begin
Label8.Visible:=true;

Label8.text:='1';
Label8.fontcolor:=talphacolorrec.Maroon;

end
Else If (Edit1.Text='vermelho')or(Edit1.Text='Vermelho')or(Edit1.Text='VERMELHO') then
begin
Label8.Visible:=true;

Label8.text:='2';
Label8.fontcolor:=talphacolorrec.Red;
end
Else If (Edit1.Text='laranja')or(Edit1.Text='Laranja')or(Edit1.Text='LARANJA') then
begin
Label8.Visible:=true;

Label8.text:='3';
Label8.fontcolor:=talphacolorrec.Orange;
end
Else If (Edit1.Text='amarelo')or(Edit1.Text='Amarelo')or(Edit1.Text='AMARELO')then
begin
Label8.Visible:=true;
Label8.text:='4';
Label8.fontcolor:=talphacolorrec.Yellow;
end
Else If (Edit1.Text='verde')or (Edit1.Text='Verde')or(Edit1.Text='VERDE')then
begin
Label8.Visible:=true;
Label8.text:='5';
Label8.fontcolor:=talphacolorrec.Green;
end
Else If (Edit1.Text='azul')or(Edit1.Text='Azul')or(Edit1.Text='AZUL') then
begin
Label8.Visible:=true;
Label8.text:='6';
Label8.fontcolor:=talphacolorrec.Blue;
end
Else If (Edit1.Text='roxo' ) Or(Edit1.Text='Roxo' )or(Edit1.Text='ROXO' ) or(Edit1.Text='violeta' ) or(Edit1.Text='Violeta' ) or(Edit1.Text='VIOLETA' ) then
begin
Label8.Visible:=true;
Label8.text:='7';
Label8.fontcolor:=talphacolorrec.Purple;
end
Else If (Edit1.Text='cinza') or(Edit1.Text='Cinza')or(Edit1.Text='CINZA')then
begin
Label8.Visible:=true;
Label8.text:='8';
Label8.fontcolor:=talphacolorrec.Gray;
end
Else If (Edit1.Text='branco') or(Edit1.Text='Branco')or(Edit1.Text='BRANCO')then
begin
Label8.Visible:=true;
Label8.text:='9';
Label8.fontcolor:=talphacolorrec.lightgray;
end
Else If (Edit1.Text='lilas') or(Edit1.Text='Lilas')or(Edit1.Text='LILAS')then
begin
Label8.Visible:=true;
Label8.text:='7';
Label8.fontcolor:=talphacolorrec.purple;
end
Else If (Edit1.Text='abobora')or(Edit1.Text='Abobora')or(Edit1.Text='ABOBORA') then
begin
Label8.Visible:=true;
Label8.text:='3';
Label8.fontcolor:=talphacolorrec.orange;
end
Else If (Edit1.Text='preto') or(Edit1.Text='Preto')or(Edit1.Text='PRETO')then
begin
Label8.Visible:=true;
Label8.text:=' ';
Label8.fontcolor:=talphacolorrec.lightgray;

timer1.Enabled:=false;

 end;





If (Edit2.Text='marrom')or (Edit2.Text='Marrom')or(Edit2.Text='MARROM')then
begin
Label9.Visible:=true;

Label9.text:='1';
Label9.fontcolor:=talphacolorrec.Maroon;

end
Else If (Edit2.Text='vermelho')or(Edit2.Text='Vermelho')or(Edit2.Text='VERMELHO') then
begin
Label9.Visible:=true;

Label9.text:='2';
Label9.fontcolor:=talphacolorrec.Red;
end
Else If (Edit2.Text='laranja')or(Edit2.Text='Laranja')or(Edit2.Text='LARANJA') then
begin
Label9.Visible:=true;

Label9.text:='3';
Label9.fontcolor:=talphacolorrec.Orange;
end
Else If (Edit2.Text='amarelo')or(Edit2.Text='Amarelo')or(Edit2.Text='AMARELO')then
begin
Label9.Visible:=true;
Label9.text:='4';
Label9.fontcolor:=talphacolorrec.Yellow;
end
Else If (Edit2.Text='verde')or (Edit2.Text='Verde')or(Edit2.Text='VERDE')then
begin
Label9.Visible:=true;
Label9.text:='5';
Label9.fontcolor:=talphacolorrec.Green;
end
Else If (Edit2.Text='azul')or(Edit2.Text='Azul')or(Edit2.Text='AZUL') then
begin
Label9.Visible:=true;
Label9.text:='6';
Label9.fontcolor:=talphacolorrec.Blue;
end
Else If (Edit2.Text='roxo' ) Or(Edit2.Text='Roxo' )or(Edit2.Text='ROXO' ) or(Edit2.Text='violeta' ) or(Edit2.Text='Violeta' ) or(Edit2.Text='VIOLETA' ) then
begin
Label9.Visible:=true;
Label9.text:='7';
Label9.fontcolor:=talphacolorrec.Purple;
end
Else If (Edit2.Text='cinza') or(Edit2.Text='Cinza')or(Edit2.Text='CINZA')then
begin
Label9.Visible:=true;
Label9.text:='8';
Label9.fontcolor:=talphacolorrec.Gray;
end
Else If (Edit2.Text='branco') or(Edit2.Text='Branco')or(Edit2.Text='BRANCO')then
begin
Label9.Visible:=true;
Label9.text:='9';
Label9.fontcolor:=talphacolorrec.lightgray;
end
Else If (Edit2.Text='lilas') or(Edit2.Text='Lilas')or(Edit2.Text='LILAS')then
begin
Label9.Visible:=true;
Label9.text:='7';
Label9.fontcolor:=talphacolorrec.purple;
end
Else If (Edit2.Text='abobora')or(Edit2.Text='Abobora')or(Edit2.Text='ABOBORA') then
begin
Label9.Visible:=true;
Label9.text:='3';
Label9.fontcolor:=talphacolorrec.orange;
end
Else If (Edit2.Text='preto') or(Edit2.Text='Preto')or(Edit2.Text='PRETO')then
begin
Label9.Visible:=true;
Label9.text:=' ';
Label9.fontcolor:=talphacolorrec.lightgray;

end;







If (Edit3.Text='marrom')or (Edit3.Text='Marrom')or(Edit3.Text='MARROM')then
begin
Label10.Visible:=true;

Label10.text:='1';
Label10.fontcolor:=talphacolorrec.Maroon;

end
Else If (Edit3.Text='vermelho')or(Edit3.Text='Vermelho')or(Edit3.Text='VERMELHO') then
begin
Label10.Visible:=true;

Label10.text:='2';
Label10.fontcolor:=talphacolorrec.Red;
end
Else If (Edit3.Text='laranja')or(Edit3.Text='Laranja')or(Edit3.Text='LARANJA') then
begin
Label10.Visible:=true;

Label10.text:='3';
Label10.fontcolor:=talphacolorrec.Orange;
end
Else If (Edit3.Text='amarelo')or(Edit3.Text='Amarelo')or(Edit3.Text='AMARELO')then
begin
Label10.Visible:=true;
Label10.text:='4';
Label10.fontcolor:=talphacolorrec.Yellow;
end
Else If (Edit3.Text='verde')or (Edit3.Text='Verde')or(Edit3.Text='VERDE')then
begin
Label10.Visible:=true;
Label10.text:='5';
Label10.fontcolor:=talphacolorrec.Green;
end
Else If (Edit3.Text='azul')or(Edit3.Text='Azul')or(Edit3.Text='AZUL') then
begin
Label10.Visible:=true;
Label10.text:='6';
Label10.fontcolor:=talphacolorrec.Blue;
end
Else If (Edit3.Text='roxo' ) Or(Edit3.Text='Roxo' )or(Edit3.Text='ROXO' ) or(Edit3.Text='violeta' ) or(Edit3.Text='Violeta' ) or(Edit3.Text='VIOLETA' ) then
begin
Label10.Visible:=true;
Label10.text:='7';
Label10.fontcolor:=talphacolorrec.Purple;
end
Else If (Edit3.Text='cinza') or(Edit3.Text='Cinza')or(Edit3.Text='CINZA')then
begin
Label10.Visible:=true;
Label10.text:='8';
Label10.fontcolor:=talphacolorrec.Gray;
end
Else If (Edit3.Text='branco') or(Edit3.Text='Branco')or(Edit3.Text='BRANCO')then
begin
Label10.Visible:=true;
Label10.text:='9';
Label10.fontcolor:=talphacolorrec.lightgray;
end
Else If (Edit3.Text='lilas') or(Edit3.Text='Lilas')or(Edit3.Text='LILAS')then
begin
Label10.Visible:=true;
Label10.text:='7';
Label10.fontcolor:=talphacolorrec.purple;
end
Else If (Edit3.Text='abobora')or(Edit3.Text='Abobora')or(Edit3.Text='ABOBORA') then
begin
Label10.Visible:=true;
Label10.text:='3';
Label10.fontcolor:=talphacolorrec.orange;
end
Else If (Edit3.Text='preto') or(Edit3.Text='Preto')or(Edit3.Text='PRETO')then
begin
Label10.Visible:=true;
Label10.text:='';
Label10.fontcolor:=talphacolorrec.lightgray;

end;




timer2.Enabled:=true;




If (Edit4.Text='marrom')or (Edit4.Text='Marrom')or(Edit4.Text='MARROM')then
begin
Label11.Visible:=true;

Label11.text:='0';
Label11.fontcolor:=talphacolorrec.Maroon;

end
Else If (Edit4.Text='vermelho')or(Edit4.Text='Vermelho')or(Edit4.Text='VERMELHO') then
begin
Label11.Visible:=true;

Label11.text:='00';
Label11.fontcolor:=talphacolorrec.Red;
end
Else If (Edit4.Text='laranja')or(Edit4.Text='Laranja')or(Edit4.Text='LARANJA') then
begin
Label11.Visible:=true;

Label11.text:='000';
Label11.fontcolor:=talphacolorrec.Orange;
end
Else If (Edit4.Text='amarelo')or(Edit4.Text='Amarelo')or(Edit4.Text='AMARELO')then
begin
Label11.Visible:=true;
Label11.text:='0000';
Label11.fontcolor:=talphacolorrec.Yellow;
end
Else If (Edit4.Text='verde')or (Edit4.Text='Verde')or(Edit4.Text='VERDE')then
begin
Label11.Visible:=true;
Label11.text:='00000';
Label11.fontcolor:=talphacolorrec.Green;
end
Else If (Edit4.Text='azul')or(Edit4.Text='Azul')or(Edit4.Text='AZUL') then
begin
Label11.Visible:=true;
Label11.text:='000000';
Label11.fontcolor:=talphacolorrec.Blue;
end
Else If (Edit4.Text='roxo' ) Or(Edit4.Text='Roxo' )or(Edit4.Text='ROXO' ) or(Edit4.Text='violeta' ) or(Edit4.Text='Violeta' ) or(Edit4.Text='VIOLETA' ) then
begin
Label11.Visible:=true;
Label11.text:='0000000';
Label11.fontcolor:=talphacolorrec.Purple;
end
Else If (Edit4.Text='cinza') or(Edit4.Text='Cinza')or(Edit4.Text='CINZA')then
begin
Label11.Visible:=true;
Label11.text:='00000000';
Label11.fontcolor:=talphacolorrec.Gray;
end
Else If (Edit4.Text='branco') or(Edit4.Text='Branco')or(Edit4.Text='BRANCO')then
begin
Label11.Visible:=true;
Label11.text:='000000000';
Label11.fontcolor:=talphacolorrec.lightgray;
end
Else If (Edit4.Text='lilas') or(Edit4.Text='Lilas')or(Edit4.Text='LILAS')then
begin
Label11.Visible:=true;
Label11.text:='0000000';
Label11.fontcolor:=talphacolorrec.purple;
end
Else If (Edit4.Text='abobora')or(Edit4.Text='Abobora')or(Edit4.Text='ABOBORA') then
begin
Label11.Visible:=true;
Label11.text:='000';
Label11.fontcolor:=talphacolorrec.orange;
end
Else If (Edit4.Text='preto') or(Edit4.Text='Preto')or(Edit4.Text='PRETO')then
begin
Label11.Visible:=true;
Label11.text:='';
Label11.fontcolor:=talphacolorrec.lightgray;

end;




If (Edit5.Text='marrom')or (Edit5.Text='Marrom')or(Edit5.Text='MARROM')then
begin
Label12.Visible:=true;
Label12.text:='1%';
Label12.fontcolor:=talphacolorrec.Maroon;
end
Else If (Edit5.Text='vermelho')or(Edit5.Text='Vermelho')or(Edit5.Text='VERMELHO') then
begin
Label12.Visible:=true;
Label12.text:='2%';
Label12.fontcolor:=talphacolorrec.Red;
end
Else If (Edit5.Text='ouro')or (Edit5.Text='Ouro')or(Edit5.Text='OURO')then
begin
Label12.Visible:=true;
Label12.text:='5%';
Label12.fontcolor:=talphacolorrec.Yellow;
end
Else If (Edit5.Text='prata') or(Edit5.Text='Prata')or(Edit5.Text='PRATA')then
begin
Label12.Visible:=true;
Label12.text:='10%';
Label12.fontcolor:=talphacolorrec.Silver;
end


Else If (Edit5.Text='"nenhum"')or (Edit5.Text='"Nenhum"')or(Edit5.Text='"NENHUM"')then
begin
Label12.Visible:=true;
Label12.text:='20%';
Label12.fontcolor:=talphacolorrec.lightgray

end

Else If (Edit5.Text='nenhum') or(Edit5.Text='Nenhum')or(Edit5.Text='NENHUM')then
begin
Label12.Visible:=true;
Label12.text:='20%';
Label12.fontcolor:=talphacolorrec.lightgray;

end;




end;





procedure TForm3.Timer2Timer(Sender: TObject);
begin
     Timer4.enabled:=true;
end;

procedure TForm3.Timer4Timer(Sender: TObject);
begin
     edit6.text:=label8.text+label9.text+label10.text+label11.text+'Ohms'+'    '+label12.text+'tol';
end;

end.
