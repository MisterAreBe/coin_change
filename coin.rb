def min_coins(cents)
    used = {}
    count = 0
    coins = {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
    until cents == 0
        coins.each do |c|
            if cents < c[1]
                cents += c[1]
            else
                if c[0] == :dime
                    count = 0
                elsif c[0] == :nickel
                    count = 0
                elsif c[0] == :penny
                    count = 0
                end
                count += 1
                used.store(c[0], count)
            end
            cents -= c[1]
        end
    end
    used
end