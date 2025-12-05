GLOBAL_LIST_EMPTY(loadout_items)

/datum/loadout_item
	var/name = "Parent loadout datum"
	var/desc
	var/path
	var/donoritem			//autoset on new if null
	var/list/ckeywhitelist
	var/triumph_cost

/datum/loadout_item/New()
	if(isnull(donoritem))
		if(ckeywhitelist)
			donoritem = TRUE
	if (triumph_cost)
		desc += "<b>Costs [triumph_cost] TRIUMPH.</b>"

/datum/loadout_item/proc/donator_ckey_check(key)
	if(ckeywhitelist && ckeywhitelist.Find(key))
		return TRUE
	return

//Miscellaneous

/datum/loadout_item/card_deck
	name = "Card Deck"
	path = /obj/item/toy/cards/deck

/datum/loadout_item/farkle_dice
	name = "Farkle Dice Container"
	path = /obj/item/storage/pill_bottle/dice/farkle

/datum/loadout_item/tarot_deck
	name = "Tarot Deck"
	path = /obj/item/toy/cards/deck/tarot

/datum/loadout_item/custom_book
	name = "Custom Book"
	path = /obj/item/book/rogue/loadoutbook

//TOOLS

/datum/loadout_item/bauernwehr
	name = "Bauernwehr"
	path = /obj/item/rogueweapon/huntingknife/throwingknife/bauernwehr
	triumph_cost = 3

/datum/loadout_item/waterskin
	name = "waterskin"
	path = /obj/item/reagent_containers/glass/bottle/waterskin
	triumph_cost = 3

/datum/loadout_item/sack
	name = "sack"
	path = /obj/item/storage/roguebag
	triumph_cost = 3

/datum/loadout_item/pouch
	name = "pouch"
	path = /obj/item/storage/belt/rogue/pouch
	triumph_cost = 3

/datum/loadout_item/broom
	name = "broom"
	path = /obj/item/broom
	triumph_cost = 1

/datum/loadout_item/soap
	name = "soap"
	path = /obj/item/soap
	triumph_cost = 3

/datum/loadout_item/candle
	name = "candle"
	path = /obj/item/candle/yellow
	triumph_cost = 1

/datum/loadout_item/keyring
	name = "keyring"
	path = /obj/item/storage/keyring
	triumph_cost = 3

/datum/loadout_item/flint
	name = "flint"
	path = /obj/item/flint
	triumph_cost = 3

/datum/loadout_item/needle_thorn
	name = "thorn needle"
	path = /obj/item/needle/thorn
	triumph_cost = 1

/datum/loadout_item/wooden_bowl
	name = "bowl"
	path = /obj/item/reagent_containers/glass/bowl
	triumph_cost = 1

/datum/loadout_item/wooden_cup
	name = "cup"
	path = /obj/item/reagent_containers/glass/cup/wooden
	triumph_cost = 1

/datum/loadout_item/bottle
	name = "bottle"
	path = /obj/item/reagent_containers/glass/bottle/rogue
	triumph_cost = 1

//HATS
/datum/loadout_item/shalal
	name = "Keffiyeh"
	path = /obj/item/clothing/head/roguetown/roguehood/shalal

/datum/loadout_item/tricorn
	name = "Tricorn Hat"
	path = /obj/item/clothing/head/roguetown/helmet/tricorn

/datum/loadout_item/nurseveil
	name = "Nurse's Veil"
	path = /obj/item/clothing/head/roguetown/veiled

/datum/loadout_item/archercap
	name = "Archer's cap"
	path = /obj/item/clothing/head/roguetown/archercap

/datum/loadout_item/strawhat
	name = "Straw Hat"
	path = /obj/item/clothing/head/roguetown/strawhat

/datum/loadout_item/witchhat
	name = "Witch Hat"
	path = /obj/item/clothing/head/roguetown/witchhat

/datum/loadout_item/bardhat
	name = "Bard Hat"
	path = /obj/item/clothing/head/roguetown/bardhat

/datum/loadout_item/fancyhat
	name = "Fancy Hat"
	path = /obj/item/clothing/head/roguetown/fancyhat

/datum/loadout_item/furhat
	name = "Fur Hat"
	path = /obj/item/clothing/head/roguetown/hatfur

/datum/loadout_item/smokingcap
	name = "Smoking Cap"
	path = /obj/item/clothing/head/roguetown/smokingcap

/datum/loadout_item/headband
	name = "Headband"
	path = /obj/item/clothing/head/roguetown/headband

/datum/loadout_item/buckled_hat
	name = "Buckled Hat"
	path = /obj/item/clothing/head/roguetown/puritan

/datum/loadout_item/folded_hat
	name = "Folded Hat"
	path = /obj/item/clothing/head/roguetown/bucklehat

/datum/loadout_item/duelist_hat
	name = "Duelist's Hat"
	path = /obj/item/clothing/head/roguetown/duelhat

