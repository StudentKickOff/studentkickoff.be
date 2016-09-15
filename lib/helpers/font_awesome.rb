module FontAwesomeHelper
  def fa(icon, size: nil, li: false, inline: false, fw: false)
    classes = ['fa', "fa-#{icon}"]

    classes << "fa-#{size}" if size
    classes << 'fa-li' if li
    classes << 'fa-fw' if fw

    "<i class='#{classes.join(' ')}'></i>"
  end
end
