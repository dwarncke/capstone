class QuizController < ApplicationController
  def index
  end

  def new
  end

  def show
    @name = params[:character]


  end

  def create
    character_counts = {
      "DavidRose" => 0,
      "AlexisRose" => 0,
      "StevieBudd" => 0,
      "Patrick" => 0,
      "TedMullens" => 0,
      "JohnnyRose" => 0,
      "MoiraRose" => 0,
      "RolandSchitt" => 0
    }

    quiz_params.values.each do |answer| 
      QuizHelper.preferences.each do |name, preference|
          if preference.include? answer
            character_counts[name] += 1
          end
      end
    end
    
    max_value = 0
    chosen_name = ""

    character_counts.each do |name, count|
      if count > max_value
        max_value = count
        p chosen_name = name
      end
    end

     redirect_to results_path({character: chosen_name})
        
  end

  private


  def quiz_params
    params.require(:schitt).permit(:question1, :question2, :question3, :question4, :question5, :question6, :question7, :question8)
  end
end