/datum/loadout_item/hood
	name = "Hood"
	path = /obj/item/clothing/head/roguetown/roguehood

/datum/loadout_item/hijab
	name = "Hijab"
	path = /obj/item/clothing/head/roguetown/roguehood/shalal/hijab

/datum/loadout_item/heavyhood
	name = "Heavy Hood"
	path = /obj/item/clothing/head/roguetown/roguehood/shalal/heavyhood

/datum/loadout_item/nunveil
	name = "Nun Veil"
	path = /obj/item/clothing/head/roguetown/nun

/datum/loadout_item/papakha
	name = "Papakha"
	path = /obj/item/clothing/head/roguetown/papakha

/datum/loadout_item/rosa_crown
	name = "Rosa Crown"
	path = /obj/item/flowercrown/rosa

/datum/loadout_item/salvia_crown
	name = "Salvia Crown"
	path = /obj/item/flowercrown/salvia

//CLOAKS
/datum/loadout_item/tabard
	name = "Tabard"
	path = /obj/item/clothing/cloak/tabard

/datum/loadout_item/tabard/astrata
	name = "Astrata Tabard"
	path = /obj/item/clothing/cloak/templar/astrata

/datum/loadout_item/tabard/noc
	name = "Noc Tabard"
	path = /obj/item/clothing/cloak/templar/noc

/datum/loadout_item/tabard/dendor
	name = "Dendor Tabard"
	path = /obj/item/clothing/cloak/templar/dendor

/datum/loadout_item/tabard/malum
	name = "Malum Tabard"
	path = /obj/item/clothing/cloak/templar/malum

/datum/loadout_item/tabard/eora
	name = "Eora Tabard"
	path = /obj/item/clothing/cloak/templar/eora

/datum/loadout_item/tabard/pestra
	name = "Pestra Tabard"
	path = /obj/item/clothing/cloak/templar/pestra

/datum/loadout_item/tabard/ravox
	name = "Ravox Tabard"
	path = /obj/item/clothing/cloak/cleric/ravox

/datum/loadout_item/tabard/abyssor
	name = "Abyssor Tabard"
	path = /obj/item/clothing/cloak/templar/abyssor

/datum/loadout_item/tabard/necra
	name = "Abyssor Tabard"
	path = /obj/item/clothing/cloak/templar/necra

/datum/loadout_item/tabard/psydon
	name = "Psydon Tabard"
	path = /obj/item/clothing/cloak/templar/psydon

/datum/loadout_item/surcoat
	name = "Surcoat"
	path = /obj/item/clothing/cloak/stabard

/datum/loadout_item/jupon
	name = "Jupon"
	path = /obj/item/clothing/cloak/stabard/surcoat

/datum/loadout_item/cape
	name = "Cape"
	path = /obj/item/clothing/cloak/cape

/datum/loadout_item/halfcloak
	name = "Halfcloak"
	path = /obj/item/clothing/cloak/half

/datum/loadout_item/ridercloak
	name = "Rider Cloak"
	path = /obj/item/clothing/cloak/half/rider

/datum/loadout_item/raincloak
	name = "Rain Cloak"
	path = /obj/item/clothing/cloak/raincloak

/datum/loadout_item/furcloak
	name = "Fur Cloak"
	path = /obj/item/clothing/cloak/raincloak/furcloak

/datum/loadout_item/direcloak
	name = "direbear cloak"
	path = /obj/item/clothing/cloak/darkcloak/bear

/datum/loadout_item/lightdirecloak
	name = "light direbear cloak"
	path = /obj/item/clothing/cloak/darkcloak/bear/light

/datum/loadout_item/volfmantle
	name = "Volf Mantle"
	path = /obj/item/clothing/cloak/volfmantle

/datum/loadout_item/eastcloak2
	name = "Leather Cloak"
	path = /obj/item/clothing/cloak/eastcloak2

/datum/loadout_item/thief_cloak
	name = "Rapscallion's Shawl"
	path = /obj/item/clothing/cloak/thief_cloak

/datum/loadout_item/wicker_cloak
	name = "Wicker Cloak"
	path = /obj/item/clothing/cloak/wickercloak
/datum/loadout_item/tabardscarlet
	name = "Tabard, Scarlet"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/tabardscarlet

/datum/loadout_item/shroudscarlet
	name = "Tabard's Shroud, Scarlet"
	path = /obj/item/clothing/head/roguetown/roguehood/shroudscarlet

/datum/loadout_item/tabardblack
	name = "Tabard, Black"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/tabardblack

/datum/loadout_item/shroudblack
	name = "Tabard's Shroud, Black"
	path = /obj/item/clothing/head/roguetown/roguehood/shroudblack

/datum/loadout_item/poncho
	name = "Poncho"
	path = /obj/item/clothing/cloak/poncho

//SHOES
/datum/loadout_item/darkboots
	name = "Dark Boots"
	path = /obj/item/clothing/shoes/roguetown/boots

