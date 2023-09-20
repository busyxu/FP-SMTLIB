(declare-fun key_ack!352 () (_ BitVec 32))
(declare-fun limit_ack!351 () (_ BitVec 64))
(declare-fun epsabs_ack!350 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!349 () (_ BitVec 64))
(declare-fun a_ack!353 () (_ BitVec 64))
(assert (not (bvslt key_ack!352 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!352)))
(assert (= #x00000001 key_ack!352))
(assert (not (bvult #x00000000000003e8 limit_ack!351)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!350)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!353)
                  ((_ to_fp 11 53) b_ack!349)))))

(check-sat)
(exit)
