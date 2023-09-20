(declare-fun n_ack!30 () (_ BitVec 32))
(declare-fun a_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!30 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!30 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!30 #x00000000)))
(assert (= #x00000000 n_ack!30))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!30)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!30))))))
  (FPCHECK_FMUL_UNDERFLOW (fp.mul roundNearestTiesToEven a!1 a!1) a!1)))

(check-sat)
(exit)
