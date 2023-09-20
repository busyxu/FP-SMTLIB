(declare-fun a_ack!182 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!182))
            ((_ to_fp 11 53) #x3e5399999999999a))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!182))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 (fp.abs ((_ to_fp 11 53) a_ack!182))))

(check-sat)
(exit)
