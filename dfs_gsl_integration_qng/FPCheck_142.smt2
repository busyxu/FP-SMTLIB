(declare-fun a_ack!1075 () (_ BitVec 64))
(declare-fun b_ack!1072 () (_ BitVec 64))
(declare-fun epsabs_ack!1073 () (_ BitVec 64))
(declare-fun epsrel_ack!1074 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1072)
                                   ((_ to_fp 11 53) a_ack!1075))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1073) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1074)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1074)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1072)
                                   ((_ to_fp 11 53) a_ack!1075)))
                   ((_ to_fp 11 53) #x3fe5bdb9228de198))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1072)
                                   ((_ to_fp 11 53) a_ack!1075)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a!2))))

(check-sat)
(exit)
