import java.util.HashMap;
import java.util.Map;
import controlP5.*;
import javax.sound.midi.Receiver;
import javax.sound.midi.MidiMessage;
import codeanticode.syphon.*;

ControlP5 cp5;
SyphonServer server;

Map<String, String> midimapper = new HashMap<String, String>();
final String device = "SLIDER/KNOB";

PGraphics canvas;
int wl = 10;
int wc = 10;
boolean okMidi;
PShader myFRAG;

float uFOV, uFog, uColorMountain, uColorSea, uColorMate;
float uTorY, uTorP1, uTorP2, uTorNoise, uTorTime, uTorNb;
float uNoiseScale0, uNoiseScale1, uNoiseAmp0, uNoiseAmp1, uNoiseAmp2, uNoiseMinus, uNoiseTime0, uNoiseTime1, uNoiseOffset;
float uIQNoiseScale, uIQNoiseAmp, uIQNoiseTime;
float uRMDmin, uRMDmax, uRMPrecision, uLightAmp, uLightRotY, uLightY;
float uCamX, uCamY, uCamZ, uCamYMouseY, uCamRotXTime, uCamRotYTime, uCamRotZTime;
float uSunSeed, uSunDMin, uSunRM_TdMax;
float uAmpSun, uAmpTerrain;
float uParamTest;
int uNoiseIterN, uNoiseIter;
float uSeaHeight;
float uColBright, uColContrast, uColSat;
float time;
float paramStep;
int paramPower = 5;
int id=0;
boolean isRightClick = false;

void settings() {
  size(1280, 720, P3D);
}

void setup() {
  background(0);
  canvas = createGraphics(1280, 720, P3D);
  //canvas.textureMode(NORMAL);
  canvas.textureWrap(REPEAT);
  server = new SyphonServer(this, "MYFRAGS");
  //canvas.smooth(8);
  setControllers();
  setMidiMapper();
  surface.setLocation(400, 0);
  
  myFRAG = loadShader("myWorld.glsl");
  myFRAG.set("iResolution", float(canvas.width), float(canvas.height), 1.0);
  myFRAG.set("iChannel0", loadImage("data/rgbaNoiseMedium.png"));
  frameRate(30);
}

