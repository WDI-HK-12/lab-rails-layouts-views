class StaticController < ApplicationController
  def index
    target = :index

    if params[:page] == "1"
      target = :index_1
    elsif params[:page] == "2"
      target = :index_2
    end

    render target
  end

  def page
    render layout: "page"
  end
end
