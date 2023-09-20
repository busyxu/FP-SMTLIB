(declare-fun a_ack!661 () (_ BitVec 64))
(declare-fun b_ack!660 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) a_ack!661) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!661) ((_ to_fp 11 53) #xc000000000000000)))
(assert (= #x00000000 (bvand b_ack!660 #x00000007)))

(check-sat)
(exit)
