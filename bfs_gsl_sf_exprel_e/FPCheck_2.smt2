(declare-fun a_ack!3 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3) ((_ to_fp 11 53) #xbf60624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!3) ((_ to_fp 11 53) #x3f60624dd2f1a9fc)))
(assert (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a_ack!3))

(check-sat)
(exit)
