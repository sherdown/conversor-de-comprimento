medir = require("ConversorMetro")
print("Medidor")
print(" ") -- esse print vazio serve para da um espaço
print("qual medida voce quer converte?")
print(" ") -- esse print vazio serve para da um espaço
::inicio::
print([[
1 - metro para centimetro
2 - metro para quilometro
3 - metro para polegadas
4 - metro para jardan
0 - sair
]])

print("Para qual voce quer converder?")
escolha = tonumber(io.read())
print(" ") -- esse print vazio serve para da um espaço

if (escolha == 1) then
  print("quantos metro voce gostaria de medir para centimetro?")
  valor = tonumber(io.read())             --<< escolhe quantos metro voce quer converter
  print(valor .. " Metro equivale a " .. medir.metroParaCentimetro(valor) .. " Centimetro") --medir.metroParaCentimetro(valor) nesse caso o valor é o parametro que faz com que a conversao aconteça
  --no print a cima o 'valor' ira retorna a sua escolha de conversao, medir.metroParaCentimetro() é uma function que converte o 'valor'
  goto inicio -- esse goto sempre ira forma um loop para voce tenta diversas vezes o codigo
  
elseif (escolha == 2) then --outra forma de fazer e ter o mesmo resuldado
  print("quantos metro voce gostaria de medir para quilometro?")
  valor = tonumber(io.read())             --<< escolhe quantos metro voce quer converter
  km = medir.metroParaQuilometro(valor)  -- ele converte o 'valor' e da o resuldado e armazena na variavel km
  print(valor .. " Metro equivale a " .. km .. " Quilometro") 
  -- nesse print o 'valor' ira retorna a sua escolha de conversao, 'km' é uma variavel que ira guarda o medir.metroParaQuilometro() e mostra no print
  goto inicio -- esse goto sempre ira forma um loop para voce tenta diversas vezes o codigo
  
elseif (escolha == 3) then
  print("quantos metro voce gostaria de medir para Polegadas?") 
  valor = tonumber(io.read())
  io.write(valor .. "m metro equivale a ")
  print(medir.metroParaPolegadas(valor) .. "polegadas")
  goto inicio -- esse goto sempre ira forma um loop para voce tenta diversas vezes o codigo

elseif (escolha == 4) then
  print("quantos metro voce gostaria de medir para jardas?")
  valor = tonumber(io.read())
  print(valor .. " metro equivale a " .. medir.metroParaJardas(valor) .. "jardas")
  print(" ") -- esse print vazio serve para da um espaço
  goto inicio -- esse goto sempre ira forma um loop para voce tenta diversas vezes o codigo

elseif (escolha == 0) then -- ao parte 0 acaba com o loop
  print("FIM")
else -- esse else serve para erros
  print("sinto mundo informa mais voce fez um escolha errada")
  print("leia as opcoes primeiro e tente novamente")
  print(" ") -- esse print vazio serve para da um espaço
  goto inicio -- esse goto sempre ira forma um loop para voce tenta diversas vezes o codigo
end