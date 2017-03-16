class Exercise
  TEMPLATE = <<HTML
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>{{site_title}}</title>
  </head>
  <body>

  </body>
  </html>
HTML

  def self.perform site_title
    TEMPLATE.gsub "{{site_title}}", site_title
  end
end
