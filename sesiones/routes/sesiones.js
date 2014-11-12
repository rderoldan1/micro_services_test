var Sesion = require('../models/sesion');
var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/(.:format)?', function(req, res) {
  console.log(req.params)
  Sesion.find(function(err, data){
    if(err){
      return res.send(err);
    }
    res.json(data);
  });
});

router.get('/:id', function(req, res){
  Sesion.findOne({ _id: req.params.id }, function(err, data){
    if(err){
      return res.send(err);
    }
    res.json(data);
  });
});

router.post('/', function(req, res){
  var sesion = new Sesion(req.body);
  sesion.save(function(err){
    if(err){
      return res.send(err);
    }
    res.json({message: 'sesion created'})
  });
})

module.exports = router;
