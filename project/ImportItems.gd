extends Node

# export (String, FILE, "*.json") var item_file : String

func load_items(file_path) -> Dictionary:
	var file = File.new()
	assert file.file_exists(file_path)
	
	file.open(file_path)
	var items = parse_json(file.get_as_text())
	assert items.size() > 0
	return items