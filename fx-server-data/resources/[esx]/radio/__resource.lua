resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

-- Example custom radios
supersede_radio "RADIO_01_CLASS_ROCK" { url = "http://radio.mosaiquefm.net:8000/mosalive", volume = 0.2, name = "Mosaique FM" }
supersede_radio "RADIO_02_POP" { url = "http://185.52.127.173/fr/30001/mp3_128.mp3?origine=frequence-radio", volume = 0.2, name = "NRJ" }



files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
