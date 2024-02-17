# Modules is a kind of container of
# classes, methods and/or constants.

# Warning: Modules are not classes,
# so instances cannot be created from them

module LengthConversions

    # When creating a method inside
    # of a module, the method's name
    # needs to be prefixed with the
    # name of the module. To do that,
    # the self keyword can be used

    def LengthConversions.cm_to_mm(cm) # Same as: def self.cm_to_mm(cm)
        cm * 10
    end
    
    def self.m_to_cm(m) # Same as: def LengthConversions.m_to_cm(m)
        m * 100
    end

    def self.km_to_m(km) # Same as: def LengthConversions.km_to_m(km)
        km * 1000
    end

    # When calling another method that also lives
    # inside the current module,
    # we can either prefix it with the
    # module's name (or self) or not.
    
    def LengthConversions.km_to_cm(km)
        m = self.km_to_m(km)
        self.m_to_cm(m)
    end
        
    def self.km_to_mm(km)
        m = km_to_m(km)
        cm = m_to_cm(m)
        cm_to_mm(cm)
    end

end

km = 0.001

puts "#{km} km are #{LengthConversions.km_to_cm(km)} cm" # 0.001 km are 100.0 cm
puts "#{km} km are #{LengthConversions.km_to_mm(km)} mm" # 0.001 km are 1000.0 mm

# Modules let us work with
# methods with identical names

module Square
    def self.area(side)
        side * side
    end
end

module Rectangle
    def self.area(width, height)
        width * height
    end
end

p Square.area(10) # 100
p Rectangle.area(10, 20) # 200