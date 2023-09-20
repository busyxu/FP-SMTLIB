(declare-fun n_ack!535 () (_ BitVec 32))
(declare-fun a_ack!536 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (= #x00000000 (bvsrem n_ack!535 #x00000002)))
(assert (not (= #x00000000 n_ack!535)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!535 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!535 #x00000001)))
(assert (not (= #x00000001 n_ack!535)))
(assert (not (= #x00000002 n_ack!535)))
(assert (not (= #x00000003 n_ack!535)))
(assert (bvslt n_ack!535 #x00000046))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!535))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4040800000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4079a00000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (FPCHECK_FADD_ACCURACY a!2 #x4079500000000000))))

(check-sat)
(exit)
