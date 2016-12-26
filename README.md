# lansidemo

# 使用fastjson做解析
1. CustomJson.class
2. DemoConfig.class
```
    public void configConstant(Constants me) {
        // 使用fastjson
        me.setJsonFactory(new IJsonFactory() {
            public CustomJson getJson() {
                return new CustomJson();
            }
        });
    }
```
