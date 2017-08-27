require 'json'

if !File.exist? '/home/pi/Pop_Machine/data/pops.json'
  exit
end

system_json = JSON.parse(File.read('/home/;i/Pop_Machine/data/pops.json'))

Facter.add(:controller_api) do
  setcode do
    system_json['pops']
  end
end
