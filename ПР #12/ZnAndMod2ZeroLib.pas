unit ZnAndMod2ZeroLib;
interface
  function ZnAndMod2Zero(n:integer):boolean;
implementation
  function ZnAndMod2Zero(n:integer):boolean;
  begin
    if (n >= 0) and (n mod 2 = 0) then begin
      ZnAndMod2Zero := true;
    end else
      begin
        ZnAndMod2Zero := false;
      end;  
  end;
  
begin 
end.