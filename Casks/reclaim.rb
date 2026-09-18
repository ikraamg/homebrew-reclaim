cask "reclaim" do
  version "0.1.1"
  sha256 "d8bf008316879a4ce105db6807c6885ec22bc1edbad5a2e51d9dd8cd4e33d8c4"

  url "https://github.com/ikraamg/reclaim/releases/download/v#{version}/Reclaim-#{version}.zip"
  name "Reclaim"
  desc "Finds and kills wasted local processes on a Mac, and reports what eats disk and what starts at login"
  homepage "https://github.com/ikraamg/reclaim"

  depends_on macos: ">= :sonoma"

  app "Reclaim.app"

  uninstall quit: "com.ikraam.Reclaim"

  zap trash: [
    "~/Library/Application Support/Reclaim",
    "~/.local/bin/reclaim",
  ]
end
