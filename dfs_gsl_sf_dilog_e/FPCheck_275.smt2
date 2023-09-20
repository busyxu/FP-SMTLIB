(declare-fun a_ack!469 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!469) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!469) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!469) ((_ to_fp 11 53) #x3ff028f5c28f5c29)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!469))))

(check-sat)
(exit)
