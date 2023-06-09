module ServiceContainer
  def container_type_action
		
		@@items.each do |record|
			if container_type == "FR20" || container_type == "FR40"
				record.set_height_max(height_max)
				record.flatrack(container_type)
			elsif container_type == "OT20" || container_type == "OT40"
				record.open_top(container_type)
			end
		end

		zone_K
	end

	def zone_K
		max_lenght_concentration = 0
		case container_type
		when "FR20"
			max_lenght_concentration = 597
		when "FR40"
			max_lenght_concentration = 1217.8
		when "OT20"
			max_lenght_concentration = 589
		when "OT40"
			max_lenght_concentration = 1200
		end
		puts "Length may exceeds container dimension" if total_lenght > max_lenght_concentration
		zone_L
	end

	def zone_L
		max_weight_concentration = 0
		case container_type
		when "FR20"
			max_weight_concentration = 20
		when "FR40"
			max_weight_concentration = 38.8
		when "OT20"
			max_weight_concentration = 26.7
		when "OT40"
			max_weight_concentration =28.1
		end
		puts "Weight may exceeds max payload" if total_weight > max_weight_concentration
		final
	end

	def final
		puts "*********Final********** "
		@@items.each do |item|
			if item.cog_height_type == "TBA"
				 return puts "This acceptance check has to be done again after COG height is determined. This result assuming that the COG is half height of the cargo as you inputted TBA for COG. "
			end
		end

		puts "Sản phẩm có thể vận chuyển"
	end
end