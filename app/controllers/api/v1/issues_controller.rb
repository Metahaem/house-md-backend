class Api::V1::IssuesController < ApplicationController
    def index
        @issues = Issue.all
      end
    
      def show
        @issue = Issue.find(params[:id])
      end
    
    #   def symptoms_id
    #     self.diagnoses.symptom_id
    #   end
      
end
