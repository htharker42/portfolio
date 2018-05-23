# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end


10.times do |blog|
	Blog.create!(
		title: "Blog Post #{blog + 1}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
				Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
				Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
				Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		topic_id: Topic.last.id
		)

end 

5.times do |skill| 
	Skill.create!(
	title: "Rails #{skill}",
	percent_utilized: 15
	)
	end

5.times do |porto|
	Porto.create!(
		title: "Portfolio Item #{porto}",
		subtitle: "Ruby on Rails",
		body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. 
		No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. 
		Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. 
		To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? 
		But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
		main_image: "http://i0.kym-cdn.com/entries/icons/facebook/000/006/786/zoidberg.jpg",
		thumb_image: "https://pre00.deviantart.net/b53e/th/pre/f/2012/119/b/7/zoidberg_trace_by_deepfry3-d4y0wlc.png",
		)
end

2.times do |porto|
	Porto.create!(
		title: "Portfolio Item #{porto}",
		subtitle: "Angular",
		body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. 
		No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. 
		Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. 
		To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? 
		But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
		main_image: "http://i0.kym-cdn.com/entries/icons/facebook/000/006/786/zoidberg.jpg",
		thumb_image: "https://pre00.deviantart.net/b53e/th/pre/f/2012/119/b/7/zoidberg_trace_by_deepfry3-d4y0wlc.png",
		)
end