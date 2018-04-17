module Setup
  class XsltConverter < ConverterTransformation
    include TemplateConverter
    include XsltTemplateCommon
    include RailsAdmin::Models::Setup::XsltConverterAdmin

    def execute(options)
      template_result  = render(options[:code], options[:source].to_xml)
      options[:target] = options[:target_data_type].new_from(template_result)
    end

    def code_extension
      '.xslt'
    end
  end
end