(declare-fun a_ack!818 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!818))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!818))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!818))
  (fp.abs ((_ to_fp 11 53) a_ack!818))))

(check-sat)
(exit)
