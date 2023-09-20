(declare-fun n_ack!193 () (_ BitVec 32))
(declare-fun a_ack!194 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!193 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!194) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!193 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!194) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!193 #x00000000)))
(assert (= #x00000000 n_ack!193))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!194) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!193)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!193))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x4014000000000000
    (fp.mul roundNearestTiesToEven a!1 a!1))))

(check-sat)
(exit)
