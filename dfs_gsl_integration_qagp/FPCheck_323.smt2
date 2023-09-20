(declare-fun limit_ack!5530 () (_ BitVec 64))
(declare-fun epsabs_ack!5535 () (_ BitVec 64))
(declare-fun epsrel_ack!5529 () (_ BitVec 64))
(declare-fun a_ack!5536 () (_ BitVec 64))
(declare-fun x1_ack!5531 () (_ BitVec 64))
(declare-fun x2_ack!5532 () (_ BitVec 64))
(declare-fun x3_ack!5533 () (_ BitVec 64))
(declare-fun b_ack!5534 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5530)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5535) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5529)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5529)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5531) ((_ to_fp 11 53) a_ack!5536))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5532) ((_ to_fp 11 53) x1_ack!5531))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5533) ((_ to_fp 11 53) x2_ack!5532))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5534) ((_ to_fp 11 53) x3_ack!5533))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5531))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5531)
                                   ((_ to_fp 11 53) a_ack!5536)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5531)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
