

class Employee

    attr_reader :name, :title, :boss, :salary   
    attr_writer :boss
    
    def initialize(name, title,salary, boss = nil)
        @name = name
        @title = title
        @boss = boss
        @salary = salary
    end

      def bonus(multiplier)
        self.salary * multiplier
      end

    def inspect
        @name.inspect
    end
    #   def add_boss(manager)
    #     self.boss = manager
    #     self.boss.employees << self
    #   end
end