/datum/loadout_item/babouche
	name = "Babouche"
	path = /obj/item/clothing/shoes/roguetown/shalal

/datum/loadout_item/nobleboots
	name = "Noble Boots"
	path = /obj/item/clothing/shoes/roguetown/boots/nobleboot

/datum/loadout_item/sandals
	name = "Sandals"
	path = /obj/item/clothing/shoes/roguetown/sandals

/datum/loadout_item/shortboots
	name = "Short Boots"
	path = /obj/item/clothing/shoes/roguetown/shortboots

/datum/loadout_item/gladsandals
	name = "Gladiatorial Sandals"
	path = /obj/item/clothing/shoes/roguetown/gladiator

/datum/loadout_item/ridingboots
	name = "Riding Boots"
	path = /obj/item/clothing/shoes/roguetown/ridingboots

/datum/loadout_item/ankletscloth
	name = "Cloth Anklets"
	path = /obj/item/clothing/shoes/roguetown/boots/clothlinedanklets

/datum/loadout_item/ankletsfur
	name = "Fur Anklets"
	path = /obj/item/clothing/shoes/roguetown/boots/furlinedanklets

/datum/loadout_item/exoticanklets
	name = "Exotic Anklets"
	path = /obj/item/clothing/shoes/roguetown/anklets

/datum/loadout_item/rumaclanshoes
	name = "Raised Sandals"
	path = /obj/item/clothing/shoes/roguetown/armor/rumaclan

//SHIRTS
/datum/loadout_item/longcoat
	name = "Longcoat"
	path = /obj/item/clothing/suit/roguetown/armor/longcoat

/datum/loadout_item/robe
	name = "Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe

/datum/loadout_item/phys_robe
	name = "Physicker's Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/phys

/datum/loadout_item/feld_robe
	name = "Feldsher's Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/feld

/datum/loadout_item/formalsilks
	name = "Formal Silks"
	path = /obj/item/clothing/suit/roguetown/shirt/undershirt/puritan

/datum/loadout_item/longshirt
	name = "Shirt"
	path = /obj/item/clothing/suit/roguetown/shirt/undershirt/black

/datum/loadout_item/shortshirt
	name = "Short-sleeved Shirt"
	path = /obj/item/clothing/suit/roguetown/shirt/shortshirt

/datum/loadout_item/sailorshirt
	name = "Striped Shirt"
	path = /obj/item/clothing/suit/roguetown/shirt/undershirt/sailor

/datum/loadout_item/sailorjacket
	name = "Leather Jacket"
	path = /obj/item/clothing/suit/roguetown/armor/leather/vest/sailor

/datum/loadout_item/priestrobe
	name = "Undervestments"
	path = /obj/item/clothing/suit/roguetown/shirt/undershirt/priest

/datum/loadout_item/exoticsilkbra
	name = "Exotic Silk Bra"
	path = /obj/item/clothing/suit/roguetown/shirt/exoticsilkbra

/datum/loadout_item/bottomtunic
	name = "Low-cut Tunic"
	path = /obj/item/clothing/suit/roguetown/shirt/undershirt/lowcut

/datum/loadout_item/tunic
	name = "Tunic"
	path = /obj/item/clothing/suit/roguetown/shirt/tunic

/datum/loadout_item/stripedtunic
	name = "Striped Tunic"
	path = /obj/item/clothing/suit/roguetown/armor/workervest

/datum/loadout_item/dress
	name = "Dress"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gen

/datum/loadout_item/dress/bardress
	name = "Dress, Barmaid"
	path = /obj/item/clothing/suit/roguetown/shirt/dress

/datum/loadout_item/dress/chemise
	name = "Chemise"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/silkdress

/datum/loadout_item/dress/sexydress
	name = "Dress, Sheer"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gen/sexy

/datum/loadout_item/dress/straplessdress
	name = "Dress, Strapless"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gen/strapless

/datum/loadout_item/dress/straplessdress/alt
	name = "Dress, Strapless (Alt)"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gen/strapless/alt

/datum/loadout_item/dress/silkydress
	name = "Dress, Silky"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/silkydress

/datum/loadout_item/dress/nobledress
	name = "Dress, Noble"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/noble

/datum/loadout_item/dress/velvetdress
	name = "Dress, Velvet"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/velvet

/datum/loadout_item/dress/winterdress_light
	name = "Dress, Cold"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/winterdress_light

/datum/loadout_item/gown
	name = "Gown, Spring"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gown

/datum/loadout_item/gown/summer
	name = "Gown, Summer"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gown/summergown

/datum/loadout_item/gown/fall
	name = "Gown, Fall"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gown/fallgown

/datum/loadout_item/gown/winter
	name = "Gown, Winter"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/gown/wintergown

/datum/loadout_item/gown/silkydress
	name = "Silky Dress"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/silkydress

