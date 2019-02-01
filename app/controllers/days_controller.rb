class DaysController < ApplicationController
  def update
    @day = Day.find(params[:id])
    @day.update_attributes(result: params[:day][:result], description: params[:day][:description])

  end
end
