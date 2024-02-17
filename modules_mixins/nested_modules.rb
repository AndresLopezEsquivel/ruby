module OuterModule

    module InnerModule1
        CONST_1 = 1

        def self.module1_method
            "Hi, from #{self}"
        end

        class InnerClass1
            # ...
        end
    end

    module InnerModule2
        CONST_2 = 2

        def self.module2_method
            "Hi, from #{self}"
        end

        class InnerClass2
            # ...
        end
    end

end

p OuterModule::InnerModule1::CONST_1 # 1
p OuterModule::InnerModule1.module1_method # "Hi, from OuterModule::InnerModule1"
p OuterModule::InnerModule1::InnerClass1.new # #<OuterModule::InnerModule1::InnerClass1:0x00000001024fd618>

puts
p OuterModule::InnerModule2::CONST_2 # 2
p OuterModule::InnerModule2.module2_method # "Hi, from OuterModule::InnerModule2"
p OuterModule::InnerModule2::InnerClass2.new # #<OuterModule::InnerModule2::InnerClass2:0x0000000105cfd2c0>