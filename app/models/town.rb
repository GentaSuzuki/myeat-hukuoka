class Town < ActiveHash::Base
  self.data = [
    { id: 0, data: '---' },
    { id: 1, data: '北九州市門司区' },
    { id: 2, data: '洋食・西洋料理' },
    { id: 3, data: '中華料理' },
    { id: 4, data: 'アジア・エスニック' },
    { id: 5, data: '焼肉' },
    { id: 6, data: '鍋' },
    { id: 7, data: 'ラーメン' },
    { id: 8, data: 'パン・サンドイッチ' },
    { id: 9, data: 'カフェ' },
    { id: 10, data: 'スイーツ' }
  ]
end
