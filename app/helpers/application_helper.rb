module ApplicationHelper
	def t(page_title=nil)
		content_for :title do
			if page_title.nil?
				"Kanban PH"
			else
				"Kanban PH | #{page_title}"
			end
		end
	end

	def g(user, klazz, options={})
		options[:default] = 'https://assets.github.com/images/gravatars/gravatar-140.png'
		gravatar_image_tag(user.email, title:user.email, class:klazz, gravatar: options)
	end
end
