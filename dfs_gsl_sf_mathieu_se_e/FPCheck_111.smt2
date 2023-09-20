(declare-fun n_ack!469 () (_ BitVec 32))
(declare-fun a_ack!470 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (= #x00000000 (bvsrem n_ack!469 #x00000002)))
(assert (not (= #x00000000 n_ack!469)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!470) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!469 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!469 #x00000002)))
(assert (not (= #x00000000 n_ack!469)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!470) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!469 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!470) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!469 #x00000001)))
(assert (not (= #x00000001 n_ack!469)))
(assert (not (= #x00000002 n_ack!469)))
(assert (not (= #x00000003 n_ack!469)))
(assert (bvslt n_ack!469 #x00000046))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!469))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4041000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (FPCHECK_FMUL_ACCURACY
    #x3fd0000000000000
    (fp.add roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x4022000000000000))))))

(check-sat)
(exit)
