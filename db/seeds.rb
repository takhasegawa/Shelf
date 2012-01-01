# -*- encoding : UTF-8 -*-

titles = [
  "冷たい校舎の刻は止まる",
  "子供たちは夜と遊ぶ",
  "凍りのくじら",
  "僕のメジャースプーン",
  "スロウハイツの神様"
]
 
author = "辻村深月" 

years = [
  2004,
  2005,
  2005,
  2006,
  2007
]

5.times do |n|
  Book.create(:title => titles[n], :authors => author, :publish_year => years[n],
    :comment => nil, :checked_out => (n % 2 == 0) )
end

100.times do |n|
  Book.create(:title => "テスト #{n}", :authors => author, :publish_year => n + 2000,
    :comment => nil, :checked_out => false)
end