# EmilioBot
The EmilioBot project where i attempt to make a virtual clone of a friend's friend.

The first version so far is just selects a response randomly from the given data, the next version will be an LLM model that trains on given data, i will start working on it after my exams, stay tuned

## Version 1.0

I will not be including chat data in the repository because it is my friends' private messages, however i will include the necessary code so that you too can create a chatbot of your friends, all you have to do is:

1 - Export chat from whatsapp

2 - Isolate your friends messages using this command (on linux, on windows you could use [Oracle Virtual Box](https://www.virtualbox.org/wiki/Downloads) to run a linux instance) 

```bash
grep '\[.*\] <USERNAME HERE>: ' _chat.txt > cleaned_chat.txt
```

3 - Clean up the text using this command (once again, on linux, on windows you could use the virtual box)

```bash
sed -E 's/\[.*\] emilio_chat: //g' cleaned_chat.txt | awk '{$1=$1};1' > cleaned_text.txt
```

4 - (OPTIONAL, RECOMMENDED) remove attachment lines to prevent the bot from saying stuff like ‎<attached: 00000006-STICKER-2022-08-20-10-26-50.webp>

```bash
grep -v '<attached:' cleaned_text.txt > data.txt
```

5 - Download the emilio.bat file and put it in the same directory as the data.txt and double click it

6 - If you want it to say another name instead of "EmilioBot 1.0", change this line in the bat file:

```batch
set "response=EmilioBot 1.0: %%A"
```


## Version 2.0

This new version uses an LLM model trained on the messages. This isn't a finetune of GPT or LLAMA or any other pretrained model, i trained it from scratch, so it is not that great of course, but it does at least write real words most of the time.

![Screenshot 2024-04-15 015545](https://github.com/EgeEken/EmilioBot/assets/96302110/8d7556e4-c14d-427d-98ab-5b7dab1d398b)
