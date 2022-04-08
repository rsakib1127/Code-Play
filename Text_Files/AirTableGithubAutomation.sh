
let PersonalAccecssToken = "bddab50e1f0316ba627ba64e40c0385a4264e77b";
let organization = "Traideas-Technology";
let RepositoryPrefix = "solo-project";
let TeamPrefix = "solo-project";
let TableName = "Table 6" 
let GridName = "Grid 2"





let GitUser = "";
let index = 0;
//let table1 = base.getTable(TableName);
let i = 0;

let table = base.getTable(TableName);
let view = table.getView(GridName);
// Prompt the user to pick a record 
// If this script is run from a button field, this will use the button's record instead.
//let record = await input.recordAsync('Select a record to use', table);


    

//} else {
//    output.text('No record was selected');
    let result = await view.selectRecordsAsync();
    let runningTotal = 0;
    index = result.records.length-1;
    i = index+1;
    let record = result.records[index]
    GitUser = record.getCellValue('Name');
//}
let token = true;
for (let record2 of result.records) {
    // change the field names here to adapt this script to your base
      
      if(record2.name==GitUser && record2.id!=record.id){
        token = false;
        break;
      }
      }


const response0 = await fetch(
  "https://api.github.com/users/"+GitUser+"", 
  {
    
    
  }
)
let obj = await response0;
console.log(await response0.json());
console.log(obj.status);



if(obj.status != 200){
  await table.updateRecordAsync(record, {
    'GitHub User Validation': "Invalid GitHub Username",
  });
  token=false;
}
else if(obj.status == 200){
  await table.updateRecordAsync(record, {
    'GitHub User Validation': "Valid GitHub Username",
  });
  
}


if(token==true){

  await table.updateRecordAsync(record, {
    'Done': true,
  });
  console.log(result.records[index].getCellValue('Done'));


  console.log(GitUser);



  console.log("test " + i + "");
  let Name = RepositoryPrefix + "-" + i
  let Team = TeamPrefix + "-" + i
  let data = "{\"name\":\"" + Name + "\", \"auto_init\": true, \"public\": true,\"gitignore_template\": \"nanoc\" }"
  console.log(data);
  const response = await fetch(
    "https://api.github.com/orgs/" + organization + "/repos",
    {
      headers: {
        authorization: "token " + PersonalAccecssToken + ""
      },
      body: "{\"name\":\"" + Name + "\", \"auto_init\": true, \"public\": true,\"gitignore_template\": \"nanoc\" }",
      method: 'post'

    }
  )
  console.log(await response.json());


  const response2 = await fetch(
    "https://api.github.com/orgs/" + organization + "/teams",
    {
      headers: {
        authorization: "token " + PersonalAccecssToken + ""
      },
      body: "{\"name\": \"" + Team + "\" }",
      method: 'post'

    }
  )
  //console.log(await response2.json());

  const response3 = await fetch(
    "https://api.github.com/orgs/" + organization + "/teams/" + Team + "/memberships/" + GitUser + "",
    {
      headers: {
        authorization: "token " + PersonalAccecssToken + ""
      },
      body: '{"role":"role"}',
      method: 'put'
    }
  )
  //console.log(await response3.json());

  const response4 = await fetch(
    "https://api.github.com/orgs/" + organization + "/teams/" + Team + "/repos/" + organization + "/" + Name + "",
    {
      headers: {
        authorization: "token " + PersonalAccecssToken + ""
      },
      body: '{"permission":"admin"}',
      method: 'put'
    }
  )





}
