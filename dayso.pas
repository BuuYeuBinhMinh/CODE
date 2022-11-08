uses crt;
type mang=array[1..1000] of longint;
var fi,fo:text;
    n,x,i:longint;
    A:mang;
        function fx(n:longint):longint;
        var so,i:longint;
            st:string;
        begin
        fx:=0;
        str(n,st);
        for i:=1 to length(st) do
                begin
                val(st[i],so);
                fx:=fx+(so*so);
                end;
        end;

        function trung(A:mang; x,n:longint):boolean;
        var i:longint;
        begin
        trung:=false;
        for i:=1 to x do if n=A[i] then exit(true);
        end;
begin
        assign(fi,'dayso.inp'); reset(fi);
        assign(fo,'dayso.out'); rewrite(fo);
        read(fi,n);
        A[1]:=n;
        x:=2;
        while trung(A,x,fx(n))=false do
        begin
        A[x]:=fx(n);
        n:=fx(n);
        inc(x);
        end;
        for i:=1 to x-1 do write(fo,A[i],#32); write(fo,fx(n));
        close(fi); close(fo);
end.
