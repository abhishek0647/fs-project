module ApplicationHelper
	def build_options_for_collection(objs)
		options = {'Please select' => ''}
		objs.each do |obj|
			options = options.merge({obj.name => obj.id})
		end
		options
	end
end
