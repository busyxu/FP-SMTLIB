(declare-fun a_ack!87 () (_ BitVec 32))
(declare-fun b_ack!86 () (_ BitVec 64))
(assert (not (bvslt a_ack!87 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!86) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
