(declare-fun a_ack!2283 () (_ BitVec 32))
(declare-fun b_ack!2281 () (_ BitVec 32))
(declare-fun c_ack!2282 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!2283 #x00000000)))
(assert (not (bvslt b_ack!2281 #x00000000)))
(assert (not (= #x00000000 a_ack!2283)))
(assert (= #x00000001 a_ack!2283))
(assert (bvsle #x00000002 b_ack!2281))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2282))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2282))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!2))))
(assert (not (bvsle #x00000003 b_ack!2281)))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2281)
  #x3cb0000000000000))

(check-sat)
(exit)
