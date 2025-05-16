ls | where type == dir | each { |row| { name: $row.name, fun: (ls $row.name) } }
