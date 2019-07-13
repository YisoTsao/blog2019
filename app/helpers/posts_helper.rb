module PostsHelper
	def setup_post(post)
    post.build_starts unless post.starts
    post
	end
end
