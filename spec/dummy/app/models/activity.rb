class Activity < ActiveRecord::Base

  belongs_to :actor, :class_name => "User"
  belongs_to :auditable, :polymorphic => true
end
