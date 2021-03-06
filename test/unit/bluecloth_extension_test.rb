require File.expand_path(File.join(File.dirname(__FILE__), %w[.. .. lib pdoc generators html bluecloth_extension]))
require 'test/unit'

class BlueClothExtensions < Test::Unit::TestCase
  def test_code_block
    assert_equal BlueCloth.new("\n\n    foo\n").to_html,
      "<pre><code class=\"javascript\">foo\n</code></pre>"

    assert_equal BlueCloth.new("\n\n    lang: html\n    foo\n").to_html,
      "<pre><code class=\"html\">foo\n</code></pre>"
      
    assert_equal BlueCloth.new("\n\n    language: css\n    foo\n").to_html,
      "<pre><code class=\"css\">foo\n</code></pre>"
  end
end
