program Project1;
var
  i, j, iMin: integer;
  arr: array of integer;
begin
  SetLength(arr, Random(12));

  Write('[ ');
  for i := 0 to Length(arr) - 1 do
  begin
    arr[i] := Random(20);
    write( arr[i] );
    Write(' ');
  end;
  Write(' ]');

  for j := 0 to Length(arr)-1 do
  begin
       iMin := j;

       for i := j+1 to Length(arr)-1 do
       begin
            if (arr[i] < arr[iMin]) then
               iMin := i;
       end;

       if iMin <> j then
       begin
         arr[iMin] := arr[iMin] xor arr[j];
         arr[j] := arr[iMin] xor arr[j];
         arr[iMin] := arr[iMin] xor arr[j];
       end;
  end;

  Writeln;
  Write('[ ');
  for i := 0 to Length(arr) - 1 do
  begin
    write( arr[i] );
    Write(' ');
  end;
  Write(' ]');

  Readln;
end.
