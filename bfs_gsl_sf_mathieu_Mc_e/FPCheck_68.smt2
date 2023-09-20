(declare-fun q_ack!408 () (_ BitVec 64))
(declare-fun j_ack!409 () (_ BitVec 32))
(declare-fun n_ack!407 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!409 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!409)))
(assert (= #x00000000 (bvsrem n_ack!407 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!407 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!407 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!407 #x00000000)))
(assert (= #x00000000 n_ack!407))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!408) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!407)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!407))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4041000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4022000000000000))))
  (FPCHECK_FMUL_ACCURACY #x3fd0000000000000 a!2))))

(check-sat)
(exit)
