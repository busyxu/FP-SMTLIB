(declare-fun n_ack!702 () (_ BitVec 32))
(declare-fun a_ack!703 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (= #x00000000 (bvsrem n_ack!702 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!703) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!702 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!702 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!703) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!702 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!703) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!702 #x00000000)))
(assert (not (= #x00000000 n_ack!702)))
(assert (not (= #x00000001 n_ack!702)))
(assert (not (= #x00000002 n_ack!702)))
(assert (not (= #x00000003 n_ack!702)))
(assert (bvslt n_ack!702 #x00000046))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!702)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!702))))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4040800000000000)
                    (fp.mul roundNearestTiesToEven a!1 a!1))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4079a00000000000)
                    a!1))
    #x4079500000000000)))

(check-sat)
(exit)
