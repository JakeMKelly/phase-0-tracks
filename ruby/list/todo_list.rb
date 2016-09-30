class TodoList

	def initialize(list_array)
		@list_array = ["do the dishes", "mow the lawn"]
	end

	def get_items
		@list_array
	end

	def add_item(item_to_add)
		@list_array.push(item_to_add)
	end

	def delete_item(item_to_remove)
		@list_array.delete(item_to_remove)
	end

	def get_item(index_of_item)
		@list_array.at(index_of_item)
	end
end

