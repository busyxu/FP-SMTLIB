(declare-fun q_ack!204 () (_ BitVec 64))
(declare-fun j_ack!205 () (_ BitVec 32))
(declare-fun n_ack!203 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!205 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!205)))
(assert (= #x00000000 (bvsrem n_ack!203 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!203 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!203 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!203 #x00000000)))
(assert (= #x00000000 n_ack!203))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!204) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!203)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!203))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3fc0000000000000
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
