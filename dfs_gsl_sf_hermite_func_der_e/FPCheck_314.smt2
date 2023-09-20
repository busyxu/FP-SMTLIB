(declare-fun a_ack!2037 () (_ BitVec 32))
(declare-fun b_ack!2036 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!2037 #x00000000)))
(assert (not (bvslt b_ack!2036 #x00000000)))
(assert (not (= #x00000000 a_ack!2037)))
(assert (= #x00000001 a_ack!2037))
(assert (not (bvsle #x00000002 b_ack!2036)))
(assert (FPCHECK_FINVALID_SQRT
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2036))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2036))))

(check-sat)
(exit)
