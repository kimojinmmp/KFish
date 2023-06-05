export const API_BASE_PATH =
  process.env.NODE_ENV === "production" || process.env.NODE_ENV === "test"
    ? process.env.BASE_URL
    : "/devProxy";

/**
 * 系统配置
 * @type {{systemTile: string}}
 */
export const SYSTEM_CONFIG = {
  appBarBgSrc: {},
  appBarColor: "#ffffff",
  //面包屑导航
  breadcrumb: true,
  menuDark: true,
  menuBgSrc: "",//require("./assets/wave.svg")
  menuLogoSrc: require("./assets/logo.png"),
  menuTitle: "KFish",
  menuText: "white",
  menuColor: "rgb(26,17,17)",
  menuTextColor: "#3c81fc",
  // systemTitle: "广大家具",

  // 标题在主要工具拦
  toolbarTitle: false,
  systemImageSrc: require("./assets/text.png"),
  // systemImageSrc: "",

  /**
   * 允许不需要权限访问的路由
   */
  permitUrls: ["/login"],
};

export const DEFAULT_ACCOUNT = {
  loginId: "admin",
  password: "123456",
};
