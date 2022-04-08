const { Client, Intents } = require('discord.js');

const client = new Client({ intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_MESSAGES] });


// check if the bot is online
client.on('ready', () => {
    console.log('Bot is online!');
});

client.login('OTU3MjM1OTk3MTA2NjM0Nzgy.Yj71fg.KgyJaWukeuvl4I04AcLSbfb8QEY');

// send doom eternal pictures if someone says "!doom"
client.on('message', message => {
    if (message.content === '!doom') {
        // create an array of doom images
        const doomImages = [
            'https://images.hdqwalls.com/wallpapers/doom-eternal-4k-2020-75.jpg',
            'https://cdn.mos.cms.futurecdn.net/iPKatp6VvEFwBwMeYXSwhR.jpg',
            'https://images3.alphacoders.com/102/thumb-1920-1025036.jpg',
            'https://cdn.akamai.steamstatic.com/steam/apps/782330/capsule_616x353.jpg?t=1639072952',
            'https://s3.amazonaws.com/prod-media.gameinformer.com/2020/09/24/b885d900/doom-eternal-dreag-scaled.jpg'
        ];
        
        // send a message
        message.channel.send(doomImages[Math.floor(Math.random() * doomImages.length)]);
    }
});

// send crucible pictures if someone says "!crucible"
client.on('message', message => {
    if (message.content === '!crucible') {
        // create an array of crucible images
        const crucibleImages = [
            'https://media.sketchfab.com/models/5a43232b02e64e50a2c6e157878985f3/thumbnails/5c1c1b24659e44108d6760e373654870/d04a65ceaab7412c965590a327dd0e8d.jpeg',
            'https://cdna.artstation.com/p/marketplace/presentation_assets/001/000/378/large/file.jpg?1623850100',
            'https://qph.fs.quoracdn.net/main-qimg-3ad27db92842ecf71818585f4372301a-lq',
            'https://c.tenor.com/VblL9p_uAiwAAAAC/doom-crucible.gif',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpa20qtsiZoa_PnOVZ2k4msVp6bTCOuyHhKA&usqp=CAU',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiylp3KeZKOQwhqGhyo1kwga0qV9Lks-IGYA&usqp=CAU'
        ];
        
        // send a message
        message.channel.send(crucibleImages[Math.floor(Math.random() * crucibleImages.length)]);
    }
});

