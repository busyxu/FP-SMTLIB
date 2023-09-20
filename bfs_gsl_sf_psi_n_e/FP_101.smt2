(declare-fun a_ack!2086 () (_ BitVec 32))
(declare-fun b_ack!2085 () (_ BitVec 64))
(assert (not (= #x00000000 a_ack!2086)))
(assert (= #x00000001 a_ack!2086))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2085) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2085) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
