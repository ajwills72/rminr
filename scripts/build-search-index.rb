#!/usr/bin/env ruby

require 'cgi'
require 'json'

root = File.expand_path('../docs', __dir__)
documents = Dir[File.join(root, '**', '*.{html,md}')].sort.map do |path|
  relative = path.delete_prefix("#{root}/")
  next if relative == 'search.html' || relative.start_with?('rmip/README')

  content = File.read(path, encoding: 'UTF-8')
  title = content[/<title>(.*?)<\/title>/mi, 1] || content[/^#\s+(.+)$/, 1] || File.basename(path, '.*')
  text = content.gsub(/<script.*?<\/script>/mi, ' ')
                .gsub(/<style.*?<\/style>/mi, ' ')
                .gsub(/<[^>]+>/, ' ')
                .gsub(/!\[[^\]]*\]\([^)]*\)/, ' ')
  text = CGI.unescapeHTML(text).gsub(/\s+/, ' ').strip
  next if text.empty?

  url = if relative == 'README.md'
          './'
        else
          relative.sub(/\.md$/, '.html')
        end
  { 'title' => CGI.unescapeHTML(title).strip, 'url' => url, 'text' => text[0, 12000] }
end.compact

File.write(File.join(root, 'search.json'), JSON.generate(documents) + "\n")