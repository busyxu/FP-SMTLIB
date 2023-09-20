(declare-fun a_ack!97 () (_ BitVec 32))
(declare-fun b_ack!96 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!97 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!96) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_SQRT
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!97))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!97))))

(check-sat)
(exit)
