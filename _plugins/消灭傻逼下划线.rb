module Jekyll
    module Converters
      class Markdown::CustomKramdown < Markdown::KramdownParser
        def initialize(config)
          super(config)
          @config["math_engine"] ||= "mathjax"
          @config["disable_emphasis"] = true
        end
  
        def convert(content)
          # 确保内容为UTF-8编码
          content = content.force_encoding(Encoding::UTF_8)
          
          protected_content = protect_math(content)
          html = super(protected_content)
          restore_math(html)
        end
  
        private
  
        MATH_TAG = "MATHJAX_PROTECTED".freeze
  
        def protect_math(text)
          text.force_encoding(Encoding::UTF_8).gsub(/(\${1,2}.*?\${1,2})/m) do |match|
            # 显式转换编码
            encoded = Base64.strict_encode64(match.encode(Encoding::UTF_8))
            "#{MATH_TAG}#{encoded}#{MATH_TAG}"
          end
        end
  
        def restore_math(html)
          html.force_encoding(Encoding::UTF_8).gsub(/#{MATH_TAG}(.+?)#{MATH_TAG}/m) do
            Base64.strict_decode64($1).force_encoding(Encoding::UTF_8)
          end
        end
      end
    end
  end