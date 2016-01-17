require 'rails_helper'
include RandomData

RSpec.describe Favorite, type: :model do
<<<<<<< HEAD
  let(:topic) { Topic.create!(name: RandomData.random_sentence, decription: RandomData.random_paragraph) }
=======
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
>>>>>>> 2aa3fbf006ef86d13482c9a46e91d04e70d2d229
  let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
  let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: user) }
  let(:favorite) { Favorite.create!(post: post, user: user) }

  it { should belong_to(:post) }
  it { should belong_to(:user) }
end
