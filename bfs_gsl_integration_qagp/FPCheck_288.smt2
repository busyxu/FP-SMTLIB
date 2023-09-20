(declare-fun limit_ack!4339 () (_ BitVec 64))
(declare-fun epsabs_ack!4344 () (_ BitVec 64))
(declare-fun a_ack!4345 () (_ BitVec 64))
(declare-fun x1_ack!4340 () (_ BitVec 64))
(declare-fun x2_ack!4341 () (_ BitVec 64))
(declare-fun x3_ack!4342 () (_ BitVec 64))
(declare-fun b_ack!4343 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4339)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4344)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4340) ((_ to_fp 11 53) a_ack!4345))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4341) ((_ to_fp 11 53) x1_ack!4340))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4342) ((_ to_fp 11 53) x2_ack!4341))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4343) ((_ to_fp 11 53) x3_ack!4342))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4345)
                                   ((_ to_fp 11 53) x1_ack!4340))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4340)
                                   ((_ to_fp 11 53) a_ack!4345)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4345)
                                   ((_ to_fp 11 53) x1_ack!4340)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
