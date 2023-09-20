(declare-fun a_ack!23 () (_ BitVec 32))
(declare-fun b_ack!22 () (_ BitVec 64))
(assert (not (bvslt a_ack!23 #x00000000)))
(assert (= #x00000000 a_ack!23))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!22) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
