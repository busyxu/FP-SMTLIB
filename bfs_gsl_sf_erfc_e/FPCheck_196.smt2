(declare-fun a_ack!307 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!307))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!307))
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!307))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a_ack!307))
  a_ack!307))

(check-sat)
(exit)
