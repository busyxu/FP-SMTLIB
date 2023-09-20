(declare-fun a_ack!2092 () (_ BitVec 32))
(declare-fun b_ack!2090 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!2091 () (_ BitVec 64))
(assert (not (bvslt a_ack!2092 #x00000000)))
(assert (not (bvslt b_ack!2090 #x00000000)))
(assert (not (= #x00000000 a_ack!2092)))
(assert (= #x00000001 a_ack!2092))
(assert (bvsle #x00000002 b_ack!2090))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) c_ack!2091))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                  ((_ to_fp 11 53) c_ack!2091))
          ((_ to_fp 11 53) #x3fe8093870155910))))

(check-sat)
(exit)
