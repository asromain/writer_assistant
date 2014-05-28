class AnecdotesController < ApplicationController
  before_action :set_anecdote, only: [:show, :edit, :update, :destroy]

  # GET /anecdotes
  # GET /anecdotes.json
  def index
    @anecdotes = Anecdote
    @anecdotes = Anecdote.order(params[:sort]) if params[:sort]
    @anecdotes = @anecdotes.all
  end

  # GET /anecdotes/1
  # GET /anecdotes/1.json
  def show
  end

  # GET /anecdotes/new
  def new
    @anecdote = Anecdote.new
    @chapters = Chapter.all
  end

  # GET /anecdotes/1/edit
  def edit
  end

  # POST /anecdotes
  # POST /anecdotes.json
  def create
    @anecdote = Anecdote.new(anecdote_params)
    @chapters = Chapter.all

    respond_to do |format|
      if @anecdote.save
        format.html { redirect_to @anecdote, notice: 'Anecdote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @anecdote }
      else
        format.html { render action: 'new' }
        format.json { render json: @anecdote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anecdotes/1
  # PATCH/PUT /anecdotes/1.json
  def update
    respond_to do |format|
      if @anecdote.update(anecdote_params)
        format.html { redirect_to @anecdote, notice: 'Anecdote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @anecdote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anecdotes/1
  # DELETE /anecdotes/1.json
  def destroy
    @anecdote.destroy
    respond_to do |format|
      format.html { redirect_to anecdotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anecdote
      @anecdote = Anecdote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anecdote_params
      params.require(:anecdote).permit(:subject, :description, :chapter_id)
    end
end
