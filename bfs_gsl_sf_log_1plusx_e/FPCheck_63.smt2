(declare-fun a_ack!100 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!100) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!100))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!100))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FINVALID_LOG
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!100))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!100))))

(check-sat)
(exit)
