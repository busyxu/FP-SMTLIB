(declare-fun x1_ack!5154 () (_ BitVec 64))
(declare-fun x0_ack!5158 () (_ BitVec 64))
(declare-fun x2_ack!5155 () (_ BitVec 64))
(declare-fun b_ack!5157 () (_ BitVec 64))
(declare-fun a_ack!5156 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5158) ((_ to_fp 11 53) x1_ack!5154)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5154) ((_ to_fp 11 53) x2_ack!5155)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5154)
                       ((_ to_fp 11 53) x0_ack!5158))
               ((_ to_fp 11 53) x0_ack!5158))
       ((_ to_fp 11 53) x1_ack!5154)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5154)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5154)
                       ((_ to_fp 11 53) x0_ack!5158)))
       ((_ to_fp 11 53) x0_ack!5158)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5155)
                       ((_ to_fp 11 53) x1_ack!5154))
               ((_ to_fp 11 53) x1_ack!5154))
       ((_ to_fp 11 53) x2_ack!5155)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5155)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5155)
                       ((_ to_fp 11 53) x1_ack!5154)))
       ((_ to_fp 11 53) x1_ack!5154)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5154)
                    ((_ to_fp 11 53) x0_ack!5158))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5155)
                    ((_ to_fp 11 53) x1_ack!5154))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5156) ((_ to_fp 11 53) b_ack!5157))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5156) ((_ to_fp 11 53) x0_ack!5158))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5157) ((_ to_fp 11 53) x2_ack!5155))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5156) ((_ to_fp 11 53) b_ack!5157))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5156) ((_ to_fp 11 53) x0_ack!5158))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5156) ((_ to_fp 11 53) x1_ack!5154)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5154) ((_ to_fp 11 53) a_ack!5156))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5157) ((_ to_fp 11 53) x1_ack!5154))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5157) ((_ to_fp 11 53) x2_ack!5155)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5155)
                    ((_ to_fp 11 53) x1_ack!5154))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5156)
                       ((_ to_fp 11 53) x1_ack!5154))
               ((_ to_fp 11 53) x1_ack!5154))
       ((_ to_fp 11 53) a_ack!5156)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5156)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5156)
                       ((_ to_fp 11 53) x1_ack!5154)))
       ((_ to_fp 11 53) x1_ack!5154)))

(check-sat)
(exit)
