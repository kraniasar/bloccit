require 'rails_helper'
include RandomData

RSpec.describe Topic, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }

   it {should have_many(:posts) }

   describe "attributes" do
     it "should respond to name" do
       expect(topic).to respond_to(:name)
     end

     it "should respond to description" do
       expect(topic).to respond_to(:description)
     end

     it "should respond to public" do
       expect(topic).to respond_to(:public)
     end

     it "should be public by default" do
       expect(topic.public).to be(true)
     end
   end

   describe "GET edit" do
     it "returns http success" do
       get :edit, {id: my_topic.id}
       expect(response).to have_http_status(:success)
     end

     it "renders the #edit view" do
       get :edit, {id: my_topic.id}
       expect(response).to render_template :edit
     end

     it "assigns topic to be updated to @topic" do
       get :edit, {id: my_topic.id}
       topic_instance = assigns(:topic)

       expect(topic_instance.id).to eq my_topic.id
       expect(topic_instance.name).to eq my_topic.name
       expect(topic_instance.description).to eq my_topic.description
     end
   end

   describe "DELETE destroy" do
     it "deletes the topic" do
       delete :destroy, {id: my_topic.id}
       count = Post.where({id: my_topic.id}).size
       expect(count).to eq 0
     end

     it "redirects to topics index" do
       delete :destroy, {id: my_topic.id}
       expect(response).to redirect_to topics_path
     end
   end
 end
