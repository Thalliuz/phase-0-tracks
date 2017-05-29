class TodoList

  def initialize( items )
    @list = items
  end 
  
  def get_items
    @list
  end

  def add_item( item )
    @list.push( item )
  end
  
  def delete_item( item )
    @list.delete( item )
  end

  def get_item( item )
    @list[ item ]
     
   end 
end 
