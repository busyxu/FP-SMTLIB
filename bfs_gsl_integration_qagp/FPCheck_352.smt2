(declare-fun limit_ack!5326 () (_ BitVec 64))
(declare-fun epsabs_ack!5331 () (_ BitVec 64))
(declare-fun a_ack!5332 () (_ BitVec 64))
(declare-fun x1_ack!5327 () (_ BitVec 64))
(declare-fun x2_ack!5328 () (_ BitVec 64))
(declare-fun x3_ack!5329 () (_ BitVec 64))
(declare-fun b_ack!5330 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5326)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5331)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5327) ((_ to_fp 11 53) a_ack!5332))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5328) ((_ to_fp 11 53) x1_ack!5327))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5329) ((_ to_fp 11 53) x2_ack!5328))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5330) ((_ to_fp 11 53) x3_ack!5329))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5332)
                                   ((_ to_fp 11 53) x1_ack!5327))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5332)
                           ((_ to_fp 11 53) x1_ack!5327))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5327)
                                   ((_ to_fp 11 53) a_ack!5332)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FADD_ACCURACY a!3 a!4))))

(check-sat)
(exit)
