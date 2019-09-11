# Check if file exists before "managing" them

checkme = [
  '/etc/anacrontab',
  '/etc/crontab'
]


Facter.add(:existing) do
  setcode do

    fex = {}

    checkme.each do |f|
      fex[f] = File.exists?(f)
    end

    fex

  end
end

