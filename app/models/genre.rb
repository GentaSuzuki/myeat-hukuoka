class Genre < ActiveHash::Base
  self.data = [
    { id: 0, data: '---' },
    { id: 1, data: '和食' },
    { id: 2, data: '洋食・西洋料理' },
    { id: 3, data: '中華料理' },
    { id: 4, data: 'アジア・エスニック' },
    { id: 5, data: 'カレー'},
    { id: 6, data: '焼肉' },
    { id: 7, data: '鍋' },
    { id: 8, data: 'ラーメン' },
    { id: 9, data: 'パン・サンドイッチ' },
    { id: 10, data: 'カフェ' },
    { id: 11, data: '居酒屋'},
    { id: 12, data: 'スイーツ' }
  ]
end
