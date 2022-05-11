require "cucumber/rake/task"
require 'erb'

After do |scenario|
    Dir.mkdir('data') unless Dir.exist?('data')
    Dir.mkdir('data/Reports') unless Dir.exist?('data/Reports')
    image_name = "data/Reports/img/imagem-1.png"
    temp_shot = page.save_screenshot(image_name)
    file_shot = File.open(temp_shot, "rb").read
    final_shot = Base64.encode64(file_shot)
    embed(temp_shot, "image/png", "Evidência!")
  end
  
  at_exit do
  ReportBuilder.configure do |config|
    config.json_path = 'data/Reports/report.json'
    config.report_path = 'data/Reports/Relatorio'
    config.report_types = [:html]
    config.report_title = 'Relatório Moda'
    config.include_images = true
    config.compress_images = false
    config.color = 'indigo'
    config.additional_info = {browser: 'Chrome', environment: 'Projeto Final', 
    QAs: 'Claudio Lopes & David Allan', Projeto: 'Projeto Final'}
  end
  
  ReportBuilder.build_report
  end