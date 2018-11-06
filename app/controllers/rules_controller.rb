class RulesController < ApplicationController
  def new
    @rule = Rule.new
  end

  def create
    @rule = Rule.create(body: params[:rule][:body], name: params[:rule][:name], rule_text: params[:rule][:rule_text], day: session[:day] || Date.today, user: current_user)
    if @rule.errors.empty?
      if params[:finish]
        redirect_to notes_path
      else
        redirect_to new_rule_path
      end
    else
      render 'new'
    end
  end

  def edit
    @rule = Rule.find(params[:id])
  end

  def update
    @rule = Rule.find(params[:id]).update_attributes(rules_params)
    if @rule.errors.empty?
      redirect_to notes_path
    else
      render 'edit'
    end
  end

  def destroy
    @rule = Rule.find(params[:id]).destroy
    redirect_to notes_path
  end

  private
  def rules_params
    params.require(:rule).permit(:user_id, :name, :body, :day, :rule_text)
  end

end
