(declare-fun x1_ack!3809 () (_ BitVec 64))
(declare-fun x0_ack!3813 () (_ BitVec 64))
(declare-fun x2_ack!3810 () (_ BitVec 64))
(declare-fun b_ack!3812 () (_ BitVec 64))
(declare-fun a_ack!3811 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3813) ((_ to_fp 11 53) x1_ack!3809)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3809) ((_ to_fp 11 53) x2_ack!3810)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3809)
                       ((_ to_fp 11 53) x0_ack!3813))
               ((_ to_fp 11 53) x0_ack!3813))
       ((_ to_fp 11 53) x1_ack!3809)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3809)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3809)
                       ((_ to_fp 11 53) x0_ack!3813)))
       ((_ to_fp 11 53) x0_ack!3813)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3810)
                       ((_ to_fp 11 53) x1_ack!3809))
               ((_ to_fp 11 53) x1_ack!3809))
       ((_ to_fp 11 53) x2_ack!3810)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3810)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3810)
                       ((_ to_fp 11 53) x1_ack!3809)))
       ((_ to_fp 11 53) x1_ack!3809)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3809)
                    ((_ to_fp 11 53) x0_ack!3813))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3810)
                    ((_ to_fp 11 53) x1_ack!3809))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3811) ((_ to_fp 11 53) b_ack!3812))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3811) ((_ to_fp 11 53) x0_ack!3813))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3812) ((_ to_fp 11 53) x2_ack!3810))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3811) ((_ to_fp 11 53) b_ack!3812))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3811) ((_ to_fp 11 53) x0_ack!3813))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3811) ((_ to_fp 11 53) x1_ack!3809))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3812) ((_ to_fp 11 53) x0_ack!3813))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3812) ((_ to_fp 11 53) x1_ack!3809))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3809)
                    ((_ to_fp 11 53) x0_ack!3813))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
