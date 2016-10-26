module ApplicationHelper
  def find_current
    controller_name.classify.constantize.find(params[:id])
  end
end
