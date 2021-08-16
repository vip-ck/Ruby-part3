# frozen_string_literal: true

class Seo
  attr_accessor :title, :description, :keywords
end

class News
  attr_accessor :date

  def initialize(param)
    @param = param
  end

  def seo
    @param
  end
end

class About
  attr_accessor :phones, :address

  def initialize(param)
    @param = param
  end

  def seo
    @param
  end
end

news = News.new(Seo.new)
news.seo.title = 'Главная новость'
news.seo.description = 'смыло всех'
news.seo.keywords = ['мы все умрем']
p news
about = About.new(Seo.new)
about.seo.title = 'Все о нас'
about.seo.description = 'номера телефонов и аккаунт'
about.seo.keywords = ['ключевые слова']
p about
