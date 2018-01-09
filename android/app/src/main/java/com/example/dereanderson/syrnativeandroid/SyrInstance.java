package com.example.dereanderson.syrnativeandroid;

import java.util.List;

/**
 * Syr Project
 * https://syr.js.org
 * Created by Derek Anderson on 1/8/18.
 */

public class SyrInstance {
    private SyrBridge mBridge;
    private SyrRaster mRaster;
    private List<SyrBaseModule> mModules;

    public SyrInstance(SyrInstanceManager manager) {
        // start syr root activity
    }

    public SyrInstance setBridge(SyrBridge bridge) {
        mBridge = bridge;
        return this;
    }

    public SyrInstance setNativeModules(List<SyrBaseModule> modules) {
        mModules = modules;
        return this;
    }

    public SyrInstance setRaster(SyrRaster raster) {
        // set the raster for the bridge instance
        mRaster = raster;

        // pass down native modules
        mRaster.setModules(mModules);
        mBridge.setRaster(mRaster);
        return this;
    }

    public void loadBundle() {
        mBridge.loadBundle();
    }

}