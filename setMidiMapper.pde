void setMidiMapper(){
    
    if (okMidi){
      
    midimapper.put( ref( device, 32 ), "okMesh" );
    midimapper.put( ref( device, 33 ), "uCN" );
    
    midimapper.put( ref( device, 0 ), "uFOV" );
    midimapper.put( ref( device, 1 ), "uTorY" );
    midimapper.put( ref( device, 2 ), "uTorP1" );
    midimapper.put( ref( device, 3 ), "uTorP2" );
    midimapper.put( ref( device, 4 ), "uTorNoise" );
    
    midimapper.put( ref( device, 16 ), "strokeW" );
    midimapper.put( ref( device, 17 ), "alpha" );
    midimapper.put( ref( device, 18 ), "alphatex" );
    //midimapper.put( ref( device, 18 ), "xthres" );
    midimapper.put( ref( device, 19 ), "ythres" );
    midimapper.put( ref( device, 20 ), "zthres" );

    midimapper.put( ref( device, 7 ), "zoomspeed" );
    midimapper.put( ref( device, 21 ), "rotxspeed" );
    midimapper.put( ref( device, 22 ), "rotyspeed" );
    midimapper.put( ref( device, 23 ), "rotzspeed" );

      
    } else {
      
      midimapper.clear();
      
    }
    
    midimapper.put( ref( device, 46 ), "okMidi" );
    
}
