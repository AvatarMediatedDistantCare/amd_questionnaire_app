class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions
  # GET /sessions.json
  def index
    @sessions = Session.all
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new
    @session = Session.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  # POST /sessions.json
  def create
    @session = Session.new(session_params)

    audio_id_list = [1169, 1170, 1175]

    audio_id_list.each do |a_id|
      for num in 0..2 do
        @ans = @session.answers.build
        @ans.save
        #if idx == 0
        #  prev_id = nil
        #  next_id = @ans.id + 1
        #elsif idx == audio.length-1
        #  prev_id = @ans.id - 1
        #  next_id = nil
        #else
        #  prev_id = @ans.id - 1
        #  next_id = @ans.id + 1
        #end
        #@ans.prev_id = prev_id
        #@ans.next_id = next_id
        @ans.audio_id = a_id
        @ans.gesture_type = num
        @ans.save
      end

      answers_list = @session.answers.shuffle
      answers_list.each_with_index do |ans, idx|
        @ans = ans
        if idx == 0
          prev_id = nil
          next_id = answers_list[idx+1].id
        elsif idx == answers_list.length - 1
          prev_id = answers_list[idx-1].id
          next_id = nil
        else
          prev_id = answers_list[idx-1].id
          next_id = answers_list[idx+1].id
        end
        @ans.prev_id = prev_id
        @ans.next_id = next_id
        @ans.save
      end
    end

    respond_to do |format|
      if @session.save
        format.html { redirect_to answer_path(id: @session.start_id), notice: 'Session was successfully created.' }
        format.json { render :show, status: :created, location: @session }
      else
        format.html { render :new }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def update
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to @session, notice: 'Session was successfully updated.' }
        format.json { render :show, status: :ok, location: @session }
      else
        format.html { render :edit }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    @session.destroy
    respond_to do |format|
      format.html { redirect_to sessions_url, notice: 'Session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.permit(:user_id)
    end
end
