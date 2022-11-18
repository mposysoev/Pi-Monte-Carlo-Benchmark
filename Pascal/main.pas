program pimc;

var
    result: double;
    number_of_iterations: int64 = 1000000;

function calculate_pi(n: int64) : double;
var
    counter, x, y: double;
    i: int64;
begin
    counter := 0;
    i := 0;
    while (i < n) do
        begin
            x := random;
            y := random;
            if x*x+y*y < 1.0 then
            begin
                counter := counter + 1;
            end;
            i := i + 1;
        end;
        
    calculate_pi := 4.0 * counter / n;
end;


begin



result := calculate_pi(number_of_iterations);

writeln(result);

end.
