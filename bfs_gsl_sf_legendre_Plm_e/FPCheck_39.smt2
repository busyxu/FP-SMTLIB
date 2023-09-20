(declare-fun b_ack!159 () (_ BitVec 32))
(declare-fun a_ack!160 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!160 b_ack!159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub a_ack!160 b_ack!159))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  (CF_log ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!160 b_ack!159)))
  #x3ff0000000000000))

(check-sat)
(exit)
