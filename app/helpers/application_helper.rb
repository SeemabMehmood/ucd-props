module ApplicationHelper
  def active_class(current_path)
    return 'active' if controller_name == 'properties' && current_path.index(params[:type])
    'active' if current_path.index(action_name)
  end
end
