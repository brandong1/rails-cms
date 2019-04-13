class AdminUser < ApplicationRecord
    #self.table_name = "admin_users"

    attr_accessor :initials
end

admin = AdminUser.new
admin.initials = 'KS'
admin.initials #KS
