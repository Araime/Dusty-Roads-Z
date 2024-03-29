extends Area2D

#n pc node reference
var npc

func _ready():
	npc = get_tree().root.get_node("Main/NPC")

# if the player enters the collision body, destroy item and update quest
func _on_body_entered(body):
	if body.name == "Player":
		print("Quest item obtained!")
		get_tree().queue_delete(self)
		npc.quest_complete = true
