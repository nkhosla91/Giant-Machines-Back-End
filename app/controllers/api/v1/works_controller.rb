class Api::V1::WorksController < ApplicationController

    def index
        works = Work.all 
        render json: works
    end
    
    def show
        work = Work.find(params[:id])
        render json: work 
    end

    def create
        # byebug
        work = Work.new(work_params)
        if work.save
          render json: work
        else
          render json: {errors: work.errors.full_messages}, status: 403
        end
    end

    private

    def work_params
        params.require(:work).permit( :date, :client, :project, :projectCode, :hours, :hoursRounded, :billable, :firstName, :lastName, :billableRate)
    end

end