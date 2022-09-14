class ScoreController < ApplicationController
  def list
  end

  def relay
    commit = params[:commit]
    indexs = params[:index]
    if(commit == "Edit")
      redirect_to :controller=>'score',:action=>'edit',:index=>indexs
    elsif (commit == "Delete")
      Subject.find(indexs).destroy
      redirect_to :controller=>'score',:action=>'list'
    elsif (commit == "Back")
      redirect_to :controller=>'score',:action=>'list'
    elsif (commit == "Confirm Edit")
      a = Subject.find(indexs)
      a.score = params[:n_score]
      a.subject_name = params[:n_name]
      a.save
      redirect_to :controller=>'score',:action=>'list'
    end
  end

  def edit
    @indexs = params[:index]
    @subject = Subject.find(@indexs)
  end
end
