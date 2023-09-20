(declare-fun a_ack!2199 () (_ BitVec 32))
(declare-fun b_ack!2198 () (_ BitVec 64))
(assert (not (= #x00000000 a_ack!2199)))
(assert (not (= #x00000001 a_ack!2199)))
(assert (not (bvslt a_ack!2199 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2198) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
