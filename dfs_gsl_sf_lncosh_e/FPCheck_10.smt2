(declare-fun a_ack!16 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!16)) ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (FPCHECK_FMUL_UNDERFLOW #xc000000000000000 (fp.abs ((_ to_fp 11 53) a_ack!16))))

(check-sat)
(exit)
