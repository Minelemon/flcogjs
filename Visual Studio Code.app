import discord
import asyncio

client = discord.client()

token = "OTAyNTI3MzQ1NTU3MTM5NDg2.YXfuFw.RRDzstfXz2v20KVgw8LxJsPBADM"

@client.event
async def on_ready():

    print(client.user.name)
    print('성공적으로 봇이 시작되었습니다.')
    game = discord.Game('봇이 활동중에 표시될 이름')
    await client.change_presence(status=discord.Status.onlien, acyivity=game)


client.run(token)