/datum/loadout_item/noblecoat
	name = "Fancy Coat"
	path = /obj/item/clothing/suit/roguetown/shirt/tunic/noblecoat

/datum/loadout_item/leathervest
	name = "Leather Vest"
	path = /obj/item/clothing/suit/roguetown/armor/leather/vest

/datum/loadout_item/nun_habit
	name = "Nun Habit"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/nun

/datum/loadout_item/eastshirt1
	name = "Black Foreign Shirt"
	path = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt1

/datum/loadout_item/eastshirt2
	name = "White Foreign Shirt"
	path = /obj/item/clothing/suit/roguetown/shirt/undershirt/eastshirt2
//PANTS
/datum/loadout_item/loincloth
	name = "Loincloth"
	path = /obj/item/clothing/under/roguetown/loincloth
	
/datum/loadout_item/tights
	name = "Cloth Tights"
	path = /obj/item/clothing/under/roguetown/tights/black

/datum/loadout_item/leathertights
	name = "Leather Tights"
	path = /obj/item/clothing/under/roguetown/trou/leathertights

/datum/loadout_item/trou
	name = "Work Trousers"
	path = /obj/item/clothing/under/roguetown/trou

/datum/loadout_item/leathertrou
	name = "Leather Trousers"
	path = /obj/item/clothing/under/roguetown/trou/leather

/datum/loadout_item/leathershorts
	name = "Leather Shorts"
	path = /obj/item/clothing/under/roguetown/heavy_leather_pants/shorts

/datum/loadout_item/sailorpants
	name = "Seafaring Pants"
	path = /obj/item/clothing/under/roguetown/tights/sailor

/datum/loadout_item/skirt
	name = "Skirt"
	path = /obj/item/clothing/under/roguetown/skirt

//ACCESSORIES
/datum/loadout_item/wrappings
	name = "Handwraps"
	path = /obj/item/clothing/wrists/roguetown/wrappings

/datum/loadout_item/allwrappings
	name = "Cloth Wrappings"
	path = /obj/item/clothing/wrists/roguetown/allwrappings

/datum/loadout_item/spectacles
	name = "Spectacles"
	path = /obj/item/clothing/mask/rogue/spectacles

/datum/loadout_item/gloves
	name = "Leather Gloves"
	path = /obj/item/clothing/gloves/roguetown/leather

/datum/loadout_item/fingerless
	name = "Fingerless Gloves"
	path = /obj/item/clothing/gloves/roguetown/fingerless

/datum/loadout_item/bandages
	name = "Bandages, Gloves"
	path = /obj/item/clothing/gloves/roguetown/bandages

/datum/loadout_item/exoticsilkbelt
	name = "Exotic Silk Belt"
	path = /obj/item/storage/belt/rogue/leather/exoticsilkbelt

/datum/loadout_item/ragmask
	name = "Rag Mask"
	path = /obj/item/clothing/mask/rogue/ragmask

/datum/loadout_item/halfmask
	name = "Halfmask"
	path = /obj/item/clothing/mask/rogue/shepherd

/datum/loadout_item/dendormask
	name = "Briar Mask"
	path = /obj/item/clothing/head/roguetown/dendormask

/datum/loadout_item/exoticsilkmask
	name = "Exotic Silk Mask"
	path = /obj/item/clothing/mask/rogue/exoticsilkmask

/datum/loadout_item/duelmask
	name = "Duelist's Mask"
	path = /obj/item/clothing/mask/rogue/duelmask

/datum/loadout_item/pipe
	name = "Pipe"
	path = /obj/item/clothing/mask/cigarette/pipe

/datum/loadout_item/pipewestman
	name = "Westman Pipe"
	path = /obj/item/clothing/mask/cigarette/pipe/westman

/datum/loadout_item/feather
	name = "Feather"
	path = /obj/item/natural/feather

/datum/loadout_item/cursed_collar
	name = "Cursed Collar"
	path = /obj/item/clothing/neck/roguetown/cursed_collar

/datum/loadout_item/cloth_blindfold
	name = "Cloth Blindfold"
	path = /obj/item/clothing/mask/rogue/blindfold

/datum/loadout_item/fake_blindfold
	name = "Fake Blindfold"
	path = /obj/item/clothing/mask/rogue/blindfold/fake

/datum/loadout_item/bases
	name = "Cloth military skirt"
	path = /obj/item/storage/belt/rogue/leather/battleskirt

/datum/loadout_item/fauldedbelt
	name = "Belt with faulds"
	path = /obj/item/storage/belt/rogue/leather/battleskirt/faulds

/datum/loadout_item/psicross
	name = "Psydonian Cross"
	path = /obj/item/clothing/neck/roguetown/psicross

/datum/loadout_item/psicross/astrata
	name = "Amulet of Astrata"
	path = /obj/item/clothing/neck/roguetown/psicross/astrata

