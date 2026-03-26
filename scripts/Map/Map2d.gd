extends TileMapLayer

class_name Map2d

# enums are typically a label but associated with an integer
enum terrain_data_types { terrain_type }

func _ready():
	print (get_terrain_data_for_tile(0, 0, 0, terrain_data_types.terrain_type))
	
# Data will be the terrain type specified in the custom data
# my custom data layer is called: terrain_type
# x and y are the cell values
func get_terrain_data_for_tile(layer, data, x, y):
	var tile:TileData = get_cell_tile_data(Vector2i(x,y))
	
	if (tile != null):
		return tile.get_custom_data(terrain_data_types.keys()[data])
	else:
		return null
