package com.hyper.onestep.view;

import com.hyper.onestep.util.anim.AnimTimeLine;

public interface ITopItem {
    AnimTimeLine highlight();
    AnimTimeLine dim();
    AnimTimeLine resume();
}
