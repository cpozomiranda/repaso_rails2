class PagesController < ApplicationController
  def x
  end
  def save_user
  	unless params[:nombre].blank? or params[:correo].blank? or params[:edad].blank?

  		User.create(name:params[:nombre], mail:params[:correo], age:params[:edad])
  		redirect_to pages_x_path,
  		notice:"Usuario ingresado correctamente"
  	
  	end
  end

end
