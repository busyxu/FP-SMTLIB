(declare-fun a_ack!111 () (_ BitVec 32))
(declare-fun b_ack!110 () (_ BitVec 64))
(assert (not (bvslt a_ack!111 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!110) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!110) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!111)))

(check-sat)
(exit)
