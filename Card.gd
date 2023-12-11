@tool
extends Control

enum card_rarities {
	COMMON,
	UNCOMMON,
	RARE,
	EPIC,
}

var card_rarity_colors = [
	Color(0.60392159223557, 0.60392159223557, 0.60392159223557),
	Color(0.20590001344681, 0.70999997854233, 0.20590001344681),
	Color(0, 0.59215688705444, 0.94901961088181),
	Color(0.53200006484985, 0.22000002861023, 1),
]

@export var card_name: String
@export var card_art: Texture2D
@export_multiline var card_description: String
@export var card_rarity: card_rarities

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$NameBG/Name.text = card_name
	$TextureRect.texture = card_art
	$DescBG/Description.text = card_description
	$FooterBG/Footer.text = card_rarities.keys()[card_rarity].capitalize()
	$FooterBG/Footer.add_theme_color_override("font_color", card_rarity_colors[card_rarity])
