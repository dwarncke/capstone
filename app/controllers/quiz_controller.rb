class QuizController < ApplicationController
  def index
  end

  def new
  end

  def create
    character_counts = {
      "David Rose" => 0,
      "Alexis Rose" => 0,
      "Stevie Budd" => 0,
      "Patrick" => 0,
      "Ted Mullens" => 0,
      "Johnny Rose" => 0,
      "Moira Rose" => 0,
      "Rowland Schitt" => 0
    }

    quiz_params.values.each do |answer| 
      QuizHelper.preferences.each do |name, preference|
          if preference.include? answer
            p character_counts[name] += 1
          end
      end
    end
    
    

    p character_counts
     if character_counts = "David Rose"
      redirect_to david_path
    end
  end
    
  
    
  
    
  

  private


  def quiz_params
    params.require(:schitt).permit(:question1, :question2, :question3, :question4, :question5, :question6, :question7, :question8)
  end
end











