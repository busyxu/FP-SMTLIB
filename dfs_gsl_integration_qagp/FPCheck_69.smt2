(declare-fun limit_ack!1202 () (_ BitVec 64))
(declare-fun epsabs_ack!1207 () (_ BitVec 64))
(declare-fun epsrel_ack!1201 () (_ BitVec 64))
(declare-fun a_ack!1208 () (_ BitVec 64))
(declare-fun x1_ack!1203 () (_ BitVec 64))
(declare-fun x2_ack!1204 () (_ BitVec 64))
(declare-fun x3_ack!1205 () (_ BitVec 64))
(declare-fun b_ack!1206 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1202)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1207) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1201)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1201)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1203) ((_ to_fp 11 53) a_ack!1208))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1204) ((_ to_fp 11 53) x1_ack!1203))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1205) ((_ to_fp 11 53) x2_ack!1204))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1206) ((_ to_fp 11 53) x3_ack!1205))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1208)
                                   ((_ to_fp 11 53) x1_ack!1203))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1208)
                           ((_ to_fp 11 53) x1_ack!1203))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1203)
                                   ((_ to_fp 11 53) a_ack!1208)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!3)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!5 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!3)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.abs (fp.mul roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3fc321082b7cd10f)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fa0ab76a4a94042)
            (fp.add roundNearestTiesToEven (fp.abs a!4) (fp.abs a!5)))))))

(check-sat)
(exit)
