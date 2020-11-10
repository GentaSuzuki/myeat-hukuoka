class City < ActiveHash::Base
  self.data = [
    { id: 0, data: '---' },
    { id: 1, data: '北九州地区' },
    { id: 2, data: '筑豊地区' },
    { id: 3, data: '福岡地区' },
    { id: 4, data: '筑後地区' }
  ]
end
