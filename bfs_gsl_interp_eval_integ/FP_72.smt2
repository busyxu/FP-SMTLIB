(declare-fun x1_ack!3854 () (_ BitVec 64))
(declare-fun x0_ack!3858 () (_ BitVec 64))
(declare-fun x2_ack!3855 () (_ BitVec 64))
(declare-fun b_ack!3857 () (_ BitVec 64))
(declare-fun a_ack!3856 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3858) ((_ to_fp 11 53) x1_ack!3854)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3854) ((_ to_fp 11 53) x2_ack!3855)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3854)
                       ((_ to_fp 11 53) x0_ack!3858))
               ((_ to_fp 11 53) x0_ack!3858))
       ((_ to_fp 11 53) x1_ack!3854)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3854)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3854)
                       ((_ to_fp 11 53) x0_ack!3858)))
       ((_ to_fp 11 53) x0_ack!3858)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3855)
                       ((_ to_fp 11 53) x1_ack!3854))
               ((_ to_fp 11 53) x1_ack!3854))
       ((_ to_fp 11 53) x2_ack!3855)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3855)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3855)
                       ((_ to_fp 11 53) x1_ack!3854)))
       ((_ to_fp 11 53) x1_ack!3854)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3854)
                    ((_ to_fp 11 53) x0_ack!3858))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3855)
                    ((_ to_fp 11 53) x1_ack!3854))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3856) ((_ to_fp 11 53) b_ack!3857))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3856) ((_ to_fp 11 53) x0_ack!3858))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3857) ((_ to_fp 11 53) x2_ack!3855))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3856) ((_ to_fp 11 53) b_ack!3857))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3856) ((_ to_fp 11 53) x0_ack!3858))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3856) ((_ to_fp 11 53) x1_ack!3854))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3857) ((_ to_fp 11 53) x0_ack!3858))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3857) ((_ to_fp 11 53) x1_ack!3854))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3854)
                    ((_ to_fp 11 53) x0_ack!3858))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
