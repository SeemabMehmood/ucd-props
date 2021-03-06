module ApplicationHelper
  def active_class(current_path)
    return 'active' if current_path == 'home' && request.path == '/'
    return 'active' if controller_name == 'properties' && ( params[:type].present? && current_path.index(params[:type]))
    'active' if current_path.index(action_name)
  end
end
