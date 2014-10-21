def tableMax(table)
    table.flatten.inject do |max, product|
        product >= max ? product : max
    end
end

def tableMin(table)
    table.flatten.inject do |min, product|
        product <= min ? product : min
    end
end