class TodoList
  
  def initialize(todo_list)
    @todo_list = todo_list
  end

  def get_items
    @todo_list
  end

  def add_item(new_item)
    @todo_list << new_item
  end

  def delete_item(item)
    @todo_list.delete(item)
    @todo_list
  end

  def get_item(item_index)
    @todo_list[item_index] 
  end
  
end