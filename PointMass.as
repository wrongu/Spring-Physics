﻿package  {	import flash.geom.Point;	import flash.geom.Vector3D;	import flash.display.MovieClip;	public class PointMass{		public var pos:Point;		public var vel:Vector3D;		public var mass:Number;		private var forceAcc:Vector3D;		public var friction:Number;				public function PointMass(m:Number = 1, sp:Point = null) {			mass = m;			pos = sp;			vel = new Vector3D();			forceAcc = new Vector3D();			friction = .99;		}				public function addForce(fPlus:Vector3D):void {			forceAcc = forceAcc.add(fPlus)		}				public function flush():void {			//having accumulated all forces and updated things, "flush" out new point at once			// newton's laws: ∆v = a,  a = f * 1/m; 			forceAcc.scaleBy(1/mass)			vel = vel.add(forceAcc); 			vel.scaleBy(friction);						pos.x += vel.x;			pos.y += vel.y;			forceAcc = new Vector3D(); //reset all forces to zero		}				public function disp(dispClip:MovieClip):void {			dispClip.graphics.beginFill(0x000000);			dispClip.graphics.drawCircle(pos.x,pos.y,Math.sqrt(mass));			dispClip.graphics.endFill();		}	}	}