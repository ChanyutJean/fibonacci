class Fibonacci
    @stack 
    @count
    @result
    @goal

    def initialize(index)
        @stack = []
        @count = 0
        @result = 0
        @goal = index - 1
    end

    def evaluate
        add(1)
        recurse
        add(2)
        recurse
        if @stack.empty?
            puts @result
        else
            remove
        end
    end

    def recurse
        if @count > @goal
            remove
        elsif @count == @goal
            remove
            @result += 1
        else
            evaluate
        end
    end

    def add(number)
        @count += number
        @stack << number
    end

    def remove
        @count -= @stack.last
        @stack.pop
    end
end

f = Fibonacci.new(25)
f.evaluate()
