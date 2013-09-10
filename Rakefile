require "bundler/gem_tasks"

# borrowed and adapted from jquery-datatables-rails
desc "Fixes css image paths in scss files."
task :fix_css do
  Dir.glob(File.join("vendor/assets/stylesheets/", "*.css.scss")).each do |filename|
    content = File.read(filename)
    content.gsub!(/url\(([A-Za-z0-9_]*\.png)\)/) do
      "image-url('#{$1}')"
    end
   File.open(filename, 'w') { |f| f << content }
  end
  print "Done.\n"
end

