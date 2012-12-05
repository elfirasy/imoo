module SongsHelper
	def as_json(opts={})
		super({ only: %w[id name]}.merge(opts))
	end
end
