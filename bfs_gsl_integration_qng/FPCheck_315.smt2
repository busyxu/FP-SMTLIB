(declare-fun a_ack!1852 () (_ BitVec 64))
(declare-fun b_ack!1850 () (_ BitVec 64))
(declare-fun epsabs_ack!1851 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1850)
                                   ((_ to_fp 11 53) a_ack!1852))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1851)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1850)
                  ((_ to_fp 11 53) a_ack!1852)))
  #x3fedc3d9a4b011c6))

(check-sat)
(exit)
