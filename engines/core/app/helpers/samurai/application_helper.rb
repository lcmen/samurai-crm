module Samurai
  module ApplicationHelper
    FLASH_CLASSES = {
      notice: "alert alert-info",
      success: "alert alert-success",
      alert: "alert alert-danger",
      error: "alert alert-danger"
    }
    def flash_class(level)
      FLASH_CLASSES[level]
    end
  end
end
