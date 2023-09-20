(declare-fun n_ack!442 () (_ BitVec 32))
(declare-fun a_ack!443 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!442 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!443) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!442 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!443) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!442 #x00000000)))
(assert (not (= #x00000000 n_ack!442)))
(assert (not (= #x00000001 n_ack!442)))
(assert (not (= #x00000002 n_ack!442)))
(assert (not (= #x00000003 n_ack!442)))
(assert (bvslt n_ack!442 #x00000046))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!442)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!442)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!442))))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.add roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x4008000000000000)))))

(check-sat)
(exit)
