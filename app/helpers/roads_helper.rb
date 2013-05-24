module RoadsHelper

  def check_unit(unit_id, line, road_id, id)
    if Unit.exists?(:id => unit_id)
      
      @text_str = link_to Unit.find(unit_id).title, unit_path(unit_id)

      @link_delete = link_to "del", road_path(road_id), 
                      :id => road_id,
      								:data => {:confirm => 'Are you sure?'},
      								:action => :delete_unit,
                    	:class => 'btn btn-mini btn-danger',
      								:arguments => {:line => line, :road_id => road_id, :unit_id => unit_id}


      @str = "<div class='unit4'>" + unit_id.to_s + ". " + @text_str.to_s + "<br>" + @link_delete + "</div>".html_safe

      return @str
    else
      @str = "<div class='unit4'>clear</div>".html_safe
      return @str
    end
  end
  
end
