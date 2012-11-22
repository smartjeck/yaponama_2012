class Account < ActiveRecord::Base
  attr_accessible :name, :debit, :credit, :accountable_id, :accountable_type
  belongs_to :accountable, :polymorphic => true
  has_many :left_transactions, :class_name => "Transaction", :foreign_key => "left_account_id"
  has_many :right_transactions, :class_name => "Transaction", :foreign_key => "right_account_id"

  validates :credit, :numericality => true
  validates :debit, :numericality => true

  def to_label
    accountable.to_label
  end

  before_save :create_transaction

  def create_transaction
    #if changes[:money_available] && changes[:money_locked]
    #  raise 'Unable to make both changes in account'
    #end

    if changes.present?

      # TODO check
      if changes[:credit]# && changes[:credit][0] != changes[:credit][1]
        left_transactions.build(:left_account => self, :left_money => changes[:credit][1] - changes[:credit][0] )
      end

      if changes[:debit]# && changes[:debit][0] != changes[:debit][1]
        right_transactions.build(:right_account => self, :right_money => changes[:debit][1] - changes[:debit][0])
      end

    end
  end

end
