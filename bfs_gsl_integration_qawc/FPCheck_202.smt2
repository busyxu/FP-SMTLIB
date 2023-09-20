(declare-fun limit_ack!2631 () (_ BitVec 64))
(declare-fun a_ack!2632 () (_ BitVec 64))
(declare-fun b_ack!2628 () (_ BitVec 64))
(declare-fun epsabs_ack!2630 () (_ BitVec 64))
(declare-fun c_ack!2629 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!2631)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2628) ((_ to_fp 11 53) a_ack!2632)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2630)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2629) ((_ to_fp 11 53) a_ack!2632))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2629) ((_ to_fp 11 53) b_ack!2628))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2629))
                   ((_ to_fp 11 53) a_ack!2632))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2628))
                 ((_ to_fp 11 53) b_ack!2628))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2629))
                   ((_ to_fp 11 53) a_ack!2632))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!2628)))
         ((_ to_fp 11 53) b_ack!2628))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2629))
                           ((_ to_fp 11 53) a_ack!2632))
                   ((_ to_fp 11 53) b_ack!2628))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2632)
                                   ((_ to_fp 11 53) b_ack!2628))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2632)
                                   ((_ to_fp 11 53) b_ack!2628)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2628)
                                   ((_ to_fp 11 53) a_ack!2632)))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x1ecce03531adc176))))
  (FPCHECK_FDIV_ACCURACY
    a!3
    (fp.sub roundNearestTiesToEven a!2 ((_ to_fp 11 53) c_ack!2629)))))))

(check-sat)
(exit)
