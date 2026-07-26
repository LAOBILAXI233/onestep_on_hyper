package com.hyper.sidebar.view;

import com.hyper.sidebar.util.anim.AnimTimeLine;

public interface ITopItem {
    AnimTimeLine highlight();
    AnimTimeLine dim();
    AnimTimeLine resume();
}
