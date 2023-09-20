(declare-fun a_ack!159 () (_ BitVec 32))
(declare-fun b_ack!158 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!159 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!159)))
(assert (not (= #x00000001 a_ack!159)))
(assert (bvsle #x00000002 a_ack!159))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!158))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!158))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (FPCHECK_FSUB_UNDERFLOW a!1 #x3fe0fefbe1c2b6ca)))

(check-sat)
(exit)
