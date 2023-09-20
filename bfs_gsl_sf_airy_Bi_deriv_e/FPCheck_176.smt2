(declare-fun a_ack!469 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!469) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!469) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!469) ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 a_ack!469))

(check-sat)
(exit)
