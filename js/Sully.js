function yolo()
{
    const { exec } = require('child_process');
    var i = 5;
    if (i - 1 == 0)
    {
        return;
    }
    /* comment */
    fs = require("fs");
    string = yolo.toString() + "\nyolo();";
    if (i == base) {
        string = string.replace(i.toString(), (i - 1).toString())
    }
    i--;
    fs.writeFileSync("Sully_" + i + ".js", string);
    exec(`node Sully_${i}.js`)
}
yolo();