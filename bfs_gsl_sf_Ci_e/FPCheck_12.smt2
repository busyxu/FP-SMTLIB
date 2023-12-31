(declare-fun a_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!19) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!19))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!19)
                       ((_ to_fp 11 53) a_ack!19))
               ((_ to_fp 11 53) a_ack!19))
       ((_ to_fp 11 53) a_ack!19)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!19))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!19)
                       ((_ to_fp 11 53) a_ack!19))
               ((_ to_fp 11 53) a_ack!19))
       ((_ to_fp 11 53) a_ack!19)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!19)
                  ((_ to_fp 11 53) a_ack!19))
          ((_ to_fp 11 53) #x4020000000000000))
  #x3fc0000000000000))

(check-sat)
(exit)
