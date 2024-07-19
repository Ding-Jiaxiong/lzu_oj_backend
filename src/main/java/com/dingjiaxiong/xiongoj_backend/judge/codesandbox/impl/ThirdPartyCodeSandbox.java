package com.dingjiaxiong.xiongoj_backend.judge.codesandbox.impl;

import com.dingjiaxiong.xiongoj_backend.judge.codesandbox.CodeSandbox;
import com.dingjiaxiong.xiongoj_backend.judge.codesandbox.model.ExecuteCodeRequest;
import com.dingjiaxiong.xiongoj_backend.judge.codesandbox.model.ExecuteCodeResponse;

/**
 * 第三方代码沙箱（调用网上现成的代码沙箱）
 */
public class ThirdPartyCodeSandbox implements CodeSandbox {
    @Override
    public ExecuteCodeResponse executeCode(ExecuteCodeRequest executeCodeRequest) {
        System.out.println("第三方代码沙箱");
        return null;
    }
}
