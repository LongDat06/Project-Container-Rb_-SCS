class Item
  def initialize packing_style, length, width, height, weight, cog_height_type, cog_height

    @packing_style = packing_style
    @length = length
    @width = width
    @height = height
    @weight = weight
    @cog_height_type = cog_height_type
    @cog_height = cog_height
    @error = 0

  end

  def get_height()
      return @height
  end

  def get_lenght()
      return @length
  end

  def get_weight()
      return @weight
  end

  def get_error()
      return @error
  end

  def get_cog_height_type()
      return @cog_height_type
  end

  def set_height_max(height_max)
      @height_max = height_max
  end

  def flatrack(container_type)
     if @packing_style == "BARE" || @packing_style == "SKID"
          puts "Further evaluation is required. Reason : Packing style"
          @error += 1
          zone_A(container_type)
  
     else
          zone_A(container_type)
     end
  end

  def zone_A(container_type)
      @container_type = container_type
      case @container_type
      when "FR20"
          if @width > 380 
              puts "Width exceeds criteria"
              @error += 1
              zone_B(@container_type)

          else 
              zone_B(@container_type)
          end
      when "FR40"
          if @width > 470
              puts "Width exceeds criteria"
              @error += 1
              zone_B(@container_type)

          else
              zone_B(@container_type)
          end
      end
  end

  def zone_B(container_type)
      @container_type = container_type
      case @container_type
      when "FR20"
          if @length > 529 
              puts "Length exceeds criteria. Further evaluation by SCM is required."
              @error += 1
              weight_distribution(@container_type)

          else 
              weight_distribution(@container_type)
          end
      when "FR40"
          if @length > 1150
              puts "Length exceeds criteria. Further evaluation by SCM is required."
              @error += 1
              weight_distribution(@container_type)

          else
              weight_distribution(@container_type)
          end
      end

  end

  def weight_distribution (container_type)
      @container_type = container_type
      @weight_max
      case @container_type
      when "FR40"
          case @length
          when 0
              @weight_max = 19350
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 100
              @weight_max = 20191
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 200
              @weight_max = 21109
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 300
              @weight_max = 22114
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 400
              @weight_max = 23220
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 500
              @weight_max = 24442
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 600
              @weight_max = 25800
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 700
              @weight_max = 27318
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 800
              @weight_max = 29025
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 900
              @weight_max = 30960
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 1000
              @weight_max = 33171
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 1100
              @weight_max = 35723
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 1200
              @weight_max = 38700
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end
          end

      when "FR20"
          case @length
          when 0
              @weight_max = 15350
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 50
              @weight_max = 16017
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 100
              @weight_max = 16745
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 150
              @weight_max = 17543
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 200
              @weight_max = 18420
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 250
              @weight_max = 19389
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 300
              @weight_max = 20467
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 350
              @weight_max = 21671
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 400
              @weight_max = 23025
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 450
              @weight_max = 24560
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 500
              @weight_max = 26314
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 550
              @weight_max = 28338
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end

          when 600
              @weight_max = 30700
              if @weight > @weight_max
                  puts "Weight Distribution exceeds criteria. Further evaluation by SCM is required."
                  @error += 1
                  zone_C(@container_type)

              else 
                  zone_C(@container_type)
              end
          end
      end
  end

  def zone_C(container_type)
      if @height > 518
          puts "Height exceeds criteria"
          cog_calculation(container_type)

      else
          cog_calculation(container_type)
      end
  end

  def cog_calculation(container_type)
      if @cog_height_type == "HALF HEIGHT"
          zone_D_1(container_type)

      elsif @cog_height_type == "TBA"
          puts "This acceptance check has to be done again after COG height is determined. This result assuming that the COG is half height of the cargo as you inputted TBA for COG."
          @error += 1
          zone_D_1(container_type)

      elsif  @cog_height_type == "MANUAL"
          zone_D_2(container_type)
          
      end
  end

  def zone_D_1(container_type)
      case @container_type
      when "FR20"
          if @width <= 243 
              zone_E()	
          elsif @width > 243 || @width < 380
              zone_F()	
          end
      when "FR40"
          if @width <= 243 
              zone_E()	
          elsif @width > 243 || @width < 470
              zone_F()	
          end
      end
  end

  def zone_D_2(container_type)
      case @container_type
      when "FR20"
          if @width <= 243 
              zone_H()	
          elsif @width > 243 || @width < 380
              zone_G()	
          end
      when "FR40"
          if @width <= 243 
              zone_H()	
          elsif @width > 243 || @width < 470
              zone_G()	
          end
      end
  end

  def zone_E()
      @Cogh_value = @height_max/2
      @var = @width * 0.865
      if @Cogh_value > @var 
          puts "COG Height exceeds criteria "
          @error += 1
      elsif @Cogh_value <= @var
          puts "ok"
      end
  end
  
  def zone_F()
      @Cogh_value = @height_max/2
      if @Cogh_value > 190 
          puts "COG Height exceeds criteria "
          @error += 1
      elsif @Cogh_value <= 190
          puts "ok"
      end 
  end
  
  def zone_G()
      if @cog_height > 190 
          puts "COG Height exceeds criteria "
          @error += 1
      elsif @cog_height <= 190
          puts "ok"
      end 
  end

  def zone_H()
      @var = @width * 0.865
      if @cog_height > @var 
          puts "COG Height exceeds criteria "
          @error += 1
      elsif @cog_height <= @var
          puts "ok"
      end 
  end
  
  
  

  def open_top(container_type)
      if @packing_style == "BARE" 
           puts "Further evaluation is required. Reason : Packing style"
           @error += 1
      elsif @packing_style == "CASE"
           cog_height_calculation(container_type)
      end
  end

  def cog_height_calculation(container_type)
      if @cog_height_type == "MANUAL" || @cog_height_type == "HALF HEIGHT"
          zone_I(container_type)
      elsif @cog_height_type == "TBA"
          puts "This acceptance check has to be done again after COG height is determined. This result assuming that the COG is half height of the cargo as you inputted TBA for COG. "
          @error += 1
          zone_I(container_type)
      end
  end

  def zone_I(container_type)
      if @cog_height_type == "MANUAL"
          if @cog_height > 211
              puts "COG Height exceeds criteria"
              @error += 1
              zone_J(container_type)

          else
              zone_J(container_type)
          end
      
      elsif @cog_height_type == "HALF HEIGHT" || @cog_height_type == "TBA"
          @var = cog_height/2
          if @var > 211
              puts "COG Height exceeds criteria"
              @error += 1
              zone_J(container_type)

          else
              zone_J(container_type)
          end
     
      end
  end

  def zone_J(container_type)
      @var = @weight/@length
      case container_type
      when "OT20"
          if @var > 3
              puts "Weight concentration exceeds criteria"
              @error += 1
          else
              puts "ok"
          end
      when "OT40"
          if @var > 4.5
              puts "Weight concentration exceeds criteria"
              @error += 1
          else
              puts "ok"
          end
      end
  end

end