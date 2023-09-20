(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!12 () (_ BitVec 64))
(declare-fun x_ack!13 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW
  x_ack!13
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) h_ack!12))
          ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)
