module Jhtmlarea
  if defined?(::Rails) and Gem::Requirement.new('>= 3.1').satisfied_by?(Gem::Version.new ::Rails.version)
    module Rails
      class Engine < ::Rails::Engine
        initializer "jhtmlarea.assets.precompile" do |app|
          app.config.assets.precompile += 
            %w(jHtmlArea.png jHtmlArea_Toolbar_Group_BG.png jHtmlArea_Toolbar_Group__Btn_Select_BG.png)
        end
      end
    end
  end
end