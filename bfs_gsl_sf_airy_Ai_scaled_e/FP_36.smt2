(declare-fun a_ack!681 () (_ BitVec 64))
(declare-fun b_ack!680 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!681) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!681) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 (bvand b_ack!680 #x00000007))))

(check-sat)
(exit)
