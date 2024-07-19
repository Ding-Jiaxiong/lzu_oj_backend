package com.dingjiaxiong.xiongoj_backend.judge;

import com.dingjiaxiong.xiongoj_backend.model.entity.QuestionSubmit;

/**
 * 判题服务
 */
public interface JudgeService {

    /**
     * 判题
     *
     * @param questionSubmitId
     * @return
     */
    QuestionSubmit doJudge(long questionSubmitId);
}
