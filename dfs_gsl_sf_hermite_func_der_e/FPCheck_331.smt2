(declare-fun a_ack!2124 () (_ BitVec 32))
(declare-fun b_ack!2122 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!2123 () (_ BitVec 64))
(assert (not (bvslt a_ack!2124 #x00000000)))
(assert (not (bvslt b_ack!2122 #x00000000)))
(assert (not (= #x00000000 a_ack!2124)))
(assert (= #x00000001 a_ack!2124))
(assert (bvsle #x00000002 b_ack!2122))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2123))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2123))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (FPCHECK_FSUB_ACCURACY a!1 #x3fe0fefbe1c2b6ca)))

(check-sat)
(exit)
