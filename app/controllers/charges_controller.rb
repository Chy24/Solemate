class ChargesController < ApplicationController
  before_action :authenticate_user! 

  def index
    @charges = Charge.where(user: current_user)
  end

  def show
  end

  def new
    @charge = Charge.new
    @charge.post = Post.find(params[:post_id])
  end

  def create
    charge_params = params.require(:charge).permit(:post_id)
    @charge = Charge.new
    @charge.post = Post.find(params[:post_id])
    @charge.user = current_user 
    # Amount in cents
    @amount = (@amount * 100).to_i

    customer = Stripe::Customer.create(
      :email => current_user.email,
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount
      :description => @charge.post.title,
      :currency    => 'aud' 
    )

    @charge.charge_identifer = charge.id
    @charge.save
    redirect_to posts_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path(post_id: @charge.post.id) 
  end
end
