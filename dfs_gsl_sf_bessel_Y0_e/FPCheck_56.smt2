(declare-fun a_ack!71 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!71) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!71) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!71))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!71))
        ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fc0000000000000 (fp.abs ((_ to_fp 11 53) a_ack!71))))

(check-sat)
(exit)
