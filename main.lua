
--Packages: Discord

--código basico: (em main.lua)

local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Logado em '.. client.user.username)
end)

client:run('OTIwMDU4NDY5Mzg4ODA0MTA2.Ybe1OA.XZr1kvei8NC25QAA33NJzEVH1lE')

--Comandos: (coloque no main.lua)

client:on('messageCreate', function(message)
    if message.content == '!ping' then
        message.channel:send('Pong!')
    end
end)

--Comando em embed: (tbm na main.lua)

client:on("messageCreate", function(message)

    local content = message.content
    local author = message.author

    if content == "!embed" then
        message:reply {
            embed = {
                title = "Lindo Título",
                description = "Descrição top!",
                author = {
                    name = author.username,
                    icon_url = author.avatarURL
                },
                fields = {
                    {
                        name = "oia q top",
                        value = "top",
                        inline = true
                    },
                    {
                        name = "yey",
                        value = "TOP",
                        inline = false
                    }
                },
                footer = {
                    text = "Seu texto topzera"
                },
                color = 0x000000
            }
        }
    end

end)

-- Seja feliz :)
