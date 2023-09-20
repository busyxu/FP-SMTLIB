(declare-fun n_ack!393 () (_ BitVec 32))
(declare-fun a_ack!394 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!393 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!394) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!393 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!394) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!393 #x00000000)))
(assert (= #x00000000 n_ack!393))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!394) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!393)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!393))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x404f800000000000)
            (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!1 a!1)
                    a!1))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4093b00000000000)
            (fp.mul roundNearestTiesToEven a!1 a!1)))))

(check-sat)
(exit)
