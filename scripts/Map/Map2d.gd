extends TileMapLayer

class_name Map2d

enum terrain_data_types { terrain_type }

func _ready():
	print(get_terrain_data_for_tile(0, 0, 0, terrain_data_types.terrain_type))
	
	
func get_terrain_data_for_tile(layer, data, x, y):
	var tile:TileData = get_cell_tile_data(x, y, Vector2i) # This is broken because I'm using TileMapLayer, not the deprecated TileMapp
	
	if (tile != null):
		return tile.get_custom_data(terrain_data_types.keys()[data])
	else: 
		return null
	
	
