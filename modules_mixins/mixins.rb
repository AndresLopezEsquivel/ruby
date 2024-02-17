# Here, I summarize what I learned about modules and mixins from
# https://ruby-doc.com/docs/ProgrammingRuby/html/tut_modules.html

# Mixins pretty much eliminate the need for multiple inheritance
# because they give us a controlled way of adding functionality to classes

# Module methods are methods whose names are
# prefixed by the module name

# On the other hand, instance methods within a
# module aren't prefixed by the module name.

# A module cannot have instances
# becasuse it is not a class, but it can
# be included within a class. 

# When a module is included within a class,
# all the module's instance methods are
# available as methods in the class as well.

# To make a reference to a module from a class definition, use the include keyword.
# The include keyword doesn't copy the module's instance methods into the class,
# instead, it makes a reference to them.

module Debug
    def whoAmI? # Check, the method's name is not prefixed by the module's name
      "#{self.class} (\##{self.object_id})"
    end
end

class Car
    include Debug # include the module into the class definition
    # ...
end

class Book
    include Debug # include the module into the class definition
    # ...
end

puts Car.new.whoAmI? # Example of output: Car (#60)
puts Book.new.whoAmI? # Example of output: Book (#80)
p Car.ancestors # [Car, Debug, Object, Kernel, BasicObject]
p Book.ancestors # [Book, Debug, Object, Kernel, BasicObject]
puts Car.new.is_a? Debug # true
puts Book.new.is_a? Debug # true

# Not only do we have access to the instance methods defined in the mixin,
# but we get access to the necessary instance variables as well.

module SomeModule

    attr_reader :a

    def set_value(a:)
        @a = a
    end

end

class SomeClass

include SomeModule

    def initialize(a:)
        set_value(a: a)
        puts "a: #{a}" # Calling getter instance method
        puts "a: #{@a}" # Calling instance variable
    end

end

puts
SomeClass.new(a: 100)

# a: 100
# a: 100

# Let's include the Comparable module to a class
# so comparisons between objects can be performed

# For this to work, Comparable assumes that any 
# class that uses it defines the operator <=>

# By doing this, we'll have access to
# comparison methods such as
# <=>, <, >, ==, <=, >=

class Song

    include Comparable

    attr_reader :name, :duration

    def initialize(name:, duration:)
        @name = name
        @duration = duration
    end

    def <=>(song)
        self.duration <=> song.duration
    end

end

song_1 = Song.new(name: "Song_1", duration: 60)
song_2 = Song.new(name: "Song_2", duration: 120)

puts
p song_1 <=> song_2 # 1
p song_1 < song_2 # true
p song_1 == song_2 # false
p song_1 > song_2 # false
p song_1 <= song_2 # true
p song_1 >= song_2 # false

# Let's now use the Enumerator module within a class

# First, write an iterator method called each
# which returns the elements of your collection in turn
# and, then, include the Enumerator module

# By mixing in the Enumerator module, we'll
# have access to methods such as map and include?

class Tasks

    attr_reader :school, :work

    def initialize(school:, work:)
        @school = school
        @work = work
    end

    def each
        (school + work).each do |task|
            yield(task)
        end
    end

end

tasks = Tasks.new(school: ["essay", "thesis"], work: ["web-site", "documentation"])

puts
tasks.each { |task| print "#{task} "} # essay thesis web-site documentation