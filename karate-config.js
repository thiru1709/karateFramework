function fn(){
var config =
{
base_url: "https://reqres.in",
misUsers: "/api/users?page=2"
}
karate.log("from karate-config.js");
karate.configure("ssl",false);
return config;
}
