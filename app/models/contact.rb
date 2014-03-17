class Contact < ActiveRecord::Base

  # normalize callsign, class, section case
  before_validation :normalize_entries
  before_validation :strip_whitespace

  # Check to make sure all fields are filled
  validates :band, :mode, :callsign, presence: { message: "cannot be blank." }

  # Is the band valid?
  # It should be; select field
  validates :band, inclusion: { in: ContactsHelper::BAND, message: "%{value} is not a valid band." }

  # Is the mode valid?
  # It should be; select field
  validates :mode, inclusion: { in: ContactsHelper::MODE, message: "%{value} is not a valid mode." }

  # Is the entry unique?
  validates :callsign, uniqueness: { scope: [:band, :mode], message: "%{value} is a duplicate entry." }

  # Is the operating class valid?
  # Any number of transmitters; classes A-F
  # validates :classification, format: { with: /\d+[A-F]/, message: "Operating class is not valid." }
  validate :operating_class

  # Is the section valid?
  validates :section, inclusion: { in: ContactsHelper::ARRL_SECTIONS, message: "%{value} is not a valid ARRL section." }

  private

  def normalize_entries
    self.callsign.upcase!
    self.classification.upcase!
    self.section.upcase!
  end

  def strip_whitespace
    self.callsign.gsub!(/\s+/, "") || self.callsign
    self.classification.gsub!(/\s+/, "") || self.classification
    self.section.gsub!(/\s+/, "") || self.section
  end

  def operating_class 
    errors.add(:base, "Operating class is not valid.") unless /\d+[A-F]/.match(self.classification)
  end

end
