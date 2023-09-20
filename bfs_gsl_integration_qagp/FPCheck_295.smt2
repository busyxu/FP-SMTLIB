(declare-fun limit_ack!4472 () (_ BitVec 64))
(declare-fun epsabs_ack!4477 () (_ BitVec 64))
(declare-fun a_ack!4478 () (_ BitVec 64))
(declare-fun x1_ack!4473 () (_ BitVec 64))
(declare-fun x2_ack!4474 () (_ BitVec 64))
(declare-fun x3_ack!4475 () (_ BitVec 64))
(declare-fun b_ack!4476 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4472)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4477)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4473) ((_ to_fp 11 53) a_ack!4478))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4474) ((_ to_fp 11 53) x1_ack!4473))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4475) ((_ to_fp 11 53) x2_ack!4474))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4476) ((_ to_fp 11 53) x3_ack!4475))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4478)
                                   ((_ to_fp 11 53) x1_ack!4473))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4473)
                                   ((_ to_fp 11 53) a_ack!4478)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4478)
                                   ((_ to_fp 11 53) x1_ack!4473)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
