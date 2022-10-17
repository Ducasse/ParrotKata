Class {
	#name : #Parrot,
	#superclass : #Object,
	#instVars : [
		'voltage',
		'isNailed',
		'numberOfCoconuts',
		'type'
	],
	#category : #Parrot
}

{ #category : #'instance creation' }
Parrot class >> type: type 
	numberOfCoconuts: numberOfCoconuts 
	voltage: voltage 
	isNailed: isNailed [
	
	^ self new 
		type: type;
      numberOfCoconuts: numberOfCoconuts;
      voltage: voltage;
      isNailed: isNailed; 
		yourself
]

{ #category : #accessing }
Parrot >> baseSpeed [
	^ 12.0
]

{ #category : #accessing }
Parrot >> baseSpeed: volt [
	^ 24.0 min: volt * self baseSpeed
]

{ #category : #accessing }
Parrot >> isNailed [

	^ isNailed
]

{ #category : #accessing }
Parrot >> isNailed: anObject [

	isNailed := anObject
]

{ #category : #accessing }
Parrot >> loadFactor [

	^ 9.0
]

{ #category : #accessing }
Parrot >> numberOfCoconuts [

	^ numberOfCoconuts
]

{ #category : #accessing }
Parrot >> numberOfCoconuts: anObject [

	numberOfCoconuts := anObject
]

{ #category : #accessing }
Parrot >> speed [

	type = #European
		ifTrue: [ ^ self baseSpeed ]
		ifFalse: [ type = #African
					ifTrue: [ ^ 0 max: self baseSpeed - self loadFactor * self numberOfCoconuts  ]
					ifFalse: [  type = #Norvegian
									ifTrue: [ ^ isNailed ifTrue: [ 0 ] ifFalse: [ self baseSpeed: voltage ] ]
				 					ifFalse: [ ^ self error: 'Should be unreachable' ]	
								]]
]

{ #category : #accessing }
Parrot >> type [

	^ type
]

{ #category : #accessing }
Parrot >> type: anObject [

	type := anObject
]

{ #category : #accessing }
Parrot >> voltage [

	^ voltage
]

{ #category : #accessing }
Parrot >> voltage: anObject [

	voltage := anObject
]
