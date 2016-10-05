# Ruby Object Examples

The following examples were used in our Ruby intro classes.  They expand upon the content of the lectures..

### Zoo Example via console

The following console log messages can be used to interact with zoo.rb from within `irb` (Interactive Ruby).

```
load 'zoo.rb'
zoo = Zoo.new
zoo.addAnimal Fish.new "Clownfish"
zoo.addAnimal Fish.new "Rumblefish"
zoo.addAnimal Zebra.new "Boring Horse"
zoo.addAnimal Fish.new "Zebrafish"
zoo.addAnimal Tiger.new name:"Bengal"
tiger = zoo.exhibits.last
tiger.kill zoo.exhibits.first  #kill the poor Clownfish
zoo.exhibits
tiger.kill zoo.exhibits[3]     #kill the poor Zebrafish
zoo
zoo.cleanUp                    #cleanup the zoo
zoo.graveyard.each {|animal| puts animal.name }

```