(declare-fun a_ack!211 () (_ BitVec 32))
(declare-fun b_ack!210 () (_ BitVec 64))
(assert (not (bvslt a_ack!211 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt a_ack!211 #x00000024))

(check-sat)
(exit)
