(declare-fun a_ack!120 () (_ BitVec 64))
(declare-fun b_ack!119 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (= #x00000000 (bvand b_ack!119 #x00000007)))

(check-sat)
(exit)
