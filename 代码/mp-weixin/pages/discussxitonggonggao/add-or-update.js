(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/discussxitonggonggao/add-or-update"],{"34f0":function(e,t,r){},"37fd":function(e,t,r){"use strict";var n;r.d(t,"b",(function(){return a})),r.d(t,"c",(function(){return u})),r.d(t,"a",(function(){return n}));var a=function(){var e=this,t=e.$createElement;e._self._c},u=[]},"3c74":function(e,t,r){"use strict";r.r(t);var n=r("37fd"),a=r("dbc0");for(var u in a)"default"!==u&&function(e){r.d(t,e,(function(){return a[e]}))}(u);r("5a68");var o,i=r("f0c5"),c=Object(i["a"])(a["default"],n["b"],n["c"],!1,null,"204c7904",null,!1,n["a"],o);t["default"]=c.exports},4898:function(e,t,r){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var n=a(r("a34a"));function a(e){return e&&e.__esModule?e:{default:e}}function u(e,t,r,n,a,u,o){try{var i=e[u](o),c=i.value}catch(s){return void r(s)}i.done?t(c):Promise.resolve(c).then(n,a)}function o(e){return function(){var t=this,r=arguments;return new Promise((function(n,a){var o=e.apply(t,r);function i(e){u(o,n,a,i,c,"next",e)}function c(e){u(o,n,a,i,c,"throw",e)}i(void 0)}))}}var i=function(){Promise.all([r.e("common/vendor"),r.e("components/w-picker/w-picker")]).then(function(){return resolve(r("7205"))}.bind(null,r)).catch(r.oe)},c={data:function(){return{cross:"",ruleForm:{refid:"",userid:"",nickname:"",content:"",reply:""},user:{},ro:{refid:!1,userid:!1,nickname:!1,content:!1,reply:!1}}},components:{wPicker:i},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(t){var r=this;return o(n.default.mark((function a(){var u,o,i,c;return n.default.wrap((function(a){while(1)switch(a.prev=a.next){case 0:return u=e.getStorageSync("nowTable"),a.next=3,r.$api.session(u);case 3:if(o=a.sent,r.user=o.data,r.ruleForm.userid=e.getStorageSync("userid"),t.refid&&(r.ruleForm.refid=t.refid,r.ruleForm.nickname=e.getStorageSync("nickname")),!t.id){a.next=13;break}return r.ruleForm.id=t.id,a.next=11,r.$api.info("discussxitonggonggao",r.ruleForm.id);case 11:o=a.sent,r.ruleForm=o.data;case 13:if(r.cross=t.cross,!t.cross){a.next=41;break}i=e.getStorageSync("crossObj"),a.t0=n.default.keys(i);case 17:if((a.t1=a.t0()).done){a.next=41;break}if(c=a.t1.value,"refid"!=c){a.next=23;break}return r.ruleForm.refid=i[c],r.ro.refid=!0,a.abrupt("continue",17);case 23:if("userid"!=c){a.next=27;break}return r.ruleForm.userid=i[c],r.ro.userid=!0,a.abrupt("continue",17);case 27:if("nickname"!=c){a.next=31;break}return r.ruleForm.nickname=i[c],r.ro.nickname=!0,a.abrupt("continue",17);case 31:if("content"!=c){a.next=35;break}return r.ruleForm.content=i[c],r.ro.content=!0,a.abrupt("continue",17);case 35:if("reply"!=c){a.next=39;break}return r.ruleForm.reply=i[c],r.ro.reply=!0,a.abrupt("continue",17);case 39:a.next=17;break;case 41:r.styleChange();case 42:case"end":return a.stop()}}),a)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var t=this;return o(n.default.mark((function r(){var a,u,o,i,c,s,d,l,f,g;return n.default.wrap((function(r){while(1)switch(r.prev=r.next){case 0:if(t.ruleForm.refid){r.next=3;break}return t.$utils.msg("关联表id不能为空"),r.abrupt("return");case 3:if(t.ruleForm.userid){r.next=6;break}return t.$utils.msg("用户id不能为空"),r.abrupt("return");case 6:if(t.ruleForm.content){r.next=9;break}return t.$utils.msg("评论内容不能为空"),r.abrupt("return");case 9:if(!t.cross){r.next=25;break}if(i=e.getStorageSync("statusColumnName"),c=e.getStorageSync("statusColumnValue"),""==i){r.next=25;break}if(s=e.getStorageSync("crossObj"),i.startsWith("[")){r.next=21;break}for(d in s)d==i&&(s[d]=c);return l=e.getStorageSync("crossTable"),r.next=19,t.$api.update("".concat(l),s);case 19:r.next=25;break;case 21:a=Number(e.getStorageSync("userid")),u=s["id"],o=e.getStorageSync("statusColumnName"),o=o.replace(/\[/,"").replace(/\]/,"");case 25:if(!u||!a){r.next=48;break}return t.ruleForm.crossuserid=a,t.ruleForm.crossrefid=u,f={page:1,limit:10,crossuserid:a,crossrefid:u},r.next=31,t.$api.list("discussxitonggonggao",f);case 31:if(g=r.sent,!(g.data.total>=o)){r.next=37;break}return t.$utils.msg(e.getStorageSync("tips")),r.abrupt("return",!1);case 37:if(!t.ruleForm.id){r.next=42;break}return r.next=40,t.$api.update("discussxitonggonggao",t.ruleForm);case 40:r.next=44;break;case 42:return r.next=44,t.$api.add("discussxitonggonggao",t.ruleForm);case 44:e.setStorageSync("discussxitonggonggaoCleanType",!0),t.$utils.msgBack("提交成功");case 46:r.next=57;break;case 48:if(!t.ruleForm.id){r.next=53;break}return r.next=51,t.$api.update("discussxitonggonggao",t.ruleForm);case 51:r.next=55;break;case 53:return r.next=55,t.$api.add("discussxitonggonggao",t.ruleForm);case 55:e.setStorageSync("discussxitonggonggaoCleanType",!0),t.$utils.msgBack("提交成功");case 57:case"end":return r.stop()}}),r)})))()},optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var t=new Date,r=t.getFullYear(),n=t.getMonth()+1,a=t.getDate();return"start"===e?r-=60:"end"===e&&(r+=2),n=n>9?n:"0"+n,a=a>9?a:"0"+a,"".concat(r,"-").concat(n,"-").concat(a)},toggleTab:function(e){this.$refs[e].show()}}};t.default=c}).call(this,r("543d")["default"])},"5a68":function(e,t,r){"use strict";var n=r("34f0"),a=r.n(n);a.a},"7c51":function(e,t,r){"use strict";(function(e){r("c3c6");n(r("66fd"));var t=n(r("3c74"));function n(e){return e&&e.__esModule?e:{default:e}}e(t.default)}).call(this,r("543d")["createPage"])},dbc0:function(e,t,r){"use strict";r.r(t);var n=r("4898"),a=r.n(n);for(var u in n)"default"!==u&&function(e){r.d(t,e,(function(){return n[e]}))}(u);t["default"]=a.a}},[["7c51","common/runtime","common/vendor"]]]);