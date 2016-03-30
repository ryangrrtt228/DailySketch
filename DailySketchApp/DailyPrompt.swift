//
//  SketchPrompt.swift
//  DailySketchApp
//
//  Created by Batman on 3/22/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import Foundation
import Firebase


let base = Firebase(url: "https://dailyskecth.firebaseio.com/prompts")

let Prompts = base.childByAppendingPath("prompts")
let post = ["prompt": "a Waterfall"]
let postref = Prompts.childByAutoId()

postref.setValue(post)

func PromptBase(prompt : Array) -> NSArray {
    
    
}

struct DailyPrompt {
    
    static let drawingPrompt = ["a Waterfall", "a Wizard's staff", "Zombies", "a Sandcastle","Fangs", "a Tattoo", "Your Family crest", "a Spaceship", "a Mythical beast", "a Spooky tree", "an Alien", "a Tropical cocktail", "a Robot", "a Dragon", "a Tombstone", "a Medieval goblet", "a King's throne", "a Mermaid", "a Vampire", "a Witches cauldron", "the Tooth fairy", "a Deep-sea monster", "a Magic carpet", "a Sculpture", "a Coral reef", "a Wine bottle", "the Staue of Liberty", "a Beast", "a Beauty", "an Elephant", "the Mayan ruins", "Birds", "a Camera", "a Bowl of Soup", "Your breakfast", "Your Snack", "Your Lunch", "Your Dinner", "a Flower vase", "a Ladder", "a Full Moon", "a Bright sun", "the Autumn", "the Summer", "the Spring", "the Winter", "a Butterfly", "a Caterpillar", "a Troll", "Roller skates", "Rain boots", "Weeds", "Flowers", "your Bedroom", "your Kitchen", "your Dining room", "your Bathroom", "an Egg hatching", "a Wristwatch", "the Night", "a Harvest", "a Pond", "a Raincoat", "a Hat", "a Water bottle", "a Flashlight", "a Sailboat", "a Dandelion", "a Earthworm", "a Bank robber", "a Policeman", "a Superhero", "a Villain", "the View out a window", "a Catus", "a Sunflowers", "a Mosquito", "a Spider web", "a Starfish", "some Flip flops", "a Lawn chair", "a Trampoline", "some Pots and pans", "a Sword", "a Lighthouse", "a Pie on a windowsil", "a Houseplant", "a Soldier", "a Chimney", "some Barbed wire", "a Squirrel", "some Hot sause", "some Chains", "a Beehive", "a Helicopter", "a Hot dog", "a Venus flytrap", "some Stained glass", "a Sphinx", "a Skateboard", "Serenity", " a Open book", "a Werewolf", "a Hourglass", "a Tower", "a Camel", "Cleopatra", "Your favorite book character", "the Desert", "the Forest", "the Mountains", "the Ocean", "a Pumpkin seed", "a Pinecone", "a Octupus", "a mannequin", "a Lollipop", "Something sticky", "some Footprints", "a Tractor", "some Slime", "a Island paradise", "Sand dunes", "an Archer", "Your favorite oufit", "some Trophies", "a Fishing Fly", "a Black hole", "a Cyclops", "a Swan", "a Mirror", "a Microphone", "some Pretzels", "a Newspaper", "a Submarine", "some scrambled eggs", "an Eel", "a Wave", "a Bike", "some Leather boots", "some Keys", "a Coffee cup", "a Self-portrait", "a Snake charmer", "a Playground", "a Sumo wrestler", "a Crystal chandelier", "an Eight ball", "some Secrets", "a Treasure chest", "a Children's toy", "Something that sparkles", "a Unicorn", "a Pirate", "a Tribal pattern", "a Suit of armor", "a Pinball machine", "an Erupting vaolcano", "a Seahorse", "a Ninja", "a Happy monster", "a Futuristic car", "the Three little pigs", "a Magic amulet", "the Yeti", "a Toolbox", "some Fish bones", "a Zipper", "a Carpenter", "a Dollhouse", "Handcuffs", "a Mask", "a Telescope", "a Classical piano", "a Windmill", "a Double-sided ax", "a Samurai", "a Ghost", "a Hot air ballon", "some Bubbles", "some Poka dots", "a Plate of cookies", "Snake scales", "a High dive", "a Pair of socks", "a Belt", "a Figure skater", "a Fisherman", "Space", "a Jack-o'-lantern", "Cinderella's glass slipper", "Hay bales", "Bumper cars", "a Covered wagon", "a Spy", "a Fighter jet", "a Parachute", "some Tree bark", "a Radio", "an Art gallery", "a Bow and arrow", "a Pepperoni pizza", "a Snail", "a Bushel of apples", "a Doorknob", "a Talking object", "a Harp", "Chess pieces", "some Sprinkles", "Electricity", "a Computer keyboard", "some Presents", "a Barn", "Plaid", "some Jewery", "a Ballet", "Curtains", "a Tripod", "Sunglasses", "a Bow tie", "Saturn's rings", "a Birdcage", "a Swamp creature", "a Horse and carriage", "a Bananna peel", "a Stapler", "some Toothpaste", "a Thunderstorm", "a Movie Poster", "Cinnamon sticks", "a Target", "a Video game controller", "a Skull", "an Elf", "a First love", "an Alien plant life", "a New baby", "Kids jumping", "Glaciers", "a Shark", "a Scarf", "a Wheelchair", "a Blacksmith", "a Four-wheeler", "Crossroads", "a Cowboy", "a Pedestal", "a Police car", "a Pug", "Somone who is full of joy", "What's under your bed", "some Hieroglyph", "a Dolphin", "a Wooden shield", "a Desk", "Laughing", "a Jump rope", "Something big next to something small", "a Taxi", "a Staircase", "a Tomahawk", "a Hummingbird", "a Hedgehog", "a Gorilla", "a Fire truck", "a Soda can", "a Teddy bear", "a Fruit basket", "a Fortune cookie", "a Smirk", "a Game of marbles", "Crumpled paper", "a Swordfish", "an Alarm clock", "a Goldfish", "Salt and pepper shakers", "a Puppet", "a Jet pack", "a Time machine", "some Hands", "some Wood fencing", "a Cave mouth", "a Milkshake", "Music", "High-heeled shoes", "a Smile", "a Mad scientist", "a Telephone booth", "a Skyscraper", "a Gargoyle", "a Diamond", "Sushi", "a Briar patch", "Something that comes in pairs", "a Box of chocolates", "a Brick wall", "a Bat", "a Chicken", "a Bonsai tree", "Headphones", "A new typeface", "a Jellyfish", "Candy canes", "a Lawn mower", "Rain puddles", "a School", "a Lamb", "a Wolf", "a Bell", "a Bowl of popcorn", "a Peacock", "a Lampshade", "a Turtle", "a Bear", "a Ceiling fan", "a Yo-yo", "a Oil spill", "a Kite", "an Invisible man", "a Casino", "Abraham Lincoln", "a Ice cream cone", "Corn on the cob", "Claws", "a Beekeeper", "Coins", "a Watermelon", "the Landing on the moon", "a Rotary telephone", "a Brain", "some Rocks", "a Needle in a haystack", "a Pinic basket", "a Fireplace", "a Bottle of poison", "a Genie in a bottle", "a Knight", "a Hammer", "an Acorn", "an Orange", "an Owl", "some Hair", "a Wheelbarrow", "the Pyramids", "some Exploding dynamite", "some Shrimp", "a Guitar", "a Drumset", "a Piano", "a Microphone", "a Griffin", "a Carousel", "a Rabbit", "some Puppies", "a Board game", "a Famous painting", "a Cobblestone road", "a Maple leaf", "a Lizard", "some Eyes", "some Ears", "a Mouth", "a Nose", "a Leopard", "a Record player", "a Bulldozer", "a Bride", "a Snowman", "a Feather headdress", "playing cards", "a Windy day", "a Sleeping bag", "a Dancing skeleton", "a Piggy bank", "a Wizard", "a Evil queen", "a Latern", "a Beach ball", "a Sprout", "a Cherub", "a Aircraft carrier", "a Olympic swimmer", "a Wedding dress", "a Feather", "a Baseball glove", "a Noodle", "a Cat", "a Dog", "the emotion Happy", "the emotion Sad", "the emotion Angry", "the emotion Relaxed", "some Graffiti", "a Motocycle", "a Tornado", "a Caveman", "a Pinapple", "the Loch Ness Monster", "a Flag", "a Gas Mask", "a Starry sky", "Your dream house", "a Deer", "Goldilocks", "a Frog", "a Tadpole", "a Swing", "a Circus clown", "the Earth", "a Cupcake", "some Lace", "a Rocking chair", "a Bass guitar", "Bravery", "the Big Ben", "a Doctor", "a Railroad car", "a Parade", "a Christmas sweater", "a Ferris wheel", "a Sci-fi gun", "a Medicine cabinet", "a Birthday party", "some Cutlery", "the Great Wall of China", "an Umbrella", "a Traffic sign", "a Catapult", "a Light bulb", "some Bamboo", "a Heart", "a Moon colony", "Sandwhiches", "a Juice box", "a Lake house", "some Bushes", "some Hard Candy", "some Camouflage", "a Platypus", "a Football helmet", "a Soccer game", "Balloons", "an Astronaut", "a Missing tooth", "a Memory", "a Jukebox", "a Tulip", "a Ladybug", "a Birthday cake", "a T-shirt", "an Igloo", "a Golf ball", "some Fossils", "Your least favorite food", "a Pencil cup", "a Half-eaten apple", "Food with a face", "a Horseshoe", "a Daffodil", "a Castle", "a Tea party", "Scared", "a Bag of chips", "Camping", "a Cabin", "a Bonfire", "a Ship", "a Watering can", "a Palm tree", "some Wind chimes", "a Armchair", "Fireworks", "a Knife", "a Waitress", "a Farmer", "a Wine cork", "a Fountain", "the Last leaf on a tree", "a Saber-toothed tiger", "a Grocery store", "a Rainbow", "a Typewriter", "a Engine", "a Bluebird", "a Blackbird", "a Shooting Star", "a Beetle", "A new invention", "a School of fish", "a Bearded lady", "a Bearded man", "a Secret garden", "a Secret agent", "a Suspension bridge", "a viking artifact", "a Vintage car", "the Eiffel Tower", "a Feast fit for a king", "a Upright bass", "a Treehouse", "a Seashell", "a Dinosaur", "a Sea lion", "the Taj Mahal", "Your favorite animal in a tuxedo", "a War"]
    
    
    
    
    static func randomWord() -> String {
        let index = Int(arc4random_uniform(UInt32(drawingPrompt.count)))
        let word = drawingPrompt[index]
        return word
        
    }
    
}

















