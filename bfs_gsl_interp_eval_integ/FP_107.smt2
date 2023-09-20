(declare-fun x1_ack!5899 () (_ BitVec 64))
(declare-fun x0_ack!5903 () (_ BitVec 64))
(declare-fun x2_ack!5900 () (_ BitVec 64))
(declare-fun b_ack!5902 () (_ BitVec 64))
(declare-fun a_ack!5901 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5903) ((_ to_fp 11 53) x1_ack!5899)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5899) ((_ to_fp 11 53) x2_ack!5900)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5899)
                       ((_ to_fp 11 53) x0_ack!5903))
               ((_ to_fp 11 53) x0_ack!5903))
       ((_ to_fp 11 53) x1_ack!5899)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5899)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5899)
                       ((_ to_fp 11 53) x0_ack!5903)))
       ((_ to_fp 11 53) x0_ack!5903)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5900)
                       ((_ to_fp 11 53) x1_ack!5899))
               ((_ to_fp 11 53) x1_ack!5899))
       ((_ to_fp 11 53) x2_ack!5900)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5900)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5900)
                       ((_ to_fp 11 53) x1_ack!5899)))
       ((_ to_fp 11 53) x1_ack!5899)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5899)
                    ((_ to_fp 11 53) x0_ack!5903))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5900)
                    ((_ to_fp 11 53) x1_ack!5899))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5901) ((_ to_fp 11 53) b_ack!5902))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5901) ((_ to_fp 11 53) x0_ack!5903))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5902) ((_ to_fp 11 53) x2_ack!5900))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5901) ((_ to_fp 11 53) b_ack!5902))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5901) ((_ to_fp 11 53) x0_ack!5903))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5901) ((_ to_fp 11 53) x1_ack!5899))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5902) ((_ to_fp 11 53) x0_ack!5903))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5902) ((_ to_fp 11 53) x1_ack!5899)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5899) ((_ to_fp 11 53) b_ack!5902))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5899)
                    ((_ to_fp 11 53) x0_ack!5903))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
