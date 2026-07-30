package com.hyper.onestep.util;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
// 数据管理器抽象基类，提供更新监听机制
public abstract class DataManager {
    private final List<RecentUpdateListener> mListeners =
            new CopyOnWriteArrayList<RecentUpdateListener>();
    public void addListener(RecentUpdateListener listener){
        mListeners.add(listener);
    }
    public void removeListener(RecentUpdateListener listener){
        mListeners.remove(listener);
    }
    // 通知所有注册监听器数据已更新
    protected void notifyListener(){
        for(RecentUpdateListener lis : mListeners){
            lis.onUpdate();
        }
    }
    public interface RecentUpdateListener {
        void onUpdate();
    }
}
