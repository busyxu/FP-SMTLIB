(declare-fun n_ack!578 () (_ BitVec 32))
(declare-fun a_ack!579 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!578 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!578 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!578 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!578 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!578 #x00000000)))
(assert (not (= #x00000000 n_ack!578)))
(assert (not (= #x00000001 n_ack!578)))
(assert (not (= #x00000002 n_ack!578)))
(assert (not (= #x00000003 n_ack!578)))
(assert (bvslt n_ack!578 #x00000046))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!578)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!578))))))
  (FPCHECK_FMUL_UNDERFLOW #x4041000000000000 a!1)))

(check-sat)
(exit)
