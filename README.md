# Blog - source 

##### *This is the source branch of the blog, corresponds to the local control of the blog.*
---

## Organization
- `_config.yml`: main configuration, including git deploy settings to two branches
- `source/`: generator of final, public blog. Where blog texts are `written`.
- `img/`: image folder for images in the whole blog website
- `public/`: resulting blog files. No need and no effects in manipulating them manually. 
- `themes/`: theme folder
---

## Commands
**Create post**
Creating under i18n, same post name title strictly. Write in `source` and store images in `img`.
```batch
hexo n --lang en <post-name-exact-same>
hexo n --lang zh <post-name-exact-same>
...
```

**Running on local server**
```batch
hexo clean
hexo g
hexo s
```

**Deploying**
```batch
hexo clean
hexo g
pdeploy.bat
hexo d -m "The deploy message you want to add"
```
