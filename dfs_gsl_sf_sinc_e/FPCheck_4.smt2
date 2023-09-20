(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!9))
            ((_ to_fp 11 53) #x3fe999999999999a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!9))
            ((_ to_fp 11 53) #x4059000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x400921fb54442d18 (fp.abs ((_ to_fp 11 53) a_ack!9))))

(check-sat)
(exit)
