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

end
