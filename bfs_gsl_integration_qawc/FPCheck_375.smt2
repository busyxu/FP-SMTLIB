(declare-fun limit_ack!4826 () (_ BitVec 64))
(declare-fun a_ack!4827 () (_ BitVec 64))
(declare-fun b_ack!4822 () (_ BitVec 64))
(declare-fun epsabs_ack!4824 () (_ BitVec 64))
(declare-fun epsrel_ack!4825 () (_ BitVec 64))
(declare-fun c_ack!4823 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4826)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4822) ((_ to_fp 11 53) a_ack!4827)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4824) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4825)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4825)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4823) ((_ to_fp 11 53) a_ack!4827))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4823) ((_ to_fp 11 53) b_ack!4822))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4823))
                   ((_ to_fp 11 53) a_ack!4827))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4822))
                 ((_ to_fp 11 53) b_ack!4822))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4823))
                   ((_ to_fp 11 53) a_ack!4827))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4822)))
         ((_ to_fp 11 53) b_ack!4822))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4823))
                           ((_ to_fp 11 53) a_ack!4827))
                   ((_ to_fp 11 53) b_ack!4822))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4827)
                                   ((_ to_fp 11 53) b_ack!4822))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!4822)
                           ((_ to_fp 11 53) a_ack!4827)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1f96a09e663b59f1))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            a!2
            (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!4823)))
    #x3fdabfd7e03c2fa6))))

(check-sat)
(exit)
