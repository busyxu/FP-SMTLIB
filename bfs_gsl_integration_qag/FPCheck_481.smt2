(declare-fun key_ack!5010 () (_ BitVec 32))
(declare-fun limit_ack!5009 () (_ BitVec 64))
(declare-fun epsabs_ack!5008 () (_ BitVec 64))
(declare-fun b_ack!5007 () (_ BitVec 64))
(declare-fun a_ack!5011 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt key_ack!5010 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!5010)))
(assert (= #x00000001 key_ack!5010))
(assert (not (bvult #x00000000000003e8 limit_ack!5009)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5008)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5011)
                                   ((_ to_fp 11 53) b_ack!5007))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5007)
                  ((_ to_fp 11 53) a_ack!5011)))
  #x3fca98b2892e0c77))

(check-sat)
(exit)
