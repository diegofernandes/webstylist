class ConfectionTag < ActiveRecord::Base
  belongs_to :confection
  belongs_to :tag
end
