module ApplicationHelper
  def active_class(current_path)
    'active' if current_path.index(action_name)
  end
end
