(declare-fun limit_ack!5270 () (_ BitVec 64))
(declare-fun epsabs_ack!5275 () (_ BitVec 64))
(declare-fun a_ack!5276 () (_ BitVec 64))
(declare-fun x1_ack!5271 () (_ BitVec 64))
(declare-fun x2_ack!5272 () (_ BitVec 64))
(declare-fun x3_ack!5273 () (_ BitVec 64))
(declare-fun b_ack!5274 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5270)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5275)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5271) ((_ to_fp 11 53) a_ack!5276))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5272) ((_ to_fp 11 53) x1_ack!5271))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5273) ((_ to_fp 11 53) x2_ack!5272))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5274) ((_ to_fp 11 53) x3_ack!5273))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5276)
                                   ((_ to_fp 11 53) x1_ack!5271))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5271)
                                   ((_ to_fp 11 53) a_ack!5276)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5276)
                                   ((_ to_fp 11 53) x1_ack!5271)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
