require "./items.rb"

class Container
    @container_type
    def initialize container_type
        @error_total = 0
        @cog_height_type = []
        @container_type = container_type
        @items = []
    end

    def additems (item)
        @items.push(item)
    end

    def height_max()
        i = 0
        @height_max = 0
        until i >= @items.count() do
            if ( @items[i].get_height > @height_max)
                @height_max = @items[i].get_height
            end
            i += 1
        end
        return @height_max
    end

    def cog_height
        i = 0
        
        until i >= @items.count() do
            @cog_height_type[i] = @items[i].get_cog_height_type
            i += 1
        end
        return @cog_height_type
    end

    def error_item()
        i = 0
        @error_item = 0
        until i >= @items.count() do
            @error_item = @items[i].get_error
            i += 1
        end
        return @error_item
    end


    def total_lenght
        i = 0
        @total_lenght = 0
        until i >= @items.count() do
            @total_lenght += @items[i].get_height
            i += 1
        end
        return @total_lenght
    end

    def total_weight
        i = 0
        @total_weight = 0
        until i >= @items.count() do
            @total_weight += @items[i].get_height
            i += 1
        end
        return @total_weight
    end

    def container_type
        i = 0
        @height_max = height_max()
        until i >= @items.count() do
            if @container_type == "FR20" || @container_type == "FR40"
                @items[i].set_height_max(@height_max)
                puts "Sản phầm #{@items[i]}"
                @items[i].flatrack(@container_type)
            elsif @container_type == "OT20" || @container_type == "OT40"
                puts "Sản phầm #{@items[i]}"
                @items[i].open_top(@container_type)
            end
            i += 1
        end

        puts " *********Total********** "
        zone_K()

    end

    def zone_K()
        total_lenght = total_lenght()
        
        case @container_type
        when "FR20"
            if total_lenght > 597
                puts "Length may exceeds container dimension"
                @error_total += 1
                zone_L()
            else 
                zone_L()
                
            end
        when "FR40"
            if total_lenght > 1217.8
                puts "Length may exceeds container dimension"
                @error_total += 1
                zone_L()
            else 
                zone_L()
                
            end
        when "OT20"
            if total_lenght > 589
                puts "Length may exceeds container dimension"
                @error_total += 1
                zone_L()
            else 
                zone_L()
                
            end
        when "OT40"
            if total_lenght > 1200
                puts "Length may exceeds container dimension"
                @error_total += 1
                zone_L()
            else 
                zone_L()
                
            end
        end
    end

    def zone_L()
        total_weight = total_weight()

        case @container_type
        when "FR20"
            if total_weight > 20
                puts "Weight may exceeds max payload"
                @error_total += 1
                final()
            else 
                final()                
            end
        when "FR40"
            if total_weight > 38.8
                puts "Weight may exceeds max payload"
                @error_total += 1
                final()                
            else 
                final()                
                
            end
        when "OT20"
            if total_weight > 26.7
                puts "Weight may exceeds max payload"
                @error_total += 1
                final()                
            else 
                final()                
                
            end
        when "OT40"
            if total_weight > 28.1
                puts "Weight may exceeds max payload"
                @error_total += 1
                final()                
            else 
                final()                
                
            end
        end
    end

    def final()
        puts "*********Final********** "
        @varTBA = 0
        i = 0
        until i >= @items.count() do
            @cog_height_type = @items[i].get_cog_height_type
            if @cog_height_type == "TBA"
                @varTBA += 1
            end
            i += 1
        end

        @var = error_item()

        if @var != 0 || @error_total != 0
            if @varTBA != 0 
                puts "This acceptance check has to be done again after COG height is determined. This result assuming that the COG is half height of the cargo as you inputted TBA for COG. "
                puts "Sản phẩm không thể vận chuyển"
            else
                puts "Sản phẩm không thể vận chuyển"
            end
        elsif @varTBA != 0 
            puts "This acceptance check has to be done again after COG height is determined. This result assuming that the COG is half height of the cargo as you inputted TBA for COG. "
        else 
            puts "Sản phẩm có thể vận chuyển"
        end
        
    end
end



