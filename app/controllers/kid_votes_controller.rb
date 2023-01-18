class KidVotesController < ApplicationController
  before_action :set_kid_vote, only: %i[ show edit update destroy ]

  # GET /kid_votes or /kid_votes.json
  def index
    @kid_votes = KidVote.all
  end

  # GET /kid_votes/1 or /kid_votes/1.json
  def show
  end

  # GET /kid_votes/new
  def new
    @kid_vote = KidVote.new
  end

  # GET /kid_votes/1/edit
  def edit
  end

  # POST /kid_votes or /kid_votes.json
  def create
    @kid_vote = KidVote.new(kid_vote_params)

    respond_to do |format|
      if @kid_vote.save
        format.html { redirect_to kid_vote_url(@kid_vote), notice: "Kid vote was successfully created." }
        format.json { render :show, status: :created, location: @kid_vote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kid_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kid_votes/1 or /kid_votes/1.json
  def update
    respond_to do |format|
      if @kid_vote.update(kid_vote_params)
        format.html { redirect_to kid_vote_url(@kid_vote), notice: "Kid vote was successfully updated." }
        format.json { render :show, status: :ok, location: @kid_vote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kid_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kid_votes/1 or /kid_votes/1.json
  def destroy
    @kid_vote.destroy

    respond_to do |format|
      format.html { redirect_to kid_votes_url, notice: "Kid vote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kid_vote
      @kid_vote = KidVote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kid_vote_params
      params.require(:kid_vote).permit(:vote, :user_id)
    end
end
