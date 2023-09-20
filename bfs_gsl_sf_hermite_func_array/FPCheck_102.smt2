(declare-fun a_ack!374 () (_ BitVec 32))
(declare-fun b_ack!373 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!374 #x00000000)))
(assert (not (= #x00000000 a_ack!374)))
(assert (not (= #x00000001 a_ack!374)))
(assert (bvsle #x00000002 a_ack!374))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!373))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!373))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!373))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!373))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (CF_log (fp.abs (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (bvsle #x00000003 a_ack!374))
(assert (FPCHECK_FMUL_UNDERFLOW #x3fea20bd700c2c3e b_ack!373))

(check-sat)
(exit)
