(declare-fun limit_ack!4395 () (_ BitVec 64))
(declare-fun epsabs_ack!4400 () (_ BitVec 64))
(declare-fun a_ack!4401 () (_ BitVec 64))
(declare-fun x1_ack!4396 () (_ BitVec 64))
(declare-fun x2_ack!4397 () (_ BitVec 64))
(declare-fun x3_ack!4398 () (_ BitVec 64))
(declare-fun b_ack!4399 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4395)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4400)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4396) ((_ to_fp 11 53) a_ack!4401))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4397) ((_ to_fp 11 53) x1_ack!4396))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4398) ((_ to_fp 11 53) x2_ack!4397))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4399) ((_ to_fp 11 53) x3_ack!4398))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4401)
                                   ((_ to_fp 11 53) x1_ack!4396))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4396)
                                   ((_ to_fp 11 53) a_ack!4401)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4401)
                                   ((_ to_fp 11 53) x1_ack!4396)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
