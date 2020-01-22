class Api::V1::WorksController < ApplicationController

    def index
        # byebug
        works = Work.all 
        render json: works
        # byebug
    end
    
    def show
        work = Work.find(params[:id])
        render json: work 
    end

    def create
        work = Work.new(work_params)
        if work.savegit 
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