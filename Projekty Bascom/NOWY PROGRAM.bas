$regfile = "m32def.dat"
$crystal = 1000000

$baud = 9600



'Ustawienie 30ms dla wcisni�tego przycisku

Config Debounce = 30

'Konfiguracja wy�wietlacza LCD 16*4
Config Lcd = 16 * 4
Config Lcdpin = Pin , Db4 = Portd.4 , Db5 = Portd.5 , Db6 = Portd.6 , Db7 = Portd.7 , E = Portd.3 , Rs = Portd.2

'Konfiguracja przycisk�w
Config Pina.0 = Input
Config Pina.1 = Input



'Poni�ej jest przypisanie portom nazw przycisk�w

Przycisk1 Alias Pina.0
Przycisk2 Alias Pina.1

' Ustawienie port�w wej�ciowych
Set Porta.0
Set Porta.1



Cls
Upperline

Lcd "START PROGRAMU"
Waitms 200

Do                                                          'Pocz�tek niesko�czonej p�tli

Debounce Przycisk1 , 0 , Przycisk1_sub , Sub
Debounce Przycisk2 , 0 , Przycisk2_sub , Sub




Loop
End                                                         'end program



Przycisk1_sub:
Cls

Return

Przycisk2_sub:
Upperline
Lcd "============"
Lowerline
Lcd "++++++++++++"
Thirdline
Lcd "============"
Waitms 200

Return



