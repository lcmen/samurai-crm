module Samurai
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Samurai
    end
  end
end
