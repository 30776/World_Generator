# Assumptions

We have a heightmap or something similar for the land we are working on.

# Results

We categorise the areas of the land in some way. 

We need to at least have water and land identified, but the land could then be further subdivides into something like the catan tile categories (lumber(probably hills? need water), wheat(large flat areas, good for plowing. often floodplains), wool(graze-able area. societies generally make these from woodlands.), brick(I dunno, hills at the edges of floodplains?) and rock (mountains)).

What categories we divide them it into needs to be defined, along with rules to identify them correctly. 

# Ideas

if we could come up with three values that describe everything, then they could be mapped to RGB values. If we need four, we can go to rgba, but I'm not sure that is a good idea. 

* So, blue could be humidity (because water would be blue), red heat and green vegetation? Actually, natural
    vegetation can be found by doing some sort of maths to these two values. How about green being human
    activity? Say, 0% means no human activity, 25% means it is a cultivated area (think farm fields), 50% means
    it is a road (or a shipping route), 75% a quarry or mine, and 100% means a house. well, actually that
    would depend on the scale of the map. It might represent part of a larger town or village.