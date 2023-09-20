(declare-fun x1_ack!5854 () (_ BitVec 64))
(declare-fun x0_ack!5860 () (_ BitVec 64))
(declare-fun x2_ack!5855 () (_ BitVec 64))
(declare-fun b_ack!5859 () (_ BitVec 64))
(declare-fun a_ack!5858 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!5856 () (_ BitVec 64))
(declare-fun y2_ack!5857 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5860) ((_ to_fp 11 53) x1_ack!5854)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5854) ((_ to_fp 11 53) x2_ack!5855)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5854)
                       ((_ to_fp 11 53) x0_ack!5860))
               ((_ to_fp 11 53) x0_ack!5860))
       ((_ to_fp 11 53) x1_ack!5854)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5854)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5854)
                       ((_ to_fp 11 53) x0_ack!5860)))
       ((_ to_fp 11 53) x0_ack!5860)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5855)
                       ((_ to_fp 11 53) x1_ack!5854))
               ((_ to_fp 11 53) x1_ack!5854))
       ((_ to_fp 11 53) x2_ack!5855)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5855)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5855)
                       ((_ to_fp 11 53) x1_ack!5854)))
       ((_ to_fp 11 53) x1_ack!5854)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5854)
                    ((_ to_fp 11 53) x0_ack!5860))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5855)
                    ((_ to_fp 11 53) x1_ack!5854))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5858) ((_ to_fp 11 53) b_ack!5859))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5858) ((_ to_fp 11 53) x0_ack!5860))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5859) ((_ to_fp 11 53) x2_ack!5855))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5858) ((_ to_fp 11 53) b_ack!5859))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5858) ((_ to_fp 11 53) x0_ack!5860))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5858) ((_ to_fp 11 53) x1_ack!5854)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5854) ((_ to_fp 11 53) a_ack!5858))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5859) ((_ to_fp 11 53) x1_ack!5854))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5859) ((_ to_fp 11 53) x2_ack!5855))))
(assert (FPCHECK_FSUB_OVERFLOW y2_ack!5857 y1_ack!5856))

(check-sat)
(exit)
