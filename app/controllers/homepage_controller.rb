class HomepageController < ApplicationController
  # Manque le authenticate_user!

  def index
    @comments = Comment.all.order('created_at DESC')
  end

  def create
    Comment.create!(content: params[:comment], user: current_user)
    redirect_to homepage_index_path

    # Attention à la mise en forme SVP
  end
  
  # Il manque des features !
end
