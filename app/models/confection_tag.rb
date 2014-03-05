class ConfectionTag < ActiveRecord::Base
  self.table_name = "confections_tags"
  belongs_to :confection
  belongs_to :tag
end