/datum/loadout_item/psicross/noc
	name = "Amulet of Noc"
	path = /obj/item/clothing/neck/roguetown/psicross/noc

/datum/loadout_item/psicross/abyssor
	name = "Amulet of Abyssor"
	path = /obj/item/clothing/neck/roguetown/psicross/abyssor

/datum/loadout_item/psicross/xylix
	name = "Amulet of Xylix"
	path = /obj/item/clothing/neck/roguetown/psicross/xylix

/datum/loadout_item/psicross/dendor
	name = "Amulet of Dendor"
	path = /obj/item/clothing/neck/roguetown/psicross/dendor

/datum/loadout_item/psicross/necra
	name = "Amulet of Necra"
	path = /obj/item/clothing/neck/roguetown/psicross/necra

/datum/loadout_item/psicross/pestra
	name = "Amulet of Pestra"
	path = /obj/item/clothing/neck/roguetown/psicross/pestra

/datum/loadout_item/psicross/ravox
	name = "Amulet of Ravox"
	path = /obj/item/clothing/neck/roguetown/psicross/ravox

/datum/loadout_item/psicross/malum
	name = "Amulet of Malum"
	path = /obj/item/clothing/neck/roguetown/psicross/malum

/datum/loadout_item/psicross/eora
	name = "Amulet of Eora"
	path = /obj/item/clothing/neck/roguetown/psicross/eora

/datum/loadout_item/psicross/zizo
	name = "Decrepit Zcross"
	path = /obj/item/clothing/neck/roguetown/psicross/inhumen/aalloy

/datum/loadout_item/wedding_band
	name = "silver wedding band"
	path = /obj/item/clothing/ring/band

/datum/loadout_item/chaperon
    name = "Chaperon (Normal)"
    path = /obj/item/clothing/head/roguetown/chaperon

/datum/loadout_item/chaperon/alt
    name = "Chaperon (Alt)"
    path = /obj/item/clothing/head/roguetown/chaperon/greyscale

/datum/loadout_item/chaperon/burgher
    name = "Noble's Chaperon"
    path = /obj/item/clothing/head/roguetown/chaperon/noble

/datum/loadout_item/jesterhat
    name = "Jester's Hat"
    path = /obj/item/clothing/head/roguetown/jester

/datum/loadout_item/jestertunick
    name = "Jester's Tunick"
    path = /obj/item/clothing/suit/roguetown/shirt/jester

/datum/loadout_item/jestershoes
    name = "Jester's Shoes"
    path = /obj/item/clothing/shoes/roguetown/jester

/datum/loadout_item/cotehardie
	name = "Fitted Coat"
	path = /obj/item/clothing/cloak/cotehardie

/datum/loadout_item/zcross_iron
	name = "Zizo Cross"
	path = /obj/item/clothing/neck/roguetown/zcross/iron

// MASKS
/datum/loadout_item/skullmask
	name = "Skull Mask"
	path = /obj/item/clothing/mask/rogue/skullmask

/datum/loadout_item/physician_mask
	name = "Physician Mask"
	path = /obj/item/clothing/mask/rogue/physician

/datum/loadout_item/kitsune_mask
	name = "Old Kitsune Mask"
	path = /obj/item/clothing/mask/rogue/facemask/yoruku_kitsune/loadout

/datum/loadout_item/oni_mask
	name = "Old Oni Mask"
	path = /obj/item/clothing/mask/rogue/facemask/yoruku_oni/loadout

/datum/loadout_item/naledi_lordmask
	name = "Old Naledi Mask"
	path = /obj/item/clothing/mask/rogue/lordmask/naledi/loadout

// CLOAKS
/datum/loadout_item/darkcloak
	name = "Dark Cloak"
	path = /obj/item/clothing/cloak/darkcloak

/datum/loadout_item/apron
	name = "Apron"
	path = /obj/item/clothing/cloak/apron

/datum/loadout_item/apron_blacksmith
	name = "Blacksmith Apron"
	path = /obj/item/clothing/cloak/apron/blacksmith

/datum/loadout_item/apron_waist
	name = "Waist Apron"
	path = /obj/item/clothing/cloak/apron/waist

/datum/loadout_item/apron_cook
	name = "Cook's Apron"
	path = /obj/item/clothing/cloak/apron/cook

/datum/loadout_item/black_cloak
	name = "Fur Overcloak"
	path = /obj/item/clothing/cloak/black_cloak

/datum/loadout_item/tribal_cloak
	name = "Tribal Cloak"
	path = /obj/item/clothing/cloak/tribal

/datum/loadout_item/battlenun_cloak
	name = "Nun Cloak"
	path = /obj/item/clothing/cloak/battlenun

/datum/loadout_item/hierophant_cloak
	name = "Hierophant Cloak"
	path = /obj/item/clothing/cloak/hierophant

/datum/loadout_item/forrester_snow
	name = "Snow Forrester Cloak"
	path = /obj/item/clothing/cloak/forrestercloak/snow

