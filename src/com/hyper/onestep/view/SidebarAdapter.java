package com.hyper.onestep.view;
import android.view.DragEvent;
import android.widget.BaseAdapter;
// 侧边栏列表适配器抽象基类
public abstract class SidebarAdapter extends BaseAdapter {
    // 将指定项移动到列表中的目标位置
    public abstract void moveItemPostion(Object object, int index);
    // 拖拽开始时回调
    public abstract void onDragStart(DragEvent event);
    // 拖拽结束时回调
    public abstract void onDragEnd();
    // 刷新适配器数据源
    public abstract void updateData();
}
