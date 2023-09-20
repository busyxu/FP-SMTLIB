(declare-fun a_ack!2552 () (_ BitVec 32))
(declare-fun b_ack!2550 () (_ BitVec 32))
(declare-fun c_ack!2551 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2550 a_ack!2552)))
(assert (not (bvslt a_ack!2552 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2551) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2550)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2551))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!2551))
                          (fp.abs ((_ to_fp 11 53) c_ack!2551)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2551))
                           (fp.abs ((_ to_fp 11 53) c_ack!2551))))))
  (FPCHECK_FDIV_UNDERFLOW #x3fe0000000000000 a!1)))

(check-sat)
(exit)
