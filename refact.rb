    class Person
        attr_accessor :first_name, :last_name
       
        def initialize(first_name, last_name, age)
           @first_name = first_name
           @last_name = last_name
           @age = age
        end
    
        def birthday
           @age += 1
        end
    end

    class Student < Person
        
        def talk 
            puts "Aquí es la clase de programación con Ruby?"
        end
        
        def introduce
            puts "Hola profesor. Mi nombre es #{self.first_name} #{self.last_name}."
        end
    end
    
    #test
    Student_1 = Student.new('Juan', 'Rivera', 34)
    Student_1.talk
    Student_1.introduce

    puts "------------------------------------------------------------------------" #Solo para diferenciar las pruebas de clases

    class Teacher < Person

        def talk 
            puts "Bienvenidos a la clase de programación con Ruby!"
        end

        def introduce
            puts "Hola alumnos. Mi nombre es #{self.first_name} #{self.last_name}."
        end
    end

    #test
    teacher_1 = Teacher.new('Roberto', 'Campos', 50)
    teacher_1.talk
    teacher_1.introduce
  
    puts "------------------------------------------------------------------------" 

    class Parent < Person

        def talk
            puts "Aquí es la reunión de apoderados?"
        end

        def introduce
            puts "Hola. Soy uno de los apoderados. Mi nombre es #{self.first_name} #{self.last_name}."
        end
    end


    #test
    parent_1 = Parent.new('Rosita', 'Torres', 60)
    parent_1.talk
    parent_1.introduce

      
#Se podria eliminar el metodo birthday y atributo age,para este caso en particular.
