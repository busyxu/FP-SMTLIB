(declare-fun b_ack!26 () (_ BitVec 64))
(declare-fun a_ack!27 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt a_ack!27 #x00000000))

(check-sat)
(exit)
