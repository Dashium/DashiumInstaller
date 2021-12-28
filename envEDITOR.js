const fs = require('fs');
const path = require('path');

fs.readFile(path.join('/', 'etc', '/', 'environment'), (err, data) => {
    if(err)
        console.log(err);
    
    data = `
    ${data}
    DashiumOS="/DashiumOS"
    DashiumApps="/DashiumOS/apps"
    `;
    fs.writeFile(path.join('/', 'etc', '/', 'environment'), data);
})