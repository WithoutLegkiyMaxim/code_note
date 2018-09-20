class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def search
    @code_langs = CodeLang.all
  end
end
