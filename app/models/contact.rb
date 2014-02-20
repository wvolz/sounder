class Contact < ActiveRecord::Base

  # Check to make sure all fields are filled
  validates :band, :mode, :callsign, :classification, :section, presence: true

  # Is the band valid?
  validates :band, inclusion: { in: ContactsHelper::BAND, message: "%{value} is not a valid band." }

  # Is the mode valid?
  validates :mode, inclusion: { in: ContactsHelper::MODE, message: "%{value} is not a valid mode." }

  # Is the entry unique?
  validates :callsign, uniqueness: { scope: :band, message: "%{value} is a duplicate entry." }

  # Is the section valid?
  validates :section, inclusion: { in: ContactsHelper::ARRL_SECTIONS, message: "%{value} is not a valid ARRL section." }

end