/datum/loadout_item/eastcloak1
	name = "Eastern Cloak"
	path = /obj/item/clothing/cloak/eastcloak1

/datum/loadout_item/kazengun_cloak
	name = "Jinbaori"
	path = /obj/item/clothing/cloak/kazengun

// SHOES
/datum/loadout_item/sandals
	name = "Sandals"
	path = /obj/item/clothing/shoes/roguetown/sandals

// NECK/GORGETS
/datum/loadout_item/forlorn_collar
	name = "Old Forlorn Collar"
	path = /obj/item/clothing/neck/roguetown/gorget/forlorncollar/loadout

// EASTERN CLOTHING
/datum/loadout_item/captain_robe
	name = "Eastern Flowery Robe"
	path = /obj/item/clothing/suit/roguetown/armor/basiceast/captainrobe/loadout

/datum/loadout_item/mentor_suit
	name = "Eastern Mentor Suit"
	path = /obj/item/clothing/suit/roguetown/armor/basiceast/mentorsuit/loadout

/datum/loadout_item/crafteast
	name = "Eastern Craft Robe"
	path = /obj/item/clothing/suit/roguetown/armor/basiceast/crafteast/loadout

// HEADWEAR
/datum/loadout_item/nochood
	name = "Noc Hood"
	path = /obj/item/clothing/head/roguetown/nochood

/datum/loadout_item/dendormask
	name = "Dendor Mask"
	path = /obj/item/clothing/head/roguetown/dendormask

/datum/loadout_item/necrahood
	name = "Necra Hood"
	path = /obj/item/clothing/head/roguetown/necrahood

/datum/loadout_item/physhood
	name = "Pestra Hood"
	path = /obj/item/clothing/head/roguetown/roguehood/phys

// ROBES - ASTRATA

/datum/loadout_item/eoramask
	name = "Eora Mask"
	path = /obj/item/clothing/head/roguetown/eoramask

/datum/loadout_item/antlerhood
	name = "Antler Hood"
	path = /obj/item/clothing/head/roguetown/antlerhood

/datum/loadout_item/briarthorns
	name = "Briar Thorns Headpiece"
	path = /obj/item/clothing/head/roguetown/padded/briarthorns

/datum/loadout_item/mentorhat
	name = "conical mentor hat"
	path = /obj/item/clothing/head/roguetown/mentorhat/loadout

// ROBES - ASTRATA
/datum/loadout_item/robe_astrata
	name = "Sun Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/astrata

/datum/loadout_item/hood_astrata
	name = "Sun Hood"
	path = /obj/item/clothing/head/roguetown/roguehood/astrata

// ROBES - NOC
/datum/loadout_item/robe_noc
	name = "Moon Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/noc

// ROBES - DENDOR
/datum/loadout_item/robe_dendor
	name = "Briar Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/dendor

// ROBES - ABYSSOR
/datum/loadout_item/robe_abyssor
	name = "Depths Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/abyssor

/datum/loadout_item/hood_abyssor
	name = "Depths Hood"
	path = /obj/item/clothing/head/roguetown/roguehood/abyssor

// ROBES - NECRA
/datum/loadout_item/robe_necra
	name = "Mourning Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/necra

// ROBES - RAVOX
/datum/loadout_item/hood_ravox
	name = "Ravox Tabard Gorget"
	path = /obj/item/clothing/head/roguetown/roguehood/ravoxgorget

// ROBES - EORA
/datum/loadout_item/robe_eora
	name = "Eoran Robe"
	path = /obj/item/clothing/suit/roguetown/shirt/robe/eora

//==========================
// TRIUMPH LOADOUT ITEMS
//==========================

//─────────────────────────────────────────────────────────────
// 2 TRIUMPH - Mundane Tools & Basic Items
//─────────────────────────────────────────────────────────────

// TOOLS & OBJECTS
/datum/loadout_item/tri_hammer
	name = "Hammer"
	path = /obj/item/rogueweapon/hammer
	triumph_cost = 2

/datum/loadout_item/tri_pickaxe
	name = "Pick"
	path = /obj/item/rogueweapon/pick
	triumph_cost = 2

/datum/loadout_item/tri_shovel
	name = "Shovel"
	path = /obj/item/rogueweapon/shovel
	triumph_cost = 2

/datum/loadout_item/tri_sickle
	name = "Sickle"
	path = /obj/item/rogueweapon/sickle
	triumph_cost = 2

/datum/loadout_item/tri_hoe
	name = "Hoe"
	path = /obj/item/rogueweapon/hoe
	triumph_cost = 2

// SHIELDS
/datum/loadout_item/tri_wooden_shield
	name = "Wooden Shield"
	path = /obj/item/rogueweapon/shield/wood
	triumph_cost = 2

// BLUNT WEAPONS
/datum/loadout_item/tri_woodclub
	name = "Wooden Club"
	path = /obj/item/rogueweapon/mace/woodclub
	triumph_cost = 2

