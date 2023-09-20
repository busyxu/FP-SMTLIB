(declare-fun x1_ack!3388 () (_ BitVec 64))
(declare-fun x0_ack!3392 () (_ BitVec 64))
(declare-fun x2_ack!3389 () (_ BitVec 64))
(declare-fun b_ack!3391 () (_ BitVec 64))
(declare-fun a_ack!3390 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3392) ((_ to_fp 11 53) x1_ack!3388)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3388) ((_ to_fp 11 53) x2_ack!3389)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3388)
                       ((_ to_fp 11 53) x0_ack!3392))
               ((_ to_fp 11 53) x0_ack!3392))
       ((_ to_fp 11 53) x1_ack!3388)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3388)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3388)
                       ((_ to_fp 11 53) x0_ack!3392)))
       ((_ to_fp 11 53) x0_ack!3392)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3389)
                       ((_ to_fp 11 53) x1_ack!3388))
               ((_ to_fp 11 53) x1_ack!3388))
       ((_ to_fp 11 53) x2_ack!3389)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3389)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3389)
                       ((_ to_fp 11 53) x1_ack!3388)))
       ((_ to_fp 11 53) x1_ack!3388)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3388)
                    ((_ to_fp 11 53) x0_ack!3392))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3389)
                    ((_ to_fp 11 53) x1_ack!3388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3390) ((_ to_fp 11 53) b_ack!3391))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3390) ((_ to_fp 11 53) x0_ack!3392))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3391) ((_ to_fp 11 53) x2_ack!3389))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3390) ((_ to_fp 11 53) b_ack!3391))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3390) ((_ to_fp 11 53) x0_ack!3392))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3390) ((_ to_fp 11 53) x1_ack!3388)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3388) ((_ to_fp 11 53) a_ack!3390))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3391) ((_ to_fp 11 53) x1_ack!3388))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3391) ((_ to_fp 11 53) x2_ack!3389)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3389)
                    ((_ to_fp 11 53) x1_ack!3388))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
