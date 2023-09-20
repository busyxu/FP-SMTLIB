(declare-fun a_ack!2104 () (_ BitVec 32))
(declare-fun b_ack!2102 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!2103 () (_ BitVec 64))
(assert (not (bvslt a_ack!2104 #x00000000)))
(assert (not (bvslt b_ack!2102 #x00000000)))
(assert (not (= #x00000000 a_ack!2104)))
(assert (= #x00000001 a_ack!2104))
(assert (bvsle #x00000002 b_ack!2102))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) c_ack!2103))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                  ((_ to_fp 11 53) c_ack!2103))
          ((_ to_fp 11 53) #x3fe8093870155910))))

(check-sat)
(exit)