// AXES
/datum/loadout_item/tri_bone_axe
	name = "Bone Axe"
	path = /obj/item/rogueweapon/stoneaxe/boneaxe
	triumph_cost = 2

// SWORDS
/datum/loadout_item/tri_stone_sword
	name = "Stone Sword"
	path = /obj/item/rogueweapon/sword/stone
	triumph_cost = 2

// DAGGERS & KNIVES
/datum/loadout_item/tri_stone_knife
	name = "Stone Knife"
	path = /obj/item/rogueweapon/huntingknife/stoneknife
	triumph_cost = 2

// POLEARMS & SPEARS
/datum/loadout_item/tri_stone_spear
	name = "Stone Spear"
	path = /obj/item/rogueweapon/spear/stone
	triumph_cost = 2

/datum/loadout_item/tri_bone_spear
	name = "Bone Spear"
	path = /obj/item/rogueweapon/spear/bonespear
	triumph_cost = 2

// ARMOR
/datum/loadout_item/tri_leather_armor
	name = "Leather Armor"
	path = /obj/item/clothing/suit/roguetown/armor/leather
	triumph_cost = 2

/datum/loadout_item/tri_leather_gloves
	name = "Leather Gloves"
	path = /obj/item/clothing/gloves/roguetown/leather
	triumph_cost = 2

/datum/loadout_item/tri_leather_bracers
	name = "Leather Bracers"
	path = /obj/item/clothing/wrists/roguetown/bracers/leather
	triumph_cost = 2

//─────────────────────────────────────────────────────────────
// 3 TRIUMPH - Wooden Polearms & Noble Clothing
//─────────────────────────────────────────────────────────────

// POLEARMS & SPEARS
/datum/loadout_item/tri_quarterstaff
	name = "Quarterstaff"
	path = /obj/item/rogueweapon/woodstaff/quarterstaff
	triumph_cost = 3

/datum/loadout_item/tri_woodstaff
	name = "Woodstaff"
	path = /obj/item/rogueweapon/woodstaff
	triumph_cost = 3

/datum/loadout_item/tri_scythe
	name = "Peasant Scythe"
	path = /obj/item/rogueweapon/scythe
	triumph_cost = 5

// CLOTHING - DRESSES & ROBES
/datum/loadout_item/tri_princess_dress
	name = "Princess Dress"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/royal/princess
	triumph_cost = 4

/datum/loadout_item/tri_royal_dress
	name = "Royal Dress"
	path = /obj/item/clothing/suit/roguetown/shirt/dress/royal
	triumph_cost = 4

/datum/loadout_item/tri_royal_sleeves
	name = "Royal Sleeves"
	path = /obj/item/clothing/wrists/roguetown/royalsleeves
	triumph_cost = 4

/datum/loadout_item/tri_lady_cloak
	name = "Lady's Cloak"
	path = /obj/item/clothing/cloak/lordcloak/ladycloak
	triumph_cost = 4

// CLOTHING - HEADWEAR
/datum/loadout_item/tri_circlet
	name = "Circlet"
	path = /obj/item/clothing/head/roguetown/circlet/loadout
	triumph_cost = 4

/datum/loadout_item/tri_volfhelm
	name = "Volf Helm"
	path = /obj/item/clothing/head/roguetown/helmet/leather/volfhelm
	triumph_cost = 3

/datum/loadout_item/tri_saiga
	name = "Saiga Helm"
	path = /obj/item/clothing/head/roguetown/helmet/leather/saiga
	triumph_cost = 3

// CLOTHING - JEWELRY & ACCESSORIES
/datum/loadout_item/tri_noble_amulet
	name = "Noble Amulet"
	path = /obj/item/clothing/neck/roguetown/ornateamulet/noble
	triumph_cost = 4

/datum/loadout_item/tri_shell_bracelet
	name = "Shell Bracelet"
	path = /obj/item/clothing/neck/roguetown/psicross/shell/bracelet
	triumph_cost = 4

/datum/loadout_item/tri_shell_necklace
	name = "oyster shell necklace"
	path = /obj/item/clothing/neck/roguetown/psicross/shell
	triumph_cost = 4

// CLOTHING - ARMOR
/datum/loadout_item/tri_regen_skin
	name = "Regenerating Skin"
	path = /obj/item/clothing/suit/roguetown/armor/regenerating/skin/loadout
	triumph_cost = 5


// BLUNT WEAPONS
/datum/loadout_item/tri_cudgel
	name = "Cudgel"
	path = /obj/item/rogueweapon/mace/cudgel
	triumph_cost = 4

// AXES
/datum/loadout_item/tri_hatchet_copper
	name = "Copper Hatchet"
	path = /obj/item/rogueweapon/stoneaxe/handaxe/copper
	triumph_cost = 4

