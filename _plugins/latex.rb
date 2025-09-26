module Jekyll

  class AbstractBlock < Liquid::Block
    def render(context)
      text = super  # 获取块内原始内容
      site = context.registers[:site]  # 获取 Jekyll 的 site 对象
      converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
      converted_text = converter.convert(text.strip)  # 将内容转换为 HTML
<<~HTML
    <div class='abstract'>
      <h5>Abstract</h5>
      <div>#{converted_text}</div>
    </div>
    HTML
      
    end
  end

  # "<div class='abstract'><h5>Abstract</h5><p style = text-align: left >#{converted_content}</p></div>"  # 包裹转换后的内容

    # class AbstractBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='abstract'><h5>Abstract</h5><p>#{text}</p></div>"
    #   end

    # end

    class TheoremBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='theorem'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class TheoremBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='theorem'>#{text}</div>"
    #   end
    # end

    class DefinitionBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='definition'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class DefinitionBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='definition'>#{text}</div>"
    #   end
    # end

    class ProblemBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='problem'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class ProblemBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='problem'>#{text}</div>"
    #   end
    # end


    class LemmaBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='lemma'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class LemmaBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='lemma'>#{text}</div>"
    #   end
    # end

    class PropositionBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='proposition'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class PropositionBlock < Liquid::Block
  
    #   def render(context)
    #     text = super
    #     "<div class='proposition'>#{text}</div>"
    #   end
    # end

    class CorollaryBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='corollary'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class CorollaryBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='corollary'>#{text}</div>"
    #   end
    # end

    class ExampleBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='example'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class ExampleBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='example'>#{text}</div>"
    #   end
    # end

    class SloganBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='slogan'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end
    
    # class SloganBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='slogan'>#{text}</div>"
    #   end
    # end

    class NoteBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='note'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end
    
    # class NoteBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='note'>#{text}</div>"
    #   end
    # end
   
    class QuestionBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='question'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class QuestionBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='question'>#{text}</div>"
    #   end
    # end

    class ProofBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='proof'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class ProofBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='proof'>#{text}</div>"
    #   end
    # end

    class SolutionBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='solution'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class SolutionBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='solution'>#{text}</div>"
    #   end
    # end

    class BlankBlock < Liquid::Block
      def render(context)
        text = super  # 获取块内原始内容
        site = context.registers[:site]  # 获取 Jekyll 的 site 对象
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)  # 获取 Markdown 转换器
        converted_content = converter.convert(text.strip)  # 将内容转换为 HTML
        "<div class='blank'>#{converted_content}</div>"  # 包裹转换后的内容
      end
    end

    # class BlankBlock < Liquid::Block

    #   def render(context)
    #     text = super
    #     "<div class='blank'>#{text}</div>"
    #   end
    # end

  end

Liquid::Template.register_tag('abs', Jekyll::AbstractBlock)
Liquid::Template.register_tag('thm', Jekyll::TheoremBlock)
Liquid::Template.register_tag('def', Jekyll::DefinitionBlock)
Liquid::Template.register_tag('lem', Jekyll::LemmaBlock)
Liquid::Template.register_tag('cor', Jekyll::CorollaryBlock)
Liquid::Template.register_tag('ex', Jekyll::ExampleBlock)
Liquid::Template.register_tag('pf', Jekyll::ProofBlock)
Liquid::Template.register_tag('slo', Jekyll::SloganBlock)
Liquid::Template.register_tag('note', Jekyll::NoteBlock)
Liquid::Template.register_tag('qs', Jekyll::QuestionBlock)
Liquid::Template.register_tag('prop', Jekyll::PropositionBlock)
Liquid::Template.register_tag('pro', Jekyll::ProblemBlock)
Liquid::Template.register_tag('sol', Jekyll::SolutionBlock)
Liquid::Template.register_tag('bl', Jekyll::BlankBlock)