class Price < ActiveHash::Base
  self.data = [
    { id: 0, data: '---' },
    { id: 1, data: '¥0~¥500' },
    { id: 2, data: '¥500~¥999' },
    { id: 3, data: '¥1,000~¥1,999' },
    { id: 4, data: '¥2,000~¥2,999' },
    { id: 5, data: '¥3,000~¥3,999' },
    { id: 6, data: '¥4,000~¥4,999' },
    { id: 7, data: '¥5,000~¥5,999' },
    { id: 8, data: '¥6,000~¥6,999' },
    { id: 9, data: '¥7,000~¥7,999' },
    { id: 10, data: '¥8,000~¥8,999' },
    { id: 11, data: '¥9,000~¥9,999' },
    { id: 12, data: '¥10,000~¥14,999' },
    { id: 13, data: '¥15,000~¥19,999' },
    { id: 14, data: '¥20,000~¥29,999' },
    { id: 15, data: '¥30,000~'}
  ]
end