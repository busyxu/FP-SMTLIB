(declare-fun a_ack!356 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!356) ((_ to_fp 11 53) #x4190000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.sub roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x404e000000000000)
                  ((_ to_fp 11 53) a_ack!356))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
