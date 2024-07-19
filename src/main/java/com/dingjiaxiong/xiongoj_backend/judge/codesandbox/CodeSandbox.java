package com.dingjiaxiong.xiongoj_backend.judge.codesandbox;


import com.dingjiaxiong.xiongoj_backend.judge.codesandbox.model.ExecuteCodeRequest;
import com.dingjiaxiong.xiongoj_backend.judge.codesandbox.model.ExecuteCodeResponse;

/**
 * 代码沙箱接口定义
 */
public interface CodeSandbox {

    /**
     * 执行代码
     *
     * @param executeCodeRequest
     * @return
     */
    ExecuteCodeResponse executeCode(ExecuteCodeRequest executeCodeRequest);
}
