class Contact < ActiveRecord::Base

  # normalize callsign, class, section case
  before_validation :normalize_entries
  before_validation :strip_whitespace

  # Check to make sure all fields are filled
  validates :band, :mode, :callsign, :classification, :section, presence: true

  # Is the band valid?
  validates :band, inclusion: { in: ContactsHelper::BAND, message: "%{value} is not a valid band." }

  # Is the mode valid?
  validates :mode, inclusion: { in: ContactsHelper::MODE, message: "%{value} is not a valid mode." }

  # Is the entry unique?
  validates :callsign, uniqueness: { scope: [:band, :mode], message: "%{value} is a duplicate entry." }

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

end
