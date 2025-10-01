Jekyll::Hooks.register :site, :pre_render do |site, payload|
  site.posts.docs.reject! do |post|
    post.data["categories"].include?("solution") &&
      (Time.now - post.date) < 8*24*60*60
  end
end
