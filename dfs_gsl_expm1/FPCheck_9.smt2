(declare-fun a_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!17)) ((_ to_fp 11 53) #x3fe62e42fefa39ef)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!17)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!17)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
