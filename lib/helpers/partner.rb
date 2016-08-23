module PartnerHelper
  def partnerimage
    items.find_all('/assets/images/partner/*.{jpg,png}')
  end
end
