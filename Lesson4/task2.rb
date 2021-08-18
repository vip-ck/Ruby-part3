class News
  include Comparable
  attr_accessor :title, :body, :publicate_date
def initialize (title:, body:, publicate_date:)
  @title = title
  @body = body
  @publicate_date = publicate_date
end

def <=>(perm)
  publicate_date <=> perm
end
end
news_one = News.new(title: 'Тунгусский метеорит', body: 'упал метеорит', publicate_date: Time.mktime(1908, 6, 17) )
news_two = News.new(title: 'Тунгусский метеорит', body: 'Наконец его нашли', publicate_date: Time.mktime(2022, 8, 18) )
p news_one >= news_two