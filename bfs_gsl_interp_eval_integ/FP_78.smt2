(declare-fun x1_ack!4157 () (_ BitVec 64))
(declare-fun x0_ack!4161 () (_ BitVec 64))
(declare-fun x2_ack!4158 () (_ BitVec 64))
(declare-fun b_ack!4160 () (_ BitVec 64))
(declare-fun a_ack!4159 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4161) ((_ to_fp 11 53) x1_ack!4157)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4157) ((_ to_fp 11 53) x2_ack!4158)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4157)
                       ((_ to_fp 11 53) x0_ack!4161))
               ((_ to_fp 11 53) x0_ack!4161))
       ((_ to_fp 11 53) x1_ack!4157)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4157)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4157)
                       ((_ to_fp 11 53) x0_ack!4161)))
       ((_ to_fp 11 53) x0_ack!4161)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4158)
                       ((_ to_fp 11 53) x1_ack!4157))
               ((_ to_fp 11 53) x1_ack!4157))
       ((_ to_fp 11 53) x2_ack!4158)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4158)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4158)
                       ((_ to_fp 11 53) x1_ack!4157)))
       ((_ to_fp 11 53) x1_ack!4157)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4157)
                    ((_ to_fp 11 53) x0_ack!4161))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4158)
                    ((_ to_fp 11 53) x1_ack!4157))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4159) ((_ to_fp 11 53) b_ack!4160))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4159) ((_ to_fp 11 53) x0_ack!4161))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4160) ((_ to_fp 11 53) x2_ack!4158))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4159) ((_ to_fp 11 53) b_ack!4160))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4159) ((_ to_fp 11 53) x0_ack!4161))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4159) ((_ to_fp 11 53) x1_ack!4157))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4160) ((_ to_fp 11 53) x0_ack!4161))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4160) ((_ to_fp 11 53) x1_ack!4157))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4157)
                    ((_ to_fp 11 53) x0_ack!4161))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
