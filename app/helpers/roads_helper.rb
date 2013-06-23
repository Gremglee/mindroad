module RoadsHelper

  def check_unit(unit_id, line, road_id, id)
    if Unit.exists?(:id => unit_id)
      
      @text_str = link_to Unit.find(unit_id).title, unit_path(unit_id)

      @link_delete = link_to "&times;".html_safe, delete_unit_column_path(:id => id, :unit_id => unit_id), 
                      :data => {:confirm => 'Are you sure?'},
                      :id => id,
                      :method => :put,
      								:action => :delete_unit,
                    	:class => 'close',
                      :unit_id => unit_id


      @str = "<div class='unit'>" + unit_id.to_s + ". " + @text_str.to_s + "<br>" + @link_delete + "</div>".html_safe

      return @str
    else
      @str = "<div class='unit'>clear</div>".html_safe
      return @str
    end
  end
  
end
