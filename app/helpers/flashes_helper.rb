module FlashesHelper
  FLASH_CLASS = { alert: "danger", notice: "success", warning: "warning"}.freeze
  def flash_class(key)
    FLASH_CLASS.fetch key.to_sym, key
  end

  def user_facing_flashes
    flash.to_hash.slice "alert", "notice", "warning"
    # flash.to_hash 将flash转换成hash类型
    # slice剪切出对应的数据
  end
end
