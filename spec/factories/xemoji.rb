FactoryGirl.define do 
  factory :xemoji do
    category 'nyc'
    sequence(:filename) { |n| "testfilename#{n}.png" }
    sequence(:url) { |n| "https://some.url.com/testimage#{n}.png" }
    keywords ['testkeyword1','testkeyword2']
  end
end
