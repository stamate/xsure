fs = require('fs');
var m = JSON.parse(fs.readFileSync('tokenSettings.json').toString());
var current = Math.floor((new Date).getTime()/1000);

m.presaleStartTimestamp = current + 60 * 10;
m.presaleEndTimestamp = m.presaleStartTimestamp + 60 * 10;
m.crowdsaleStartTimestamp = m.presaleEndTimestamp + 60 * 5;
m.crowdsaleEndTimestamp = m.crowdsaleStartTimestamp + 60 * 30;

fs.writeFile('tokenSettings.json', JSON.stringify(m), (error) => { /* handle error */ });
