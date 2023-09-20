(declare-fun h_ack!56 () (_ BitVec 64))
(declare-fun x_ack!57 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!57)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!56)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  x_ack!57
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe8000000000000)
          ((_ to_fp 11 53) h_ack!56))))

(check-sat)
(exit)
