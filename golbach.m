% Script de Goldbach: Primera pareja encontrada
clc;
clear;

n = input('Ingrese un numero par mayor a 2: ');

% Validación
if mod(n, 2) != 0 || n <= 2
    fprintf('Error: Debe ser un numero par mayor que 2.\n');
else
    encontrado = false;
    lista_primos = primes(n);
    
    for i = 1:length(lista_primos)
        p1 = lista_primos(i);
        p2 = n - p1;
        
        if isprime(p2)
            fprintf('Resultado: %d = %d + %d\n', n, p1, p2);
            encontrado = true;
            break; % Sale del bucle tras el primer hallazgo
        end
    end
end