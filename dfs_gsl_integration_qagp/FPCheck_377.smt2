(declare-fun limit_ack!6458 () (_ BitVec 64))
(declare-fun epsabs_ack!6463 () (_ BitVec 64))
(declare-fun epsrel_ack!6457 () (_ BitVec 64))
(declare-fun a_ack!6464 () (_ BitVec 64))
(declare-fun x1_ack!6459 () (_ BitVec 64))
(declare-fun x2_ack!6460 () (_ BitVec 64))
(declare-fun x3_ack!6461 () (_ BitVec 64))
(declare-fun b_ack!6462 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6458)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6463) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6457)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6457)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6459) ((_ to_fp 11 53) a_ack!6464))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6460) ((_ to_fp 11 53) x1_ack!6459))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6461) ((_ to_fp 11 53) x2_ack!6460))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6462) ((_ to_fp 11 53) x3_ack!6461))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6464)
                                   ((_ to_fp 11 53) x1_ack!6459))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6459)
                                   ((_ to_fp 11 53) a_ack!6464)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6464)
                                   ((_ to_fp 11 53) x1_ack!6459)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
