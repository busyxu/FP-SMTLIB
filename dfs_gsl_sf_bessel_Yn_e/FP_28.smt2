(declare-fun a_ack!566 () (_ BitVec 32))
(declare-fun b_ack!565 () (_ BitVec 64))
(assert (not (bvslt a_ack!566 #x00000000)))
(assert (not (= #x00000000 a_ack!566)))
(assert (not (= #x00000001 a_ack!566)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!565) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!565) ((_ to_fp 11 53) #x4014000000000000)))
(assert (not (bvule (bvadd #xffffffff a_ack!566) #x000000aa)))

(check-sat)
(exit)
