(declare-fun a_ack!17 () (_ BitVec 32))
(declare-fun b_ack!16 () (_ BitVec 64))
(assert (not (bvslt a_ack!17 #x00000000)))
(assert (= #x00000000 a_ack!17))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!16) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
