class RomeConverter

    VALUES = [
      ["M", 1000], 
      ["CM", 900], 
      ["D", 500], 
      ["CD", 400], 
      ["C", 100], 
      ["XC", 90], 
      ["L", 50], 
      ["XL", 40], 
      ["X", 10], 
      ["IX", 9], 
      ["V", 5], 
      ["IV", 4], 
      ["I", 1], 
    ]
    def to_rome n
        roman = ""
    
        VALUES.each do |pair|
            letter = pair[0]
            value = pair[1]
            roman += letter*(n / value)
            n = n % value
        end
      
        return roman
    end

    def to_dec n
        result = 0
        roman_mapping= { 1000 => "M",
                         900 => "CM",
                         500 => "D",
                         400 => "CD",
                         100 => "C",
                         90 => "XC",
                         50 => "L",
                         40 => "XL",
                         10 => "X",
                         9 => "IX",
                         5 => "V",
                         4 => "IV",
                         1 => "I"
                       }

        str = n
        roman_mapping.values.each do |roman|
        while str.start_with?(roman)
            result += roman_mapping.invert[roman]
            str = str.slice(roman.length, str.length)
        end
        end
        result 
    end
end
