(declare-fun a_ack!1178 () (_ BitVec 32))
(declare-fun b_ack!1177 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1178 #x00000000)))
(assert (not (= #x00000000 a_ack!1178)))
(assert (not (= #x00000001 a_ack!1178)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) b_ack!1177)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (bvsle #x00000001 (bvadd #xffffffff a_ack!1178)))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) b_ack!1177)))
                  ((_ to_fp 11 53) #x7fefffffffffffff))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!1177)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1177))
                           a!1)
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (FPCHECK_FMUL_ACCURACY #x4000000000000000 a!2))))

(check-sat)
(exit)
