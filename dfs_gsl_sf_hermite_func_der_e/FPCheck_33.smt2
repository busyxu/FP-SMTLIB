(declare-fun a_ack!230 () (_ BitVec 32))
(declare-fun b_ack!228 () (_ BitVec 32))
(declare-fun c_ack!229 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!230 #x00000000)))
(assert (not (bvslt b_ack!228 #x00000000)))
(assert (= #x00000000 a_ack!230))
(assert (not (bvslt b_ack!228 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!229) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!228)))
(assert (not (= #x00000001 b_ack!228)))
(assert (bvsle #x00000002 b_ack!228))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) c_ack!229))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                  ((_ to_fp 11 53) c_ack!229))
          ((_ to_fp 11 53) #x3fe8093870155910))))

(check-sat)
(exit)
