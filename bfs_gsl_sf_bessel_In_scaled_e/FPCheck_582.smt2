(declare-fun b_ack!884 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!884))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!884))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!884))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW #x4048000000000000 (fp.abs ((_ to_fp 11 53) b_ack!884))))

(check-sat)
(exit)
