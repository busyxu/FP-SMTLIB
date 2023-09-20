(declare-fun a_ack!889 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!889))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!889))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!889))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4048000000000000)
          (fp.abs ((_ to_fp 11 53) a_ack!889)))
  #x4026000000000000))

(check-sat)
(exit)
