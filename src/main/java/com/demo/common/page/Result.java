package com.demo.common.page;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2016/12/26.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Result {

    public static Result SUCCESS = new Result(200, true, null, null);
    public static Result FAIL = new Result(400, false, null, null);

    private int code;
    private boolean success;
    private String msg;
    private Object data;

}
