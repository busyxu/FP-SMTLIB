(declare-fun a_ack!592 () (_ BitVec 64))
(declare-fun b_ack!591 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) a_ack!592) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!592) ((_ to_fp 11 53) #xc010000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!592) ((_ to_fp 11 53) #xc000000000000000)))
(assert (not (= #x00000000 (bvand b_ack!591 #x00000007))))

(check-sat)
(exit)
