(declare-fun a_ack!186 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!185 () (_ BitVec 64))
(assert (not (bvslt a_ack!186 #x00000000)))
(assert (not (= #x00000000 a_ack!186)))
(assert (not (= #x00000001 a_ack!186)))
(assert (bvsle #x00000002 a_ack!186))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!185))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                  ((_ to_fp 11 53) b_ack!185))
          ((_ to_fp 11 53) #x3fe8093870155910))))

(check-sat)
(exit)
