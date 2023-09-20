(declare-fun n_ack!275 () (_ BitVec 32))
(declare-fun a_ack!276 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!275 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!275 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!275 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!275 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!275 #x00000000)))
(assert (= #x00000000 n_ack!275))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!276) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!275)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!275)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!275))))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.add roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x4008000000000000)))))

(check-sat)
(exit)
