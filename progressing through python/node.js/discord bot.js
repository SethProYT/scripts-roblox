// create a discord bot

const { Client, Intents } = require('discord.js')

const client = new Client({ intents: [Intents.FLAGS.GUILDS, Intents.FLAGS.GUILD_MESSAGES] });

// check if the bot is online
client.on('ready', () => {
    console.log(`Logged in as ${client.user.tag}!`);
});

client.login("OTU2NzIzNzE0NDg4MTcyNTY0.Yj0YZA.yfn-TPTxdrCeicZCbb__0BXWIYA")

// check if someone mentioned the bot
client.on('message', message => {
    if (message.content.includes('<@!956723714488172564>')) {
        // create an array of nice messages
        const niceMessages = [
            'You are a nice person!',
            'I hope you had a great day!',
            'You are a great person!',
        ]

        // send a message to the user
        message.channel.send(niceMessages[Math.floor(Math.random() * niceMessages.length)]);
    }
});

// say the server name
client.on('message', message => {
    if (message.content === '!server') {
        message.channel.send(message.guild.name);
    }
});


// check if the user wants to see bot commands
client.on('message', message => {
    if (message.content === '!commands') {
        // say all of the bot commands
        message.channel.send('!server - say the server name, !ticket - create a ticket, !commands - see all of the bot commands, !close - closes a ticket, !joke - tell a joke!, !userid - send a generated number as a userid, !purge - purges the chat (owner only)'); 
    }
});

// create a ticket when a user says !ticket
client.on('message', message => {
    if (message.content === '!ticket') {
        // make the ticket private for the user
                message.guild.channels.create('Ticket', {
                    type: 'text',
                    permissionOverwrites: [
                        {
                            id: message.author.id,
                            allow: ['VIEW_CHANNEL', 'SEND_MESSAGES']
                                                
                        },
                        {
                            id: message.guild.id,
                            deny: ['VIEW_CHANNEL', 'SEND_MESSAGES']

                        }
                
                    ]
                });
        message.channel.send('Created a ticket');
    }
});

// close the ticket when the owner says !close
client.on('message', message => {
    if (message.content === '!close') {
        // check if the channel name is "ticket"
        if (message.channel.name === 'ticket') {
            // delete the ticket
            message.channel.delete();
        }
    }
});

 // github copilot tell a joke
client.on('message', message => {
    if (message.content === '!joke') {
        // create an array of jokes
        const jokes = [
            'What do you call a fake noodle? An Impasta!',
            'Why did the chicken cross the road? To get to the other side!',
            'What do you call a cow with no legs? Ground beef!',
            'Why did the chicken cross the road? To get to the other side!',
        ]

        // send a message to the user
        message.channel.send(jokes[Math.floor(Math.random() * jokes.length)]);
    }
});

// generate random roblox userid from 1 to 999999999
client.on('message', message => {
    if (message.content === '!userid') {
        // generate a random number
        const randomNumber = Math.floor(Math.random() * 999999999);
        // send a message to the user
        message.channel.send('https://roblox.com/users/' + randomNumber + '/profile Remember that this userid generator may be fake, because it generates numbers from 1 to 999999999');
    }
});

// make a !say command
client.on('message', message => {
    if (message.content.startsWith('!say')) {
        // get the text after the !say command
        const text = message.content.slice(5);
        // send the text to the user
        // check if the user is the owner
        if (message.author.id === '645525009636392980') {
            message.channel.send(text);
        }
        // delete the message
        message.delete();

    }   
});

// check if someone wants to purge messages
client.on('message', message => {
    if (message.content.startsWith('!purge')) {
        limit = false;
        // get the number of messages to delete
        const amount = parseInt(message.content.split(' ')[1]);
        // delete the messages
        // check if the user is the owner
        if (message.author.id === '645525009636392980') {
            if (amount > 100) {
                message.channel.send('You can only delete up to 100 messages at a time!');
                limit = true;
            }
        }
        // check if the amount is the max of 199
     
        if (limit === false) {
            message.channel.bulkDelete(amount, true);
        }
    }
});



