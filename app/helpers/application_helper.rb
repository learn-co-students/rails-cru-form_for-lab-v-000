module ApplicationHelper
    def check_params(model, *args)
        params.require(model).permit(*args)
    end 
    
    def getInstance(model)
        model.find(params[:id])
    end 
end
