(declare-fun a5_ack!130 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!130) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
