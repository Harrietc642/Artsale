class AboutController < ApplicationController
  def index
    @about = About.order("subject ASC")

  end
end
