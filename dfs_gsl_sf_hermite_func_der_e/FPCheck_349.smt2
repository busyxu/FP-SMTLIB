(declare-fun a_ack!2214 () (_ BitVec 32))
(declare-fun b_ack!2212 () (_ BitVec 32))
(declare-fun c_ack!2213 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!2214 #x00000000)))
(assert (not (bvslt b_ack!2212 #x00000000)))
(assert (not (= #x00000000 a_ack!2214)))
(assert (= #x00000001 a_ack!2214))
(assert (bvsle #x00000002 b_ack!2212))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2213))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2213))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!2))))
(assert (not (bvsle #x00000003 b_ack!2212)))
(assert (FPCHECK_FMUL_UNDERFLOW #xbfe0000000000000 c_ack!2213))

(check-sat)
(exit)
