class Api::V1::SymptomsController < ApplicationController
    def index
        @symptoms = Symptom.all
    end
  
    def show
      @symptom = Symptom.find(params[:id])
    end
  
  
    def find_symptom_category(symptom_name)
      symptom_name = symptom.name
      @category = @symptoms_and_categories[:symptom_name]
    end

    def all_symptoms_from_category
        bodypart = params[:category]
        symptoms = Symptom.all.select{|s| s.category.downcase==bodypart}
        render json: symptoms
    end
        
      private
  
    #   def symptom_params
    #     params.require(:symptom).permit(:symptom_id, :category)
    #   end
  
      def find_symptom
        @symptom = Symptom.find(params[:id])
      end
end
