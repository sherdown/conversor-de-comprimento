medir ={}

medir.metroParaCentimetro = function(valor)
  local centimetro = valor * 100
  return centimetro
end

medir.metroParaQuilometro = function(valor)
  local quilometro = valor / 1000
  return quilometro
end

medir.metroParaPolegadas = function(valor)
  local polegadas = valor * 39.3700787
  return polegadas
end

medir.metroParaJardas = function(valor)
  local jardas = valor / 0.9144
  return jardas
end








return medir