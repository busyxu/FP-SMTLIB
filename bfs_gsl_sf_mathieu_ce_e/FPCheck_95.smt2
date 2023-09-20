(declare-fun n_ack!435 () (_ BitVec 32))
(declare-fun a_ack!436 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!435 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!435 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!435 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!435 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!435 #x00000000)))
(assert (= #x00000000 n_ack!435))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!435)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!435))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4040800000000000)
            (fp.mul roundNearestTiesToEven a!1 a!1))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4079a00000000000) a!1))))

(check-sat)
(exit)
