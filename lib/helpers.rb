require 'json'

include Nanoc::Helpers::Rendering
include Nanoc3::Helpers::LinkTo
include Nanoc3::Helpers::Filtering

def templateRefClasses
	classes = %w{podcast episode chapter feed asset file file_type contributor contributor_group service license}
	classes.map { |klass| JSON.parse(IO.read("./sources/template/#{klass}.json")) }
end
