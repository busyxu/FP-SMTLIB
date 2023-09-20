(declare-fun a_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!17))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!17)) ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (FPCHECK_FMUL_ACCURACY #xc000000000000000 (fp.abs ((_ to_fp 11 53) a_ack!17))))

(check-sat)
(exit)
