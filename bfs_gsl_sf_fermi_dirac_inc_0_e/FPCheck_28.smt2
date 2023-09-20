(declare-fun b_ack!108 () (_ BitVec 64))
(declare-fun a_ack!109 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!108)
                    ((_ to_fp 11 53) a_ack!109))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!108)
                    ((_ to_fp 11 53) a_ack!109))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!108)
                    ((_ to_fp 11 53) a_ack!109))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  #x8000000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!108)
          ((_ to_fp 11 53) a_ack!109))))

(check-sat)
(exit)
