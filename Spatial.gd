extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for w in range(0, 70):
		for l in range(0, 70):
			var meshInstance = MeshInstance.new()
			meshInstance.mesh = CubeMesh.new();
			meshInstance.translate(Vector3(
				w - 70 * 0.5,
				0,
				l - 70 * 0.5
			))
			meshInstance.transform = meshInstance.transform.scaled(Vector3(
				0.25,
				0.25,
				0.25
			))
			add_child(meshInstance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
