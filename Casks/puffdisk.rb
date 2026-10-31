cask "puffdisk" do
  version "0.0.1"
  sha256 "b4b0a4aefad5d9d17b0feedf3d6c232255ee8909f52695b96cbf38c1e0148520"

  url "https://github.com/towaos/puffdisk/releases/download/v#{version}/Puffdisk-#{version}.zip"
  name "Puffdisk"
  desc "Menu bar character that cleans caches safely"
  homepage "https://towaos.com"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Puffdisk.app"

  zap trash: [
    "~/Library/Application Support/Puffdisk",
  ]
end
