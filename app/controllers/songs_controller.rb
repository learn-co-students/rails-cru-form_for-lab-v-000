 class SongsController < ApplicationController
#
#     def create
#       @song =  Song.create(strong_params(:name))
#       if @song.persisted?
#         render :show
#       end
#     end
#
#     def new
#     @song = Song.new
#     end
#
#     def edit
#       @song = set_student
#     end
#
     def show
       @song = set_student
     end
#
#     def update
#       @song = set_student
#       @song.update(strong_params(params[:song]) )
#     end
#
#
  private

       def set_student
         Song.find_by(params[:id])
       end

       def strong_params(*args)
     params.require(:song).permit(args)
       end



 end
