import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Model/Contact.dart';
import 'package:portfolio/Model/androidPortfolio.dart';
import 'package:portfolio/Model/designProcess.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Model/education.dart';
import 'package:portfolio/view/screen/Education.dart';
final List<DesignProcess> designProcesses = [
  DesignProcess(
    title: "Android",
    imagePath: FontAwesomeIcons.android,
    subtitle:
    "A full stack allround designer thay may or may not include a guide for specific creative",
  ),
  DesignProcess(
    title: "IOs",
    imagePath: FontAwesomeIcons.apple,
    subtitle:
    "A full stack allround developer thay may or may not include a guide for specific creative",
  ),
  DesignProcess(
    title: "Web",
    imagePath: Icons.web,
    subtitle:
    "A full stack allround writer thay may or may not include a guide for specific creative",
  ),
  DesignProcess(
    title: "Desktop",
    imagePath: FontAwesomeIcons.desktop,
    subtitle:
    "A full stack allround promoter thay may or may not include a guide for specific creative",
  ),
];
final List<androidProject> androidProjectList = [

  androidProject(
    title: "A full stack allround designer thay may or may not include a guide for specific creative",
    ImagePath: "assets/images/banking.png",
  ),
  androidProject(
    title: "A full stack allround designer thay may or may not include a guide for specific creative",
    ImagePath: "assets/images/banking.png",
  ),
  androidProject(
    title: "A full stack allround designer thay may or may not include a guide for specific creative",
    ImagePath: "assets/images/banking.png",
  ),
  androidProject(
    title: "A full stack allround designer thay may or may not include a guide for specific creative",
    ImagePath: "assets/images/banking.png",
  ),
  androidProject(
    title: "A full stack allround designer thay may or may not include a guide for specific creative",
    ImagePath: "assets/images/banking.png",
  ),
  androidProject(
    title: "A full stack allround designer thay may or may not include a guide for specific creative",
    ImagePath: "assets/images/banking.png",
  ),
  androidProject(
    title: "A full stack allround designer thay may or may not include a guide for specific creative",
    ImagePath: "assets/images/banking.png",
  ),
  androidProject(
    title: "A full stack allround designer thay may or may not include a guide for specific creative",
    ImagePath: "assets/images/banking.png",
  ),

];
final List<EducatioModel> educationList = [
  EducatioModel(
    description:
    "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below",
    linkName: "www.flutterpanda.com",
    period: "2019 - PRESENT",
  ),
  EducatioModel(
    description:
    "This is a sample education and details about it is stated below.This is a sample education and details about it is stated below",
    linkName: "www.flutterpanda.com",
    period: "2018 - 2019",
  ),
  EducatioModel(
    description:
    "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below",
    linkName: "www.flutterpanda.com",
    period: "2017 - 2018",
  ),
  EducatioModel(
    description:
    "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below",
    linkName: "www.flutterpanda.com",
    period: "2016 - 2017",
  ),
];
final List<ContactInfo> ContactInformation = [
  ContactInfo(
    icon: Icons.mail,
    Contacttype: "asadhayat2007@gmail.com"
  ),

];