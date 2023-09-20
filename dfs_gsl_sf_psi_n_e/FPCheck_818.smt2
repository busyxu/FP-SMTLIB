(declare-fun a_ack!2211 () (_ BitVec 32))
(declare-fun b_ack!2210 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (= #x00000000 a_ack!2211)))
(assert (not (= #x00000001 a_ack!2211)))
(assert (not (bvslt a_ack!2211 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2211)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2211)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
