module ApplicationHelper

	# RETURNS THE FULL TITLE ON A PER-PAGE BASIS
	def full_title(page_title = '')
		base_title = 'Wegscheid Web Services'
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end


	# RETURNS THE FULL PAGE META DESCRIPTION ON A PER-PAGE BASIS
	def meta_description(description = '')
		base_description = "Build your presence."
		if description.empty?
			base_description
		else
			description
		end
	end

	def declare_canonical(url = '')
		base_url = 'https://www.wegscheidwebservices.com/'
		if url.empty?
			base_url
		else
			base_url + url
		end
	end
end
