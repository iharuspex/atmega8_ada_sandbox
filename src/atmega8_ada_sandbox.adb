with AVR;     use AVR;
with AVR.MCU; use AVR.MCU;
with AVR.Wait;

procedure Atmega8_Ada_Sandbox is
   LED : Boolean renames PORTD_Bits (0);

   procedure Wait_Ms is new AVR.Wait.Generic_Busy_Wait_Milliseconds
     (Crystal_Hertz => 8_000_000);

begin

   DDRD_Bits (0) := DD_Output;

   loop
      LED := High;
      Wait_Ms (500);
      LED := Low;
      Wait_Ms (500);
   end loop;

end Atmega8_Ada_Sandbox;
