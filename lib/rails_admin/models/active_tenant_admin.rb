module RailsAdmin
  module Models
    module ActiveTenantAdmin
      extend ActiveSupport::Concern

      included do
        rails_admin do
          weight 850
          navigation_label 'Administration'
          visible { ::User.current_super_admin? }

          index_template_name :active_tenants

          fields :tenant, :tasks
        end
      end
    end
  end
end
