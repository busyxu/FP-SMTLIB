(declare-fun limit_ack!1391 () (_ BitVec 64))
(declare-fun epsabs_ack!1390 () (_ BitVec 64))
(declare-fun b_ack!1389 () (_ BitVec 64))
(declare-fun a_ack!1392 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1391)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1390)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1392)
                                   ((_ to_fp 11 53) b_ack!1389))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1389)
                  ((_ to_fp 11 53) a_ack!1392)))
  #x3fdbbcc009016adc))

(check-sat)
(exit)
