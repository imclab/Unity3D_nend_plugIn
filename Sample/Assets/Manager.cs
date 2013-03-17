using UnityEngine;
using System.Collections;

public class Manager : MonoBehaviour {
	
	public GameObject cube;
	
	// Use this for initialization
	void Start () {
		//広告を初期化する
		//Binding.initNEND();
	}
	
	void Update() {
		cube.transform.Rotate(0,0.5f,0);
	}
	 void OnGUI() {
       if( GUI.Button(new Rect(10, 10, 150, 100), "I am a button"))
		{
		Binding.initNEND();
		//print("test");
		}
    }
}
