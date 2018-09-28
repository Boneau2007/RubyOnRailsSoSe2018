class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  @question = Question.find(params[:id])

    @answers = Answer.where(question_id: @question.id).order(created_at: :desc)
    @users = User.includes(:userprofile).all
    @question = Question.find(params[:id])
    @userprofile = @users.find(@question.user_id)

  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    respond_to do |format|
      if @question.save
                QuestionCategorie.create(category_id: params[:categorie_id], question_id: @question.id)
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def switch_answered
    @question = Question.find(params[:id ])
    if @question.answered
      @question.update(answered: false)
    else
      @question.update(answered: true)
    end
    respond_to do |format|
      format.html { redirect_to question_path(params[:id]), notice: 'Question was successfully updated.' }
    end
end

    def like_question
      @question = Question.find(params[:id])
      respond_to do |format|
        format.html { redirect_to question_path(params[:id]), notice: 'Question was successfully updated.' }
      end
    end

    def negative_rating
      respond_to do |format|
        format.html { redirect_to question_path(params[:id]), notice: 'Question was successfully updated.' }
      end
    end

    def positiv_rating
      respond_to do |format|
        format.html { redirect_to question_path(params[:id]), notice: 'Question was successfully updated.' }
      end
    end

    def set_star_answer
      @answers = Answer.joins(:question).where(params[:id]).all
      @answer = @answers.find(params[:answer])
      if @answer.staranswer
        @answer.update(staranswer: false)
      else
        @answer.update(staranswer: true)
      end
      respond_to do |format|
        format.html { redirect_to question_path(params[:id]), notice: 'Question was successfully updated.' }
      end
    end

    def search
        topic = params[:topic] || nil
        questions = []
        questions = Question.where('name LIKE ?', "%#{topic}%") if term
        render json: questions
      end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:topic, :text, :likes, :answered, :category_ids)
    end
end
