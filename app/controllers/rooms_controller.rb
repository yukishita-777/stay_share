class RoomsController < ApplicationController
    
    def new
        @room = Room.new
    end
    
    def create
        @room = Room.new(room_name: room_params[:room_name], room_introduction: room_params[:room_introduction], fee: room_params[:fee], address: room_params[:address], 
                        image: room_params[:image], user_id: current_user.id)
                        
        if @room.save
            flash[:notice] = ルーム登録が完了しました。
            redirect_to :root
        else
            render "new"
        end
    end
    
    private 
    def room_params
        params.require(:room).permit(:room_name, :room_introduction, :fee, :address, :image)
    end
end
