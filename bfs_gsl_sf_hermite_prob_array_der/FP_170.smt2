(declare-fun b_ack!3243 () (_ BitVec 32))
(declare-fun a_ack!3244 () (_ BitVec 32))
(assert (not (bvslt b_ack!3243 #x00000000)))
(assert (not (bvslt a_ack!3244 #x00000000)))
(assert (not (= #x00000000 a_ack!3244)))
(assert (not (bvslt b_ack!3243 a_ack!3244)))
(assert (not (= b_ack!3243 a_ack!3244)))
(assert (not (= b_ack!3243 (bvadd #x00000001 a_ack!3244))))
(assert (bvult a_ack!3244 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!3244)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!3244)))
       #x0000000000001001))
(assert (bvslt #x00000000 a_ack!3244))
(assert (not (bvslt #x00000001 a_ack!3244)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!3244))))
(assert (bvult (bvmul #x0000000000000008 ((_ sign_extend 32) a_ack!3244))
       #x0000000000000319))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000001 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000001 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000002 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000002 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000003 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000003 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000003 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000004 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000004 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000004 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000005 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000005 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000005 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000006 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000006 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000006 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000007 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000007 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000007 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000008 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000008 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000008 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000009 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000009 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000009 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000a a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000a a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x0000000a a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000b a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000b a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x0000000b a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000c a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000c a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x0000000c a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000d a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000d a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x0000000d a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000e a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000e a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x0000000e a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000f a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x0000000f a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x0000000f a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000010 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000010 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000010 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000011 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000011 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000011 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000012 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000012 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000012 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000013 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000013 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000013 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000014 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000014 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000014 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000015 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000015 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000015 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000016 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000016 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000016 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000017 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000017 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000017 a_ack!3244) (bvadd #xffffffff b_ack!3243)))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000018 a_ack!3244)))))
(assert (bvult (bvmul #x0000000000000008
              ((_ sign_extend 32) (bvadd #x00000018 a_ack!3244)))
       #x0000000000000319))
(assert (bvsle (bvadd #x00000018 a_ack!3244) (bvadd #xffffffff b_ack!3243)))

(check-sat)
(exit)
