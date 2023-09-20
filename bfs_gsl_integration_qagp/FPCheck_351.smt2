(declare-fun limit_ack!5312 () (_ BitVec 64))
(declare-fun epsabs_ack!5317 () (_ BitVec 64))
(declare-fun a_ack!5318 () (_ BitVec 64))
(declare-fun x1_ack!5313 () (_ BitVec 64))
(declare-fun x2_ack!5314 () (_ BitVec 64))
(declare-fun x3_ack!5315 () (_ BitVec 64))
(declare-fun b_ack!5316 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5312)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5317)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5313) ((_ to_fp 11 53) a_ack!5318))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5314) ((_ to_fp 11 53) x1_ack!5313))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5315) ((_ to_fp 11 53) x2_ack!5314))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5316) ((_ to_fp 11 53) x3_ack!5315))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5318)
                                   ((_ to_fp 11 53) x1_ack!5313))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5318)
                           ((_ to_fp 11 53) x1_ack!5313))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5313)
                                   ((_ to_fp 11 53) a_ack!5318)))
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
  (FPCHECK_FADD_UNDERFLOW a!3 a!4))))

(check-sat)
(exit)
