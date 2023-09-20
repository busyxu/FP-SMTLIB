(declare-fun key_ack!2245 () (_ BitVec 32))
(declare-fun limit_ack!2244 () (_ BitVec 64))
(declare-fun epsabs_ack!2243 () (_ BitVec 64))
(declare-fun b_ack!2242 () (_ BitVec 64))
(declare-fun a_ack!2246 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt key_ack!2245 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2245)))
(assert (= #x00000001 key_ack!2245))
(assert (not (bvult #x00000000000003e8 limit_ack!2244)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2243)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2246)
                                   ((_ to_fp 11 53) b_ack!2242))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2242)
                  ((_ to_fp 11 53) a_ack!2246)))
  #x3fee5f178e7c6229))

(check-sat)
(exit)