/datum/loadout_item/tri_messer_rhomphaia_copper
	name = "Copper Rhomphaia"
	path = /obj/item/rogueweapon/sword/long/rhomphaia/copper
	triumph_cost = 4

/datum/loadout_item/tri_huntingknife_iron
	name = "Iron Hunting Knife"
	path = /obj/item/rogueweapon/huntingknife
	triumph_cost = 6


//─────────────────────────────────────────────────────────────
// 10 TRIUMPH - Lord's Cloak
//─────────────────────────────────────────────────────────────

// CLOTHING - CLOAKS
/datum/loadout_item/tri_lord_cloak
	name = "Lord's Cloak"
	path = /obj/item/clothing/cloak/lordcloak
	triumph_cost = 10

//==========================
//Donator Section
//==========================
//All these items are stored in the donator_fluff.dm in the azure modular folder for simplicity.
//All should be subtypes of existing weapons/clothes/armor/gear, whatever, to avoid balance issues I guess. Idk, I'm not your boss.

/datum/loadout_item/donator_plex
	name = "Donator Kit - Rapier di Aliseo"
	path = /obj/item/enchantingkit/plexiant
	ckeywhitelist = list("plexiant")

/datum/loadout_item/donator_sru
	name = "Donator Kit - Emerald Dress"
	path = /obj/item/enchantingkit/srusu
	ckeywhitelist = list("cheekycrenando")

/datum/loadout_item/donator_strudel
	name = "Donator Kit - Grenzelhoftian Mage Vest"
	path = /obj/item/enchantingkit/strudle
	ckeywhitelist = list("toasterstrudes")

/datum/loadout_item/donator_bat
	name = "Donator Kit - Handcarved Harp"
	path = /obj/item/enchantingkit/bat
	ckeywhitelist = list("kitchifox")

/datum/loadout_item/donator_mansa
	name = "Donator Kit - Wortträger"
	path = /obj/item/enchantingkit/ryebread
	ckeywhitelist = list("pepperoniplayboy")	//Byond maybe doesn't like spaces. If a name has a space, do it as one continious name.

/datum/loadout_item/donator_rebel
	name = "Donator Kit - Gilded Sallet"
	path = /obj/item/enchantingkit/rebel
	ckeywhitelist = list("rebel0")

/datum/loadout_item/donator_bigfoot
	name = "Donator Kit - Gilded Knight Helm"
	path = /obj/item/enchantingkit/bigfoot
	ckeywhitelist = list("bigfoot02")

/datum/loadout_item/donator_bigfoot_axe
	name = "Donator kit - Gilded Greataxe"
	path = /obj/item/enchantingkit/bigfoot_axe
	ckeywhitelist = list("bigfoot02")

/datum/loadout_item/donator_zydras
	name = "Donator Kit - Padded silky dress"
	path = /obj/item/enchantingkit/zydras
	ckeywhitelist = list("1ceres")

/datum/loadout_item/leather_collar
	name = "Leather Collar"
	path = /obj/item/clothing/neck/roguetown/collar/leather

/datum/loadout_item/cowbell_collar
	name = "Cowbell Collar"
	path = /obj/item/clothing/neck/roguetown/collar/cowbell

/datum/loadout_item/catbell_collar
	name = "Catbell Collar"
	path = /obj/item/clothing/neck/roguetown/collar/catbell

/datum/loadout_item/rope_leash
	name = "Rope Leash"
	path = /obj/item/leash

/datum/loadout_item/leather_leash
	name = "Leather Leash"
	path = /obj/item/leash/leather

/datum/loadout_item/chain_leash
	name = "Chain Leash"
	path = /obj/item/leash/chain


/datum/loadout_item/magic_recipes
	name = "Guide to Arcyne"
	path = /obj/item/recipe_book/magic

/datum/loadout_item/alch_recipes
	name = "Guide to Alchemy"
	path = /obj/item/recipe_book/alchemy

/datum/loadout_item/leather_recipes
	name = "Guide to Leatherworking"
	path = /obj/item/recipe_book/leatherworking

/datum/loadout_item/sewing_recipes
	name = "Guide to Tailoring"
	path = /obj/item/recipe_book/sewing

/datum/loadout_item/smith_recipes
	name = "Guide to Smithing"
	path = /obj/item/recipe_book/blacksmithing

/datum/loadout_item/engi_recipes
	name = "Guide to Engineering"
	path = /obj/item/recipe_book/engineering

/datum/loadout_item/build_recipes
	name = "Guide to Building"
	path = /obj/item/recipe_book/builder

/datum/loadout_item/potter_recipes
	name = "Guide to Pottery"
	path = /obj/item/recipe_book/ceramics

/datum/loadout_item/survival_recipes
	name = "Guide to Survival"
	path = /obj/item/recipe_book/survival

/datum/loadout_item/cooking_recipes
	name = "Guide to Cooking"
	path = /obj/item/recipe_book/cooking
