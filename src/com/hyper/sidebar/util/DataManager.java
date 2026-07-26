package com.hyper.sidebar.util;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class DataManager {
    private final List<RecentUpdateListener> mListeners =
            new CopyOnWriteArrayList<RecentUpdateListener>();
    public void addListener(RecentUpdateListener listener){
        mListeners.add(listener);
    }

    public void removeListener(RecentUpdateListener listener){
        mListeners.remove(listener);
    }

    protected void notifyListener(){
        for(RecentUpdateListener lis : mListeners){
            lis.onUpdate();
        }
    }

    public interface RecentUpdateListener {
        void onUpdate();
    }

}
