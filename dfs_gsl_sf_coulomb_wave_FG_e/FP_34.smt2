(declare-fun b_ack!939 () (_ BitVec 64))
(declare-fun c_ack!940 () (_ BitVec 64))
(declare-fun d_ack!941 () (_ BitVec 32))
(declare-fun a_ack!942 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!939) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!940) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!940)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!941))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!939) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!939) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) a_ack!942))
       ((_ to_fp 11 53) #x4083ec744754dd24)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!942)
                       ((_ to_fp 11 53) b_ack!939)))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (bvslt ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!940)
                            ((_ to_fp 11 53) #x3fe0000000000000)))
                  d_ack!941)))
  (not a!1)))

(check-sat)
(exit)
