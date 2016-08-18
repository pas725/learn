var req = require('request');

var xml = require('xml2js');
var sys = require('sys');
var exec = require('child_process').exec;


	//fetchScore();
var reqCnt = 0 ;
var reqInterval =  process.argv[2] || 5; // In minutes
reqInterval = reqInterval * 60 * 1000 ;

// http://cricscore-api.appspot.com/csa?
console.log('Interval  : '+ (reqInterval));

console.log('----- Process :', process.argv[2]);

fetchScore();

function fetchScore(){

	
	console.log('Fetching score from server : Count : '+ (reqCnt++));
	req('http://static.cricinfo.com/rss/livescores.xml',function (err,res,body){

      //console.log('Fetched score from server......');

      xml.parseString(body,function (err,res){
        if(err){
          console.log('Error in parsing........',err);
        }else{
          //console.log('---- :'+JSON.stringify(res)+'\n********* :'+res.rss.channel[0].item[0].title);
          var score = res.rss.channel[0].item[7].title ;
          var pubDate = res.rss.channel[0].pubDate ;
          
          var cmd = 'notify-send -i ~/Project/myProjects/Score-update/favicon.ico "Live scores" "'+score+' \n "'; //+pubDate+'"';
          exec(cmd,function (err,stdout,stderr){
            //console.log('------ :'+stdout);
          });
        }
      });
    });
}


setInterval(function(){

    fetchScore();

  },(reqInterval ));