void draw() {
    background(0);
  //println(getSmoothedValue("uFOV", paramStep));
  time = float(millis()) / 1000.0;
  myFRAG.set("iMouse", canvas.width/2, getSmoothedValue("uCamYMouseY", paramStep));
  myFRAG.set("iTime", time);
  myFRAG.set("uColBright", uColBright);
  myFRAG.set("uColContrast", uColContrast);
  myFRAG.set("uColSat", uColSat);
  myFRAG.set("uFOV", getSmoothedValue("uFOV", paramStep));
  myFRAG.set("uFog", uFog);
  myFRAG.set("uLightAmp", uLightAmp);
  myFRAG.set("uLightRotY", getSmoothedVit2("uLightRotY", paramPower));
  myFRAG.set("uLightY", getSmoothedValue("uLightY", paramStep));
  myFRAG.set("uColorMountain", uColorMountain);
  myFRAG.set("uColorSea", uColorSea);
  myFRAG.set("uSeaHeight", uSeaHeight);
  myFRAG.set("uColorMate", uColorMate);
  myFRAG.set("uCamX", getSmoothedVit2("uCamX", paramPower)); 
  myFRAG.set("uCamY", getSmoothedVit2("uCamY", paramPower));
  myFRAG.set("uCamZ", getSmoothedVit2("uCamZ", paramPower));
  myFRAG.set("uCamRotXTime", getSmoothedVit2("uCamRotXTime", paramPower));
  myFRAG.set("uCamRotYTime", getSmoothedVit2("uCamRotYTime", paramPower));
  myFRAG.set("uCamRotZTime", getSmoothedVit2("uCamRotZTime", paramPower));
  myFRAG.set("uTorY", getSmoothedValue("uTorY", paramStep)); 
  myFRAG.set("uTorP1", getSmoothedValue("uTorP1", paramStep)); 
  myFRAG.set("uTorP2", getSmoothedValue("uTorP2", paramStep)); 
  myFRAG.set("uTorNoise", getSmoothedValue("uTorNoise", paramStep));
  myFRAG.set("uTorTime", getSmoothedVit2("uTorTime", paramPower));
  myFRAG.set("uTorNb", getSmoothedValue("uTorNb", paramStep));
  myFRAG.set("uNoiseScale0", uNoiseScale0);//getSmoothedValue("uNoiseScale0", paramStep/100.));
  myFRAG.set("uNoiseScale1", uNoiseScale1); //getSmoothedValue("uNoiseScale1", paramStep/1000.));
  myFRAG.set("uNoiseAmp0", getSmoothedValue("uNoiseAmp0", paramStep));
  myFRAG.set("uNoiseAmp1", getSmoothedValue("uNoiseAmp1", paramStep));
  myFRAG.set("uNoiseMinus", getSmoothedValue("uNoiseMinus", paramStep));
  myFRAG.set("uNoiseTime0", getSmoothedVit2("uNoiseTime0", paramPower));
  myFRAG.set("uNoise2", uNoiseAmp2*sin(getSmoothedVit2("uNoiseTime1", paramPower)));
  myFRAG.set("uNoiseOffset", getSmoothedValue("uNoiseOffset", paramStep));
  myFRAG.set("uNoiseIterN", uNoiseIterN);
  myFRAG.set("uNoiseIter", uNoiseIter);
  myFRAG.set("uRMDmin", getSmoothedValue("uRMDmin", paramStep));
  myFRAG.set("uRMDmax", getSmoothedValue("uRMDmax", paramStep));
  myFRAG.set("uRMPrecision", uRMPrecision);
  myFRAG.set("uIQNoiseAmp", getSmoothedValue("uIQNoiseAmp", paramStep));
  myFRAG.set("uIQNoiseTime", getSmoothedVit2("uIQNoiseTime", paramPower));
  myFRAG.set("uIQNoiseScale", getSmoothedValue("uIQNoiseScale", paramStep));
  myFRAG.set("uSunSeed", uSunSeed);
  myFRAG.set("uSunDMin", uSunDMin);
  myFRAG.set("uSunRM_TdMax", uSunRM_TdMax);
  myFRAG.set("uAmpTerrain", uAmpTerrain);
  myFRAG.set("uAmpSun", uAmpSun);
  //myFRAG.set("uParamTest", getSmoothedValue("uParamTest", paramStep));
 
  canvas.beginDraw();
  canvas.background(0);
  canvas.shader(myFRAG);
  canvas.rect(0, 0, canvas.width, canvas.height);
  canvas.resetShader();
  canvas.endDraw();
  image(canvas, 0, 0, width/2, height/2);
  server.sendImage(canvas);
  String txt_fps = String.format(getClass().getSimpleName()+ "   [size %d/%d]   [fps %6.2f]", canvas.width, canvas.height, frameRate);
  surface.setTitle(txt_fps);
}

float getSmoothedValue(String pName, float step){
  float w = cp5.getController(pName).getMax()-cp5.getController(pName).getMin();
  float p_ = cp5.getController(pName).getDefaultValue();
  float p = cp5.getController(pName).getValue();
  step *= w/10;
  step = cp5.getController("paramStep").getMin() + step * abs(p_ - p)/w;
  if (p_ < p - step){
    p_ += step;
    cp5.getController(pName).setValueLabel(((cp5.getController(pName).getValue())) + " / " + (round(cp5.getController(pName).getDefaultValue())));
  } else if (p_ > p + step) {
    p_ -= step;
    cp5.getController(pName).setValueLabel(((cp5.getController(pName).getValue())) + " / " + (round(cp5.getController(pName).getDefaultValue())));
  } else {
    cp5.getController(pName).setValueLabel(str((cp5.getController(pName).getValue())));
    p_ = p;
  }
  cp5.getController(pName).setDefaultValue(p_);
  return p_;
}

float getSmoothedVit(String pName, float power){
  return pow(cp5.getController(pName).getValue() / cp5.getController(pName).getMax(), power) * cp5.getController(pName).getMax();
}

float getSmoothedVit2(String pName, float power){
  float p_ = cp5.getController(pName).getDefaultValue();
  p_ += pow(cp5.getController(pName).getValue() / cp5.getController(pName).getMax(), power) * cp5.getController(pName).getMax();
  cp5.getController(pName).setDefaultValue(p_);
  cp5.getController(pName).setValueLabel(str(round(cp5.getController(pName).getValue()*100)/100) + " / " + str(round(cp5.getController(pName).getDefaultValue()*100)/100));
  return p_;
}

void mousePressed(){
  if (mouseButton == RIGHT) isRightClick = true;
}
