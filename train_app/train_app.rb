initial = File.new("/Users/macadocious/Desktop/MTA/stops.txt", "r")

# train_hash = File.new("/Users/macadocious/Downloads/google_transit/stops_2". "a+")

@array = []
@second_array = []



initial.each{|lines| @array << lines.split(",")}
@array.each{|individual| @second_array << individual.reject{|blank| blank == ""}}
@second_array.reject!{|bad_entries| bad_entries[4] == "0"}

@second_array.map{|y| y[0].gsub!(y[0][1,2], "")}

MTA = {}

@one = []
@two =[]
@three = []
@four = []
@five = []
@six = [] 
@seven = []
@a = []
@b = []
@d = []
@e = []
@f = []
@g = []
@h = []
@j = []
@l = []
@m = []
@n = []
@q = []
@r = []
@s = []

@second_array.each do |x|

        line = x[0]
          case line
            when "1"
            
            @one << x
            train = @one
          when "2"
            @two << x
            train = @two
          when "3"
            @three << x
            train = @three
            when "4"
            @four << x
            train = @four
            when "5"
            @five << x
            train = @five
            when "6"
            @six << x
            train = @six
            when "7"
            @seven << x
            train = @seven
            when "A"
            @a << x
            train = @a
            when "B"
            @b << x
            train = @b
            when "D"
            @d << x
            train = @d
            when "E"
            @e << x
            train = @e
            when "F"
            @f << x
            train = @f
            when "G"
            @g << x
            train = @g
            when "H"
            @h << x
            train = @h
            when "J"
            @j << x
            train = @j
            when "L"
            @l << x
            train = @l
            when "M"
            @m << x
            train = @m
            when "N"
            @n << x
            train = @n
            when "Q"
            @q << x
            train = @q
            when "R"
            @r << x
            train = @r
            when "S"
            @s << x
            train = @s
            end
    
        MTA[line] = train
end
puts MTA
initial.close 
# MTA

