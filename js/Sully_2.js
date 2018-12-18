function yolo()
{
    const { exec } = require('child_process');
    var i = 2;
    var path = require('path');
    var programName = path.basename(__filename);
    if (i == 0)
    {
        return;
    }
    /* comment */
    fs = require("fs");
    string = yolo.toString() + "\nyolo();";
    if (programName !== 'Sully.js') {
        string = string.replace(i.toString(), (i - 1).toString())
        i--;
    }
    else {
        string = string.replace(i.toString(), (i).toString())
    }
    fs.writeFileSync("Sully_" + i + ".js", string);
    exec(`node Sully_${i}.js`)
}
yolo();