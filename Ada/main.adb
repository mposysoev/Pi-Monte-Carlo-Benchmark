with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;



procedure main is
  Random_Generator : Generator;
  Number_Of_Iteration : Integer;
  Result : Float;

  function Calculate_Pi (Number_Of_Iteration: Integer) return Float is
    Counter : Integer := 0;
    begin
      for Iteration in 1..Number_Of_Iteration loop
        if Random (Random_Generator) ** 2 + Random (Random_Generator) ** 2 <= 1.0 then
          Counter := Counter + 1;
        end if;
      end loop;
      return 4.0 * Float(Counter) / Float(Number_Of_Iteration);
    end Calculate_Pi;

begin	 

	Number_Of_Iteration := 1_000_000_000;
  Put_Line("The result for Pi number is equal: ");
  Result := Calculate_Pi(Number_Of_Iteration);
  Put_Line(Float'Image(Result));
end main;
