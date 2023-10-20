const jwt = require("jsonwebtoken");
const confing = require("./confing");


let checkToken = (req,res,next)=>{
let token =req.headers["authorization"];
console.log("mytoken",token);
if(!token){
    return res.json({
        status:false,
        msg:"Token not provided"
})}
token = token.slice(7,token.length);
if(token){
    jwt.verify(token,confing.key,(err,decoded)=>{
        if(err){
            return res.json({
                status:false,
                msg:"Invalid Token"
            })
        }else{
            req.decoded = decoded;
            next();
        }
    });
}else{
    return res.json({
        status:false,
        msg:"Token not provided"
})

}
}


module.exports ={
checkToken:checkToken
}