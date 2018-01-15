# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Subscriber.delete_all
Stream.delete_all
Video.delete_all

subscriber_1 = Subscriber.create!(username: 'user1', password_digest: 'password', subscription_type: 'free', streaming_limit: 120)
subscriber_2 = Subscriber.create!(username: 'user2', password_digest: 'password', subscription_type: 'free', streaming_limit: 120)
subscriber_3 = Subscriber.create!(username: 'user3', password_digest: 'password', subscription_type: 'free', streaming_limit: 120)
subscriber_4 = Subscriber.create!(username: 'user4', password_digest: 'password', subscription_type: 'free', streaming_limit: 120)

provider_1 = Provider.create!(name:'ABC', concurrent_viewer_limit: 1000)

video_1 = Video.create!(provider_id: provider_1.id, title:'Good Video')
video_2 = Video.create!(provider_id: provider_1.id, title:'Bad Video')
video_3 = Video.create!(provider_id: provider_1.id, title:'Funny Video')
video_4 = Video.create!(provider_id: provider_1.id, title:'Sad Video')

30.times do
  Stream.create!(subscriber_id: subscriber_1.id, video_id: video_1.id, currently_streaming: false)
end

3.times do
  Stream.create!(subscriber_id: subscriber_1.id, video_id: video_3.id, currently_streaming: false)
end

2.times do
  Stream.create!(subscriber_id: subscriber_1.id, video_id: video_4.id, currently_streaming: false)
end

20.times do
  Stream.create!(subscriber_id: subscriber_2.id, video_id: video_1.id, currently_streaming: false)
end

21.times do
  Stream.create!(subscriber_id: subscriber_2.id, video_id: video_3.id, currently_streaming: false)
end

26.times do
  Stream.create!(subscriber_id: subscriber_2.id, video_id: video_2.id, currently_streaming: false)
end

3.times do
  Stream.create!(subscriber_id: subscriber_3.id, video_id: video_3.id, currently_streaming: false)
end

4.times do
  Stream.create!(subscriber_id: subscriber_3.id, video_id: video_1.id, currently_streaming: false)
end

2.times do
  Stream.create!(subscriber_id: subscriber_4.id, video_id: video_3.id, currently_streaming: false)
end
