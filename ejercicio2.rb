module Habilidades
    
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end
    
module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    attr_accessor :nombre

    def initialize(nombre)
        @nombre = nombre 

    end
end

class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end


class Pinguino < Ave
include Habilidades::Nadador
include Habilidades::Caminante
include Alimentacion::Carnivoro
end

# pin = Pinguino.new('pingui')
# puts "Mi nombre es #{pin.nombre} y ahora #{pin.nadar} ...... #{pin.sumergir} tambien #{pin.caminar} y ademas #{pin.comer} :)"

class Paloma < Ave

    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    
end

palo = Paloma.new('palo')

# puts palo.volar  
# puts palo.caminar 
# puts palo.comer
 
 


class Pato < Ave
include Habilidades::Nadador
include Habilidades::Caminante
include Alimentacion::Herbivoro
end

# pato_1 = Pato.new('feo')
# puts pato_1.nadar
# puts pato_1.caminar
# puts pato_1.comer



class Perro < Mamifero
include Habilidades::Nadador
include Habilidades::Caminante
include Alimentacion::Carnivoro
end

# perro_1 = Perro.new('Quasi')
# puts perro_1.nadar
# puts perro_1.caminar
# puts perro_1.comer

class Gato < Mamifero
include Habilidades::Caminante
include Alimentacion::Carnivoro
end

# gato_1 = Gato.new('cucho')
# puts gato_1.caminar
# puts gato_1.comer


class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

# vaca_1 = Vaca.new('lechera')
# puts vaca_1.caminar
# puts vaca_1.comer

class Mosca < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end



class Mariposa < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end




class Abeja < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end



# Se incluyeron un solo tipo de alimentacion por cada uno, el enunciado especifica 'tipo de alimentacion' en singular por ende deberia referir a un tipo
# Hay algunos animales que pueden realizar las dos acciones en un supuesto, o tener mas de un tipo, pero al llamar al metodo del modulo
# def 'comer' se repite, por ende arroja el mismo resultado para ambos, se descarta esa opcion y se podria añadir un nuevo submodulo con su propio metodo : 
 
# module Alimentacion
#     module Herbivoro
#         def comer
#             'Puedo comer plantas!'
#         end
#     end
#     module Carnivoro
#         def comer
#             'Puedo comer carne!'
#         end
#     end
#     module Omnivoro
#         def comer
#             'puedo comer carne y plantas'
#         end
#     end
# end

#include Alimentacion::Omnivoro

#En el caso expueso tambien se podria diferenciar el metodo de modulo por 'def comer_plantas' y 'def comer_carne' asi se podrian 
# aplicar ambos sin que se repita el metodo, ya que en la clase pasan hacer metodos de instancia.




