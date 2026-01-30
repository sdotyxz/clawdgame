extends Control

var message_label: Label

func _ready():
	# 创建按钮
	var btn = Button.new()
	btn.text = "点击我"
	btn.position = Vector2(640 - 50, 360 - 25)  # 居中
	btn.size = Vector2(100, 50)
	btn.pressed.connect(_on_button_pressed)
	add_child(btn)
	
	# 创建左上角标签
	message_label = Label.new()
	message_label.name = "MessageLabel"
	message_label.position = Vector2(20, 20)
	message_label.text = ""
	add_child(message_label)

func _on_button_pressed():
	var current_time = Time.get_datetime_string_from_system(false, true)
	message_label.text = "HelloWorld " + current_time
