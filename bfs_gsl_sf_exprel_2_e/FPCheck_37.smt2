(declare-fun a_ack!58 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!58) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!58) ((_ to_fp 11 53) #xbf60624dd2f1a9fc)))
(assert (FPCHECK_FMUL_ACCURACY a_ack!58 a_ack!58))

(check-sat)
(exit)
