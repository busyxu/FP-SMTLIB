(declare-fun b_ack!32 () (_ BitVec 64))
(declare-fun a_ack!33 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!32) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!32) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!33 #x00000000)))
(assert (not (= #x00000000 a_ack!33)))
(assert (= #x00000001 a_ack!33))
(assert (fp.leq ((_ to_fp 11 53) b_ack!32) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
