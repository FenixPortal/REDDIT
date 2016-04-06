module ApplicationHelper
  BOOTSTRAP_FLASH_MSG = {
    success: 'alert-success',
    error: 'alert-error',
    alert: 'alert-alert',
    notice: 'alert-notice',
    info: 'alert-info'
  }

  def bootstrap_class_for(flash_type)
    BOOTSTRAP_FLASH_MSG.fetch(flash_type, flash_type.to_s)
  end

  def bootstrap_icon_for flash_type
    { success: "ok-circle", error: "remove-circle", alert: "warning-sign", notice: "exclamation-sign" }[flash_type] || "question-sign"
  end
end
