require "./items.rb"
require "./service_container.rb"

class Container
	include ServiceContainer
	attr_accessor :container_type
	
	def initialize container_type
		@container_type = container_type
		@@items = []
	end

	def self.price_container(container)
		puts "Container type: #{container.container_type}"
		@@items.each {|record| Item.price_item(record)}
	end

	def additems (item)
		@@items << item
		# item.class.price_item(item)
	end

	def height_max
		max_height = @@items.reduce(0) do |max, record|
			record.height > max ? record.height : max
		end
		max_height
	end

	def total_lenght
		total_lenght = @@items.reduce(0) do |total, record|
			total + record.height 
		end
		total_lenght
	end

	def total_weight
		total_weight = @@items.reduce(0) do |total, record|
			total + record.weight 
		end
		total_weight
	end
end



