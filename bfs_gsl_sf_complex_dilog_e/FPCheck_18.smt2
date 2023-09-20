(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!62 () (_ BitVec 64))
(declare-fun a_ack!63 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!63)
               (CF_sin b_ack!62))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!63)
                (CF_cos b_ack!62))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FINVALID_LOG
  (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!63) (CF_cos b_ack!62))
  (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!63) (CF_cos b_ack!62))))

(check-sat)
(exit)
