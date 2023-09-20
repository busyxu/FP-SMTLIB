(declare-fun b_ack!74 () (_ BitVec 64))
(declare-fun a_ack!75 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!74) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!75 #x00000000)))
(assert (not (= #x00000000 a_ack!75)))
(assert (not (= #x00000001 a_ack!75)))

(check-sat)
(exit)
