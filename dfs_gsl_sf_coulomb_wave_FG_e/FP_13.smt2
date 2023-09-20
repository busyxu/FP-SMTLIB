(declare-fun b_ack!387 () (_ BitVec 64))
(declare-fun c_ack!388 () (_ BitVec 64))
(declare-fun d_ack!389 () (_ BitVec 32))
(declare-fun a_ack!390 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!388) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!388)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!389))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!387) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) a_ack!390))
            ((_ to_fp 11 53) #x4083ec744754dd24))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!390))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) a_ack!390)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!390))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!390))
               ((_ to_fp 11 53) a_ack!390))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!387)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!390)))))

(check-sat)
(exit)
