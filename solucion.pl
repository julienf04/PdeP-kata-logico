% La solución va acá. Éxitos!



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 1. Tipos de instrumentos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%% Personas que fueron al conservatorio juntos %%%%%%%%%%%%%%%%%%%%%%%%


% "Rodolfo fué al conservatorio con Charly.".
% Es un hecho, por lo que hay que definirlo usando un predicado.
fueronJuntosAlConservatorio(rodolfo, charly).




%%%%%%%%%%%%%%%%%%%%%%%% Personas que tienen algún gusto conocido %%%%%%%%%%%%%%%%%%%%%%%%


% "A Mauricio le gusta escuchar música.".
% Es un hecho, por lo que hay que definirlo usando un predicado.
leGusta(mauricio, escucharMusica).




%%%%%%%%%%%%%%%%%%%%%%%% Personas que tocan instrumentos %%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%% "Charly toca el teclado y el piano.".
% Charly toca el teclado. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(charly, teclado).
% Charly toca el piano. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(charly, piano).


%%%%%%%%%% "Ricardo toca la guitarra pero no la batería.".
% Ricardo toca la guitarra. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(ricardo, guitarra).
% No es necesario definir que Ricardo no toca la batería, ya que es falso que Ricardo toca la batería, y
% debido al Principio de Universo Cerrado, todo lo desconocido es falso.


%%%%%%%%%% "Eduardo toca la guitarra, bajo, batería y teclados.".
% Eduardo toca la guitarra. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(eduardo, guitarra).
% Eduardo toca el bajo. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(eduardo, bajo).
% Eduardo toca la batería. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(eduardo, bateria).
% Eduardo toca el teclado. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(eduardo, teclado).


%%%%%%%%%% "A Mauricio le gusta escuchar música pero no sabe tocar la guitarra.".
% Que a Mauricio le gusta escuchar música fue definido más arriba, en la sección de Personas que tienen algún gusto conocido.
% No es necesario definir que Mauricio no sabe tocar la guitarra, ya que es falso que Mauricio sabe tocar la guitarra, y
% debido al Principio de Universo Cerrado, todo lo desconocido es falso.


%%%%%%%%%% "Rodolfo fué al conservatorio con Charly, así que aprendió a tocar lo mismo que él.".
% Que Rodolfo fue al conservatorio con Charly fue definido más arriba, en la sección de Personas que fueron al conservatorio juntos.
% Es una regla, por lo que se va a cumplir si los antecedentes se cumplen.
% Es importante tener en cuenta las palabras "así que" en el enunciado, ya que implica que fue necesario que hayan ido
% juntos al conservatorio para que Rodolfo haya aprendido a tocar lo mismo que Charly, por lo que es una condición necesaria
% a tener en cuenta al momento de definir por comprensión los instrumentos que toca Rodolfo.
% Como es un hecho que Rodolfo fue al conservatorio con Charly, el antecedente de si fueron juntos
% al conservatorio siempre será verdadero, pero eso no implica que deje de ser un antecedente a verificar.
% Por ejemplo, si en un futuro la base de conocimiento cambia y Rodolfo al final no fue al conservatorio con Charly, implicaría que
% Rodolfo no tocaría los mismos instrumentos que Charly (a priori).
% El otro antecedente indica que si Charly toca un instrumento, entonces Rodolfo también.
toca(rodolfo, Instrumento) :- fueronJuntosAlConservatorio(rodolfo, charly), toca(charly, Instrumento).


%%%%%%%%%% "José toca guitarra, bajo y batería.".
% José toca la guitarra. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(jose, guitarra).
% José toca el bajo. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(jose, bajo).
% José toca la batería. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(jose, bateria).


%%%%%%%%%% "Armando toca la pandereta y la batería.".
% Armando toca la pandereta. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(armando, pandereta).
% Armando toca la batería. Es un hecho, por lo que hay que definirlo usando un predicado.
toca(armando, bateria).










%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2. Grosos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%% "Los grosos tocan batería y guitarra. Por ejemplo, Eduardo y José son grosos.".
% Es una regla con 2 antecedentes: la Persona toca la batería, la Persona toca la guitarra.
groso(Persona) :- toca(Persona, bateria), toca(Persona, guitarra).










%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3. Hacen dúos %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%% "Dos personas distintas pueden hacer dúos si tocan algún tipo de instrumento en común."
% "Por ejemplo: Charly y Eduardo pueden hacer un dúo (ambos tocan teclados)."
% Es una regla con 2 antecedentes: una Persona toca un Instrumento, la Otra Persona toca el mismo Instrumento.
% La oración no especifíca qué pasa cuando las personas son iguales, así que lo tome como que la consulta
% falla exitosamente (muestra falso), ya que no se me hace sentido que un misma persona pueda hacer un dúo.
hacenDuos(Persona, OtraPersona) :- Persona \= OtraPersona, toca(Persona, Instrumento), toca(OtraPersona, Instrumento).










%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Tests %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



:- begin_tests(template).

test(fake_test) :-
	3 is 2 + 1.

:- end_tests(template).