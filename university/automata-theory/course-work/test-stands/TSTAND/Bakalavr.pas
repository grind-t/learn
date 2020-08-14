unit Bakalavr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  TextVariant : TextFile;
  LogFile,LogFileS,LogFileY: TextFile;
  FileCurrent: TextFile;
  InputString: string;
  variant: string;
  test,teststate: string;
  xx:string;
  i,j,counter,x,n,sum,proc,mifc,str,mifcS,mifcY: integer;
  S: array[1..4, 1..4] of integer;
  Y: array[1..4, 1..4] of integer;
  s11,s12,s13,s14,s15,s21,s22,s23,s24,s25,s31,s32,s33,s34,s35,s41,s42,s43,s44,s45:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
mifc:=0;
mifcS:=0;
mifcY:=0;
j:=1;
counter:=0;
randomize();
s11:=0;s12:=0;s13:=0;s14:=0;s15:=0;s21:=0;s22:=0;s23:=0;s24:=0;
s25:=0;s31:=0;s32:=0;s33:=0;s34:=0;s35:=0;s41:=0;s42:=0;s43:=0;s44:=0;s45:=0;
AssignFile(LogFile, extractfilepath(paramstr(0))+'rom.mif');
ReWrite(LogFile);
AssignFile(LogFileS, extractfilepath(paramstr(0))+'romS.mif');
ReWrite(LogFileS);
AssignFile(LogFileY, extractfilepath(paramstr(0))+'romY.mif');
ReWrite(LogFileY);
AssignFile(TextVariant, extractfilepath(paramstr(0))+'State.txt');
AssignFile(FileCurrent, extractfilepath(paramstr(0))+'StateCurrent.txt');
ReWrite(FileCurrent);
if FileExists(extractfilepath(paramstr(0))+'State.txt')=false then ShowMessage('Файл поврежден или не существует') else
begin
       Append(LogFile);
      WriteLn(LogFile,'WIDTH=2;');
      WriteLn(LogFile,'DEPTH=128;');
      WriteLn(LogFile,'');
      WriteLn(LogFile,'ADDRESS_RADIX=UNS;');
      WriteLn(LogFile,'DATA_RADIX=BIN;');
      WriteLn(LogFile,'');
      WriteLn(LogFile,'CONTENT BEGIN');
      CloseFile(LogFile);
 variant:=Edit1.Text;
 Reset(TextVariant);
 while not eof(TextVariant) do
  begin
  Readln(TextVariant,InputString);
  if InputString='variant' then
   begin
    Readln(TextVariant,InputString);
     if InputString=variant then
      begin
        //Append(FileCurrent);
        //WriteLn(FileCurrent,'v');
        //WriteLn(FileCurrent,'111');
        //CloseFile(FileCurrent);
       for n:=1 to 4 do
        begin
         Readln(TextVariant,InputString);

         //Append(FileCurrent);
         //WriteLn(FileCurrent,InputString);
         //CloseFile(FileCurrent);

         test:=copy(InputString,2,1);
         if test='x' then test:='0';
         S[n][1]:=strtoint(test);

         test:=copy(InputString,5,1);
         if test='x' then test:='0';
         S[n][2]:=strtoint(test);

         test:=copy(InputString,8,1);
         if test='x' then test:='0';
         S[n][3]:=strtoint(test);

         test:=copy(InputString,11,1);
         if test='x' then test:='0';
         S[n][4]:=strtoint(test);

        // test:=copy(InputString,14,1);
        // if test='x' then test:='0';
        // S[n][5]:=strtoint(test);

         test:=copy(InputString,15,1);
         if test='x' then test:='0';
         Y[n][1]:=strtoint(test);

         test:=copy(InputString,18,1);
         if test='x' then test:='0';
         Y[n][2]:=strtoint(test);

         test:=copy(InputString,21,1);
         if test='x' then test:='0';
         Y[n][3]:=strtoint(test);

         test:=copy(InputString,24,1);
         if test='x' then test:='0';
         Y[n][4]:=strtoint(test);

         //test:=copy(InputString,30,1);
         //if test='x' then test:='0';
         //Y[n][5]:=strtoint(test);

        end;

        //for mif state
          Append(LogFileS);
          WriteLn(LogFileS,'WIDTH=2;');
          WriteLn(LogFileS,'DEPTH=16;');
          WriteLn(LogFileS,'');
          WriteLn(LogFileS,'ADDRESS_RADIX=UNS;');
          WriteLn(LogFileS,'DATA_RADIX=BIN;');
          WriteLn(LogFileS,'');
          WriteLn(LogFileS,'CONTENT BEGIN');
          CloseFile(LogFileS);
        for n:=1 to 4 do
        begin
         for str:=1 to 4 do
          begin
            if S[str][n]=0 then teststate:='00';
            if S[str][n]=1 then teststate:='00';
            if S[str][n]=2 then teststate:='01';
            if S[str][n]=3 then teststate:='10';
            if S[str][n]=4 then teststate:='11';
            Append(LogFileS);
            WriteLn(LogFileS,'   '+inttostr(mifcS)+'   :   '+teststate+';');
            CloseFile(LogFileS);
            mifcS:=mifcS+1;
          end;
        end;
        Append(LogFileS);
       // WriteLn(LogFileS,'   [20..31]   :   00;');
        WriteLn(LogFileS,'END;');
        CloseFile(LogFileS);
       //mif  state end



 //for mif out
          Append(LogFileY);
          WriteLn(LogFileY,'WIDTH=3;');
          WriteLn(LogFileY,'DEPTH=16;');
          WriteLn(LogFileY,'');
          WriteLn(LogFileY,'ADDRESS_RADIX=UNS;');
          WriteLn(LogFileY,'DATA_RADIX=BIN;');
          WriteLn(LogFileY,'');
          WriteLn(LogFileY,'CONTENT BEGIN');
          CloseFile(LogFileY);
        for n:=1 to 4 do
        begin
         for str:=1 to 4 do
          begin
            if Y[str][n]=0 then teststate:='111';
            if Y[str][n]=1 then teststate:='000';
            if Y[str][n]=2 then teststate:='001';
            if Y[str][n]=3 then teststate:='010';
            if Y[str][n]=4 then teststate:='011';
            if Y[str][n]=5 then teststate:='100';
            if Y[str][n]=6 then teststate:='101';
            Append(LogFileY);
            WriteLn(LogFileY,'   '+inttostr(mifcY)+'   :   '+teststate+';');
            CloseFile(LogFileY);
            mifcY:=mifcY+1;
          end;
        end;
        Append(LogFileY);
       // WriteLn(LogFileY,'   [20..31]   :   00;');
        WriteLn(LogFileY,'END;');
        CloseFile(LogFileY);
       //mif  out end
 

      end;
   end;
  end;
    While counter<>100 do
   begin
    x:=random(4);
      case x of
        0 :  i:=1;
        1 :  i:=2;
        2 :  i:=3;
        3 :  i:=4;
      end;
    if (i=1) and (j=1) then s11:=1;
    if (i=2) and (j=1) then s21:=1;
    if (i=3) and (j=1) then s31:=1;
    if (i=4) and (j=1) then s41:=1;
    if (i=1) and (j=2) then s12:=1;
    if (i=2) and (j=2) then s22:=1;
    if (i=3) and (j=2) then s32:=1;
    if (i=4) and (j=2) then s42:=1;
    if (i=1) and (j=3) then s13:=1;
    if (i=2) and (j=3) then s23:=1;
    if (i=3) and (j=3) then s33:=1;
    if (i=4) and (j=3) then s43:=1;
    if (i=1) and (j=4) then s14:=1;
    if (i=2) and (j=4) then s24:=1;
    if (i=3) and (j=4) then s34:=1;
    if (i=4) and (j=4) then s44:=1;
    if (i=1) and (j=5) then s15:=1;
    if (i=2) and (j=5) then s25:=1;
    if (i=3) and (j=5) then s35:=1;
    if (i=4) and (j=5) then s45:=1;
    if s[i][j]<>0 then
     begin
      case x of
        0 : xx:='00';
        1 : xx:='01';
        2 : xx:='10';
        3 : xx:='11';
      end;
      Append(LogFile);
      WriteLn(LogFile,'   '+inttostr(mifc)+'   :   '+xx+';');
      CloseFile(LogFile);
      mifc:=mifc+1;
      counter:=counter+1;
     end;
     case s[i][j] of
      1 : j:=1;
      2 : j:=2;
      3 : j:=3;
      4 : j:=4;
      5 : j:=5;
     end;
   end;
sum:=s11+s12+s13+s14+s15+s21+s22+s23+s24+s25+s31+s32+s33+s34+s35+s41+s42+s43+s44+s45;
proc:=sum*5;
      Append(LogFile);
       WriteLn(LogFile,'   [100..127]   :   00;');
        WriteLn(LogFile,'END;');
     // Write(LogFile,'Количество исследованных переходов='+inttostr(sum));
     // WriteLn(LogFile,' ('+inttostr(proc)+'%) ');
     CloseFile(LogFile);

   end;
//closeFile(TextVariant);
end;
end.
