(declare-fun b_ack!815 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!815))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!815))
        ((_ to_fp 11 53) #x4008000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 (fp.abs ((_ to_fp 11 53) b_ack!815))))

(check-sat)
(exit)
