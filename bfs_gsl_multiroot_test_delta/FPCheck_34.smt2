(declare-fun x0_ack!68 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun x1_ack!67 () (_ BitVec 64))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3e50000000000000)
               (fp.abs ((_ to_fp 11 53) x0_ack!68)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!67)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!68)
                                   ((_ to_fp 11 53) #x3e50000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!68)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
  (FPCHECK_FMUL_UNDERFLOW #x4024000000000000 a!1)))

(check-sat)
(exit)
