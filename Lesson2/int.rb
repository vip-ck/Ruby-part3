# frozen_string_literal: true

class Integer
  BYTS_KILOBYTES = 1024
  BYTS_MEGABYTES = 1_048_576
  BYTS_GIGABYTES = 1_073_741_824
  BYTS_TERABYTES = 1_099_511_627_776
  def kilobytes
    self * BYTS_KILOBYTES
  end

  def to_kilobytes
    self / BYTS_KILOBYTES
  end

  def megabytes
    self * BYTS_MEGABYTES
  end

  def to_megabytes
    self / BYTS_MEGABYTES
  end

  def gigabytes
    self * BYTS_GIGABYTES
  end

  def to_gigabytes
    self / BYTS_GIGABYTES
  end

  def terabytes
    self * BYTS_TERABYTES
  end

  def to_terabytes
    self / BYTS_TERABYTES
  end

  def fail_size
    if self < 1.kilobytes then format('%d', self)
    elsif self < 1.megabytes then format('%d K', to_kilobytes)
    elsif self < 1.gigabytes then format('%d M', to_megabytes)
    elsif self < 1.terabytes then format('%d G', to_gigabytes)
    else
      format('%d T', to_terabytes)
    end
  end
end
size = File.size(ARGV.first)
puts size.fail_size
