extends Node

const PercentageLifeSteal_MOD_DIR = "kongye59-PercentageLifeSteal/"
const PercentageLifeSteal_LOG = "kongye59-PercentageLifeSteal"

var dir = ""
var ext_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", PercentageLifeSteal_LOG)
	dir = modLoader.UNPACKED_DIR + PercentageLifeSteal_MOD_DIR
	ext_dir = dir + "extensions/"

	# Add extensions
	modLoader.install_script_extension(ext_dir + "run_data.gd")


func _ready():
	ModLoaderUtils.log_info("Done", PercentageLifeSteal_LOG)
