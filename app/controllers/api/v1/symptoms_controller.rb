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
        
      private
  
      def suffer_params
        params.require(:suffer).permit(:symptom_id, :patient_id)
      end
  
      def find_suffer
        @suffer = Suffer.find(params[:id])
      end
end
