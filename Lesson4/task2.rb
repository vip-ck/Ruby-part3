# frozen_string_literal: true

class News
  include Comparable
  attr_accessor :title, :body, :publicate_date

  def initialize(title:, body:, publicate_date:)
    @title = title
    @body = body
    @publicate_date = publicate_date
  end

  def <=>(other)
    publicate_date <=> other
  end
end
news_one = News.new(title: 'Тунгусский метеорит', body: 'упал метеорит', publicate_date: Time.mktime(1908, 6, 17))
news_two = News.new(title: 'Тунгусский метеорит', body: 'Наконец его нашли', publicate_date: Time.mktime(2022, 8, 18))
news_thr = News.new(title: 'Тунгусский метеорит', body: 'оказался летающим кораблем',
                    publicate_date: Time.mktime(2023, 8, 18))
p news_one >= news_two
puts news_one <= news_two
puts news_two == news_thr
