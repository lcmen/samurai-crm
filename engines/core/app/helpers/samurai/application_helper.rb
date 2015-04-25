module Samurai
  module ApplicationHelper
    FLASH_CLASSES = {
      notice: "alert alert-info",
      success: "alert alert-success",
      alert: "alert alert-danger",
      error: "alert alert-danger"
    }

    def active(path, comparator = :absolute)
      if comparator == :inclusion
        /^#{path}/ =~ request.path ? 'active' : ''
      else
        current_page?(path) ? 'active' : ''
      end
    end

    def flash_class(level)
      FLASH_CLASSES[level]
    end
  end
end
