class QuizController < ApplicationController
  def index
  end

  def new
  end

  def create
    character_counts = {
      "Jon Snow" => 0,
      "Cersei Lannister" => 0,
      "Khaleesi" => 0,
      "Arya Stark" => 0
      "Sansa Stark" => 0
      "Tyrion Lannister" => 0
      "Margaery Tyrell" => 0

    }
    quiz_params.values.each do |answer| 
      QuizHelper.preferences.each do |name, preference|
          if preference.include? answer
            p character_counts[name] += 1
          end
      end
    end
    p character_counts
    
  end

  private

  def quiz_params
    params.require(:got).permit(:question1, :question2, :question3, :question4, :question5, :question6, :question7, :question8)
  end
end



