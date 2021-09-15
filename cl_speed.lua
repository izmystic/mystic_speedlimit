local playerLoaded = 0
local speedlimit = 420
local speedlimitValues = {["Joshua Rd"] = 55, ["East Joshua Road"] = 55, ["Marina Dr"] = 45, ["Alhambra Dr"] = 45, ["Niland Ave"] = 45, ["Zancudo Ave"] = 45, ["Armadillo Ave"] = 45, ["Algonquin Blvd"] = 45, ["Mountain View Dr"] = 45, ["Cholla Springs Ave"] = 45, ["Panorama Dr"] = 45, ["Lesbos Ln"] = 45, ["Calafia Rd"] = 45, ["North Calafia Way"] = 45, ["Cassidy Trail"] = 45, ["Seaview Rd"] = 45, ["Grapeseed Main St"] = 45, ["Grapeseed Ave"] = 45, ["Joad Ln"] = 45, ["Union Rd"] = 45, ["O'Neil Way"] = 45, ["Senora Fwy"] = 75, ["Catfish View"] = 45, ["Great Ocean Hwy"] = 45, ["Paleto Blvd"] = 45, ["Duluoz Ave"] = 45, ["Procopio Dr"] = 45, ["Cascabel Ave"] = 45, ["Procopio Promenade"] = 45, ["Pyrite Ave"] = 45, ["Fort Zancudo Approach Rd"] = 45, ["Barbareno Rd"] = 45, ["Ineseno Road"] = 45, ["West Eclipse Blvd"] = 45, ["Playa Vista"] = 45, ["Bay City Ave"] = 45, ["Del Perro Fwy"] = 75, ["Equality Way"] = 45, ["Red Desert Ave"] = 45, ["Magellan Ave"] = 45, ["Sandcastle Way"] = 45, ["Vespucci Blvd"] = 45, ["Prosperity St"] = 45, ["San Andreas Ave"] = 45, ["North Rockford Dr"] = 45, ["South Rockford Dr"] = 45, ["Marathon Ave"] = 45, ["Boulevard Del Perro"] = 45, ["Cougar Ave"] = 45, ["Liberty St"] = 45, ["Bay City Incline"] = 45, ["Conquistador St"] = 45, ["Cortes St"] = 45, ["Vitus St"] = 45, ["Aguja St"] = 45, ["Goma St"] = 45, ["Melanoma St"] = 45, ["Palomino Ave"] = 45, ["Invention Ct"] = 45, ["Imagination Ct"] = 45, ["Rub St"] = 45, ["Tug St"] = 45, ["Ginger St"] = 45, ["Lindsay Circus"] = 45, ["Calais Ave"] = 45, ["Adam's Apple Blvd"] = 45, ["Alta St"] = 45, ["Integrity Way"] = 45, ["Swiss St"] = 45, ["Strawberry Ave"] = 45, ["Capital Blvd"] = 45, ["Crusade Rd"] = 45, ["Innocence Blvd"] = 45, ["Davis Ave"] = 45, ["Little Bighorn Ave"] = 45, ["Roy Lowenstein Blvd"] = 45, ["Jamestown St"] = 45, ["Carson Ave"] = 45, ["Grove St"] = 45, ["Brouge Ave"] = 45, ["Covenant Ave"] = 45, ["Dutch London St"] = 45, ["Signal St"] = 45, ["Elysian Fields Fwy"] = 75, ["Plaice Pl"] = 45, ["Chum St"] = 45, ["Chupacabra St"] = 45, ["Miriam Turner Overpass"] = 45, ["Autopia Pkwy"] = 45, ["Exceptionalists Way"] = 45, ["La Puerta Fwy"] = 75, ["New Empire Way"] = 45, ["Runway1"] = "--", ["Greenwich Pkwy"] = 45, ["Kortz Dr"] = 45, ["Banham Canyon Dr"] = 45, ["Buen Vino Rd"] = 45, ["Route 68"] = 75, ["Zancudo Grande Valley"] = 45, ["Zancudo Barranca"] = 45, ["Galileo Rd"] = 45, ["Mt Vinewood Dr"] = 45, ["Marlowe Dr"] = 45, ["Milton Rd"] = 45, ["Kimble Hill Dr"] = 45, ["Normandy Dr"] = 45, ["Hillcrest Ave"] = 45, ["Hillcrest Ridge Access Rd"] = 45, ["North Sheldon Ave"] = 45, ["Lake Vinewood Dr"] = 45, ["Lake Vinewood Est"] = 45, ["Baytree Canyon Rd"] = 45, ["Peaceful St"] = 45, ["North Conker Ave"] = 45, ["Wild Oats Dr"] = 45, ["Whispymound Dr"] = 45, ["Didion Dr"] = 45, ["Cox Way"] = 45, ["Picture Perfect Drive"] = 45, ["South Mo Milton Dr"] = 45, ["Cockingend Dr"] = 45, ["Mad Wayne Thunder Dr"] = 45, ["Hangman Ave"] = 45, ["Dunstable Ln"] = 45, ["Dunstable Dr"] = 45, ["Greenwich Way"] = 45, ["Greenwich Pl"] = 45, ["Hardy Way"] = 45, ["Richman St"] = 45, ["Ace Jones Dr"] = 45, ["Los Santos Freeway"] = 75, ["Senora Rd"] = 45, ["Nowhere Rd"] = 35, ["Smoke Tree Rd"] = 45, ["Cholla Rd"] = 45, ["Cat-Claw Ave"] = 45, ["Senora Way"] = 45, ["Palomino Fwy"] = 75, ["Shank St"] = 45, ["Macdonald St"] = 45, ["Route 68 Approach"] = 75, ["Vinewood Park Dr"] = 45, ["Vinewood Blvd"] = 45, ["Mirror Park Blvd"] = 45, ["Glory Way"] = 45, ["Bridge St"] = 45, ["West Mirror Drive"] = 45, ["Nikola Ave"] = 45, ["East Mirror Dr"] = 45, ["Nikola Pl"] = 35, ["Mirror Pl"] = 45, ["El Rancho Blvd"] = 45, ["Olympic Fwy"] = 75, ["Fudge Ln"] = 45, ["Amarillo Vista"] = 45, ["Labor Pl"] = 45, ["El Burro Blvd"] = 45, ["Sustancia Rd"] = 55, ["South Shambles St"] = 45, ["Hanger Way"] = 45, ["Orchardville Ave"] = 45, ["Popular St"] = 45, ["Buccaneer Way"] = 55, ["Abattoir Ave"] = 45, ["Voodoo Place"] = 40, ["Mutiny Rd"] = 45, ["South Arsenal St"] = 45, ["Forum Dr"] = 45, ["Morningwood Blvd"] = 45, ["Dorset Dr"] = 45, ["Caesars Place"] = 45, ["Spanish Ave"] = 45, ["Portola Dr"] = 45, ["Edwood Way"] = 45, ["San Vitus Blvd"] = 45, ["Eclipse Blvd"] = 45, ["Gentry Lane"] = 40, ["Las Lagunas Blvd"] = 45, ["Power St"] = 45, ["Mt Haan Rd"] = 45, ["Elgin Ave"] = 45, ["Hawick Ave"] = 45, ["Meteor St"] = 45, ["Alta Pl"] = 45, ["Occupation Ave"] = 45, ["Carcer Way"] = 45, ["Eastbourne Way"] = 45, ["Rockford Dr"] = 45, ["Abe Milton Pkwy"] = 45, ["Laguna Pl"] = 45, ["Sinners Passage"] = 45, ["Atlee St"] = 45, ["Sinner St"] = 45, ["Supply St"] = 45, ["Amarillo Way"] = 45, ["Tower Way"] = 45, ["Decker St"] = 45, ["Tackle St"] = 45, ["Low Power St"] = 45, ["Clinton Ave"] = 45, ["Fenwell Pl"] = 45, ["Utopia Gardens"] = 45, ["Cavalry Blvd"] = 45, ["South Boulevard Del Perro"] = 45, ["Americano Way"] = 45, ["Sam Austin Dr"] = 45, ["East Galileo Ave"] = 45, ["Galileo Park"] = 45, ["West Galileo Ave"] = 45, ["Tongva Dr"] = 45, ["Zancudo Rd"] = 45, ["Movie Star Way"] = 45, ["Heritage Way"] = 45, ["Perth St"] = 45, ["Chianski Passage"] = 45, ["Lolita Ave"] = 45, ["Meringue Ln"] = 45, ["Strangeways Dr"] = 45}


function getSpeed()
    return speedlimit
end
function getStreet()
    return street
end

Citizen.CreateThread(function()
    while not playerLoaded do
        Citizen.Wait(50)
        if PlayerPedId() == -1 then playerLoaded = 1 end
    end
    while playerLoaded do
        Citizen.Wait(500)
        local player = PlayerPedId()
        local playerloc = GetEntityCoords(player)
        local streethash = GetStreetNameAtCoord(playerloc.x, playerloc.y, playerloc.z)
        local street = GetStreetNameFromHashKey(streethash)
        if IsPedInAnyVehicle(player) then
            speedlimit = speedlimitValues[street]
            SpeedGui()
        else
            speedlimit = 0
            closeGui()
            Citizen.Wait(500)
        end
    end
end)

function SpeedGui()
    SendNUIMessage({action = "display", type = speedlimit})
end

function closeGui()
    SendNUIMessage({action = "hide"})
end
