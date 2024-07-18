void setControllers() {
  cp5 = new ControlP5(this);
  color c;
  color cp = color(50);
  float[] initValues = new float[200];
  
  int lname = 90;
  float val;
  wl += 11; id++; initValues[id] = 999.;
  cp5.addToggle("okMidi").setValue(true).setPosition(wc, wl + height/2).setSize(70, 10).setColorActive(color(255, 0, 0)).setId(id).setArrayValue(initValues);
  wc += 80;
  wl += 31;
  //id++; initValues[id] = 1.;
  //cp5.addSlider("uParamTest").setRange(-10., 10.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10, wl + height/2).setSize(width/2-lname, 10).setColorLabel(color(255, 0, 0)).setColorForeground(color(255, 0, 0)).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 1.01;
  cp5.addSlider("paramStep").setRange(0.001, 1.).setValue(initValues[id]).setPosition(10, wl + height/2).setSize(width/2-lname, 10).setColorLabel(color(255, 0, 0)).setColorForeground(color(255, 0, 0)).setId(id).setArrayValue(initValues);
  wl += 11;
  wl += 11; id++; initValues[id] = 12;
  cp5.addSlider("uNoiseIterN").setRange(0, 20).setValue(initValues[id]).setPosition(10, wl + height/2).setSize(width/2-lname, 10).setColorLabel(color(255, 0, 0)).setColorForeground(color(255, 0, 0)).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 3;
  cp5.addSlider("uNoiseIter").setRange(0, 10).setValue(initValues[id]).setPosition(10, wl + height/2).setSize(width/2-lname, 10).setColorLabel(color(255, 0, 0)).setColorForeground(color(255, 0, 0)).setId(id).setArrayValue(initValues);
  wl += 11;
  
  c = color(130, 30, 30);
  wl = 11; id++; initValues[id] = 0.;
  cp5.addSlider("uColBright").setRange(-1., 1.).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 1.;
  cp5.addSlider("uColContrast").setRange(-10., 10.).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 1.;
  cp5.addSlider("uColSat").setRange(-10, 10.).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  c = color(30, 130, 30);
  wl += 11; id++; initValues[id] = 1.;
  cp5.addSlider("uAmpTerrain").setRange(0, 1.).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 0.;
  cp5.addSlider("uAmpSun").setRange(0, 1.).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 1.;
  cp5.addSlider("uColorMountain").setRange(0, 1.0).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 0.;
  cp5.addSlider("uColorSea").setRange(0, 1.0).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 0.6;
  cp5.addSlider("uSeaHeight").setRange(-10, 10.0).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 2.0;
  cp5.addSlider("uColorMate").setRange(0, 10.0).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  wl += 11;
  c = color(40, 150, 30);
  id++; initValues[id] = 0.01;
  cp5.addSlider("uRMDmin").setRange(0.01, 100.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 90.;
  cp5.addSlider("uRMDmax").setRange(0, 200.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 0.001;
  cp5.addSlider("uRMPrecision").setRange(0, 0.05).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  c = color(30, 100, 30);
  wl += 11; id++; initValues[id] = 0.0;
  cp5.addSlider("uSunSeed").setRange(-1, 1).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 0.0;
  cp5.addSlider("uSunDMin").setRange(0, 0.1).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 1.0;
  cp5.addSlider("uSunRM_TdMax").setRange(0.5, 1.5).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  wl += 11;
  c = color(130, 80, 80);
  id++; initValues[id] = 70.;
  cp5.addSlider("uFOV").setRange(0, 360).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0.;
  cp5.addSlider("uCamX").setRange(-100, 100).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 2.2;
  cp5.addSlider("uCamY").setRange(-100, 100).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0.;
  cp5.addSlider("uCamZ").setRange(-100, 100).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 1040;
  cp5.addSlider("uCamYMouseY").setRange(0, canvas.height).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  c = color(30, 130, 20);
  wl += 11; id++; initValues[id] = 0.0015;
  cp5.addSlider("uFog").setRange(0, 0.010).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 1.;
  cp5.addSlider("uLightAmp").setRange(0, 1.).setValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0;
  cp5.addSlider("uLightRotY").setRange(-4, 4).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0.5;
  cp5.addSlider("uLightY").setRange(-10, 10.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  wl += 11;
  c = color(130, 130, 20);
  id++; initValues[id] = -10.0;
  cp5.addSlider("uTorY").setRange(-10.0, 10.0).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 3.4;
  cp5.addSlider("uTorP1").setRange(-10.0, 10.0).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0.2;
  cp5.addSlider("uTorP2").setRange(-10.0, 10.0).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0.0;
  cp5.addSlider("uTorNoise").setRange(-10.0, 10.0).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 1.0;
  cp5.addSlider("uTorTime").setRange(0, 3.0).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11; initValues[id] = 30.0;
  cp5.addSlider("uTorNb").setRange(0, 30.0).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  wl += 11;
  c = color(90, 90, 130);
  id++; initValues[id] = 0.25;
  cp5.addSlider("uNoiseScale0").setRange(0., 2.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0.95;
  cp5.addSlider("uNoiseScale1").setRange(0., 2.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 1.;
  cp5.addSlider("uNoiseAmp0").setRange(0., 20.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 2.94;
  cp5.addSlider("uNoiseAmp1").setRange(0., 20.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0.54;
  cp5.addSlider("uNoiseMinus").setRange(-10, 10).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  val = 0.; id++;
  cp5.addSlider("uNoiseTime0").setRange(0, 10.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  wl += 11;
  id++; initValues[id] = 0.;
  cp5.addSlider("uNoiseAmp2").setRange(0., 10.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0.;
  cp5.addSlider("uNoiseTime1").setRange(0, 10.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 0.0;
  cp5.addSlider("uNoiseOffset").setRange(-100., 100.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  wl += 11;
  c = color(100, 130, 100);
  id++; initValues[id] = 50.;
  cp5.addSlider("uIQNoiseScale").setRange(-100., 100.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 0.;
  cp5.addSlider("uIQNoiseAmp").setRange(-10., 10.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11;
  id++; initValues[id] = 37.;
  cp5.addSlider("uIQNoiseTime").setRange(-100., 100.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  wl += 11;
  c = cp*2;
  id++; initValues[id] = 0.;
  cp5.addSlider("uCamRotXTime").setRange(-1., 1.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 0.;
  cp5.addSlider("uCamRotYTime").setRange(-1., 1.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c+cp).setColorForeground(c+cp).setId(id).setArrayValue(initValues);
  wl += 11; id++; initValues[id] = 0.;
  cp5.addSlider("uCamRotZTime").setRange(-1., 1.).setValue(initValues[id]).setDefaultValue(initValues[id]).setPosition(10+width/2, wl).setSize(width/2-lname, 10).setColorLabel(c).setColorForeground(c).setId(id).setArrayValue(initValues);
  wl += 11;
  
  cp5.getController("okMidi").addCallback(new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      if (theEvent.getAction()==ControlP5.ACTION_BROADCAST) {
        setMidiMapper();
        okMidi = !okMidi;
      }
    }
  }
  );
  
  boolean DEBUG = false;

  if (DEBUG) {
    new MidiSimple( device );
  } else {
    new MidiSimple( device, new Receiver() {

      @Override public void send( MidiMessage msg, long timeStamp ) {

        byte[] b = msg.getMessage();

        if ( b[ 0 ] != -48 ) {

          Object index = ( midimapper.get( ref( device, b[ 1 ] ) ) );

          if ( index != null ) {

            Controller c = cp5.getController(index.toString());
            if (c instanceof Slider ) {
              float min = c.getMin();
              float max = c.getMax();
              c.setValue(map(b[ 2 ], 0, 127, min, max) );
            } else if ( c instanceof Button ) {
              if ( b[ 2 ] > 0 ) {
                c.setValue( c.getValue( ) );
                c.setColorBackground( 0xff08a2cf );
              } else {
                c.setColorBackground( 0xff003652 );
              }
            } else if ( c instanceof Bang ) {
              if ( b[ 2 ] > 0 ) {
                c.setValue( c.getValue( ) );
                c.setColorForeground( 0xff08a2cf );
              } else {
                c.setColorForeground( 0xff00698c );
              }
            } else if ( c instanceof Toggle ) {
              if ( b[ 2 ] > 0 ) {
                ( ( Toggle ) c ).toggle( );
              }
            }
          }
        }
      }

      @Override public void close( ) {
      }
    }
    );
  }
  
}
String ref(String theDevice, int theIndex) {
  return theDevice+"-"+theIndex;
}

void controlEvent(CallbackEvent theEvent) {
    if ((isRightClick)&&(theEvent.getAction() == ControlP5.ACTION_RELEASED)){
      theEvent.getController().setValue(theEvent.getController().getArrayValue(theEvent.getController().getId()));
      isRightClick = false;
    }
}
