Framer.Defaults.Animation = {
	curve: "spring(100, 10, 0)"
	#spring (tension, friction, velocity)
	#spring (bounciness, weight, wind-up)
	
}

bg = new BackgroundLayer
	backgroundColor: "#fefefe"

card = new Layer
	width: 360, height: 360
	backgroundColor:  "rgb(255, 175, 0)"	
	#html: "front"
	borderRadius: 20
		
card.center()

card.on Events.Click, ->
	card.states.next()

card.states.add ({

front: {
	# html: "front"
}

back: {
	backgroundColor: "rgb(0, 0, 0)"
	rotationY: 180
	# html: "back"
}	
})



	
	
	