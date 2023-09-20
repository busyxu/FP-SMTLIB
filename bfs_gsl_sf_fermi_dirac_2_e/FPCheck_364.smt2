(declare-fun a_ack!484 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!484) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!484) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!484) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!484) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!484) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!484) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!484) ((_ to_fp 11 53) #x410428a2f98d7287))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!484) ((_ to_fp 11 53) #x554428a2f98d7242)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fc5555555555555)
                       ((_ to_fp 11 53) a_ack!484))
               ((_ to_fp 11 53) #x3fc5555555555555))
       ((_ to_fp 11 53) a_ack!484)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!484))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fc5555555555555)
                       ((_ to_fp 11 53) a_ack!484))
               ((_ to_fp 11 53) a_ack!484))
       ((_ to_fp 11 53) #x3fc5555555555555)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fc5555555555555)
                  ((_ to_fp 11 53) a_ack!484))
          ((_ to_fp 11 53) a_ack!484))
  a_ack!484))

(check-sat)
(exit)
