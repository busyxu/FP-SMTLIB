(declare-fun a_ack!0 () (_ BitVec 64))
(assert (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!0)) #x00000000))

(check-sat)
(exit)
