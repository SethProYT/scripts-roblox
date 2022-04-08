const { Client, Intents } = require('discord.js');

const client = new Client({ intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_MESSAGES] });


// check if the bot is online
client.on('ready', () => {
    console.log(`Logged in as ${client.user.tag}!`);
});

// login to the bot
client.login("OTU2NzIzNzE0NDg4MTcyNTY0.Yj0YZA.yfn-TPTxdrCeicZCbb__0BXWIYA")



// check if someone said the word "!nuke"
client.on('message', message => {
    if (message.content === '!nuke') {
        // delete all of the messages in the channel
        message.channel.bulkDelete(100);
    }
});