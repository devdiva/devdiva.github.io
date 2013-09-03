###
# Settings
###
set :site_title, "the devdiva devblog"
set :site_url, "http://devblog.devdiva.com"
set :site_description, "The devdiva devblog is where Hari Khalsa documents technical errata and things that interest her."
set :site_keywords, "meta keywords"


###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Blog
###
activate :blog do |blog|
  # set options on blog - following show defaults that you can override
  blog.prefix = "blog"
  blog.permalink = "blog/:year/:title.html" # this was in examples, but seems wiered that perfix repeats blog??
  # blog.summary_separator = /TLDR/ # defaults to READMORE
  # blog.paginate = true
  # blog.page_link = "p:num"
  # blog.per_page = 20
  # blog.layout = "blog_layout"
end

Time.zone = "US/Pacific" # Confirm this or can I set to "San Francisco"



###
# Pretty URLs | Directory Indexes
###
activate :directory_indexes
set :index_file, "index.html" # redundant, but you could override to server-requirements, eg. "index.php", "default.html", etc.

# Add opt-out|overrides for pretty urls here (or in the given page's frontmatter)
# page "/keep-my-url-name-the-same.html", :directory_index => false



###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
 activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

