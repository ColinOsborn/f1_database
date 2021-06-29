# setting up current drivers to check with queries
CurrentDriver.create!([{
  name: 'lewis hamilton',
  team: 'mercedes'
},
{
  name: 'valtteri bottas',
  team: 'mercedes'
},
{
  name: 'max verstappen',
  team: 'red bull'
},
{
  name: 'sergio perez',
  team: 'red bull'
},
{
  name: 'daniel ricciardo',
  team: 'mclaren'
},
{
  name: 'lando norris',
  team: 'mclaren'
},
{
  name: 'sebastian vettel',
  team: 'aston martin'
},
{
  name: 'lance stroll',
  team: 'aston martin'
},
{
  name: 'esteban ocon',
  team: 'alpine'
},
{
  name: 'fernando alonso',
  team: 'alpine'
},
{
  name: 'carlos sainz jr',
  team: 'ferrari'
},
{
  name: 'charles leclerc',
  team: 'ferrari'
},
{
  name: 'yuki tsunoda',
  team: 'alpha tauri'
},
{
  name: 'pierre gasly',
  team: 'alpha tauri'
},
{
  name: 'kimi raikkonen',
  team: 'alfa romeo'
},
{
  name: 'antonio giovinazzi',
  team: 'alfa romeo'
},
{
  name: 'mick schumacher',
  team: 'haas'
},
{
  name: 'nikita mazepin',
  team: 'haas'
},
{
  name: 'george russell',
  team: 'williams'
},
{
  name: 'nicholas latifi',
  team: 'williams'
}])

p "Created #{CurrentDriver.count} drivers"