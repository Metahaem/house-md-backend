class Api::V1::IssuesController < ApplicationController
    def index
        @issues = Issue.all
      end
    
      def show
        @issue = Issue.find(params[:id])
      end
    
      def symptoms_ids
        self.diagnoses.symptom_ids
      end
      
end
