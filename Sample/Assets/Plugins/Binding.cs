using UnityEngine;
using System.Runtime.InteropServices;

// このクラスはUnityとXCODEを繋ぐための、Pluginクラスです。
// 参考URL：http://d.hatena.ne.jp/nakamura001/20110714/1310669988
public class Binding {
	
	//この関数 (showNEND_)をXCODE側に実装すると、Unityから呼び出すことができます
	[DllImport("__Internal")]
    private static extern void initNEND_ ();
	
	//Unity側からはこの関数を呼びます
	public static void  initNEND() {
		if (Application.platform != RuntimePlatform.OSXEditor) {
            initNEND_ ();
        } else {
        }
	}
}