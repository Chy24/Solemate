class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = @conversation.messages

    if !params[:query].nil?
      if !params[:query].empty?
    api_key = ENV.fetch('GIPHY_KEY')
    response = HTTParty.get("https://api.giphy.com/v1/gifs/search?api_key=#{api_key}&q=#{params[:query]}&limit=25&offset=0&rating=PG-13&lang=en")
    buffer = response.body
    parsegif = JSON.parse(buffer)
    @gif = parsegif['data'][rand(25)]['images']['original']['url']
    message = Message.new
    message.conversation_id = @conversation.id 
    message.sender = current_user 
    message.images = @gif
    message.save
      end
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new  
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.sender = current_user

    respond_to do |format|
      if @message.save
        format.html { redirect_to conversation_messages_url(@conversation)}
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    def set_conversation
      @conversation = Conversation.find(params[:conversation_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:content)
    end
end
