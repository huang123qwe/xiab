$intro = Intro.last
$services = Service.order("updated_at desc")
$questions = Question.order("updated_at desc").limit(8)
$advts = Advt.order("updated_at desc").limit(3)
$newses = News.order("updated_at desc").limit(10)