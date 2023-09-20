(declare-fun a_ack!3 () (_ BitVec 64))
(declare-fun b_ack!2 () (_ BitVec 64))
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!3))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
