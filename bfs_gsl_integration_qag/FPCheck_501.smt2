(declare-fun key_ack!5235 () (_ BitVec 32))
(declare-fun limit_ack!5234 () (_ BitVec 64))
(declare-fun epsabs_ack!5233 () (_ BitVec 64))
(declare-fun b_ack!5232 () (_ BitVec 64))
(declare-fun a_ack!5236 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt key_ack!5235 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!5235)))
(assert (= #x00000001 key_ack!5235))
(assert (not (bvult #x00000000000003e8 limit_ack!5234)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5233)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5236)
                                   ((_ to_fp 11 53) b_ack!5232))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5232)
                                   ((_ to_fp 11 53) a_ack!5236)))
                   ((_ to_fp 11 53) #x3fca98b2892e0c77))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5236)
                                   ((_ to_fp 11 53) b_ack!5232)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
