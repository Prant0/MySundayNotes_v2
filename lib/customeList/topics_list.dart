import 'package:flutter/material.dart';


class TopicsModel{
  dynamic id;
  String ?name,image,title,details;

  TopicsModel({
    this.image,
    this.name,this.details,this.id,this.title
});
}


List<TopicsModel> topicsList=[

  TopicsModel(
    id: "62903",
    title: "The Journey",
    details: "",
    name: "",
    image: "https://apis.mysundaynotes.com/apis/categories/The-Journey.png"
  ),TopicsModel(
    id: "63058",
    title: "Holy Spirit",
    details: "",
    name: "",
    image: "https://apis.mysundaynotes.com/apis/categories/Holy-Spirit.png"
  ),TopicsModel(
    id: "62162",
    title: "Forgiveness",
    details: "",
    name: "",
    image: "https://apis.mysundaynotes.com/apis/categories/Forgiveness.png"
  ),TopicsModel(
    id: "60768",
    title: "Love",
    details: "",
    name: "",
    image: "https://apis.mysundaynotes.com/apis/categories/Love.png"
  ),TopicsModel(
    id: "63096",
    title: "Repentance",
    details: "",
    name: "",
    image: "https://apis.mysundaynotes.com/apis/categories/Repentance.png"
  ),TopicsModel(
    id: "63088",
    title: "Faith",
    details: "",
    name: "",
    image: "https://apis.mysundaynotes.com/apis/categories/Faith.png"
  ),TopicsModel(
    id: "62318",
    title: "Obedience",
    details: "",
    name: "",
    image: "https://apis.mysundaynotes.com/apis/categories/Obedience.png"
  ),TopicsModel(
    id: "62345",
    title: "Heaven",
    details: "",
    name: "",
    image: "https://apis.mysundaynotes.com/apis/categories/Heaven.png"
  ),
];