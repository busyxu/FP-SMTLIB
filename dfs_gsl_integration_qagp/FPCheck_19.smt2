(declare-fun limit_ack!354 () (_ BitVec 64))
(declare-fun epsabs_ack!359 () (_ BitVec 64))
(declare-fun epsrel_ack!353 () (_ BitVec 64))
(declare-fun a_ack!360 () (_ BitVec 64))
(declare-fun x1_ack!355 () (_ BitVec 64))
(declare-fun x2_ack!356 () (_ BitVec 64))
(declare-fun x3_ack!357 () (_ BitVec 64))
(declare-fun b_ack!358 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!354)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!359) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!353)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!353)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!355) ((_ to_fp 11 53) a_ack!360))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!356) ((_ to_fp 11 53) x1_ack!355))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!357) ((_ to_fp 11 53) x2_ack!356))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!358) ((_ to_fp 11 53) x3_ack!357))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!360)
                                   ((_ to_fp 11 53) x1_ack!355))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!360)
                                   ((_ to_fp 11 53) x1_ack!355))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            (CF_log a!1)
            ((_ to_fp 11 53) #x7ff8000000000001))
    #x3fc321082b7cd10f)))

(check-sat)
(exit)
