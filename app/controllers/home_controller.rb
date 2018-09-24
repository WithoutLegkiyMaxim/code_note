class HomeController < ApplicationController
  def index
  end

  def search
    tmp = CodeLang.all
    @langs = {}
    tmp.each do |elem|
      if @langs.has_key?(elem.name)
        @langs[elem.name].push(elem.version)
      else
        @langs.update({elem.name => [elem.id, elem.version]})
      end
    end
    gon.langs = @langs.to_json
  end

end
