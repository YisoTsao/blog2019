module FlashesHelper
  FLASH_CLASSES = { info: "info", success: "success", warning: "warning", danger: "danger" }.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_sym, key
  end

  def user_flashes
    flash.to_hash.slice "info", "success", "warning", "danger"
  end
end