require 'json'

if !File.exist? '/home/pi/pop_machine/data/pops.json'
  exit
end

system_json = JSON.parse(File.read('/home/pi/pop_machine/data/pops.json'))

Facter.add(:pops) do
  setcode do
    system_json['pops']
  end
end
