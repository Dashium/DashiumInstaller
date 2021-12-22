const dotenv = require('dotenv');
const child_process = require('child_process');
const fs = require('fs');
const path = require('path');

dotenv.config();

var config = path.join('/', 'DashiumOS', 'modules.json');

if(!fs.existsSync(config)){
    fs.writeFileSync(config, '{}');
}

const data = require(config);

var keys = Object.keys(data);
for(i=0;keys.length;i++){
    console.log(data[keys]);

    if(data[keys]['module'] != null){
        child_process.exec(`git clone ${data[keys]['module']}`, (err, stdout) => {
            console.log(err, stdout);
        });
    }
}