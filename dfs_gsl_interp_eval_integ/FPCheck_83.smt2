(declare-fun x1_ack!897 () (_ BitVec 64))
(declare-fun x0_ack!901 () (_ BitVec 64))
(declare-fun x2_ack!898 () (_ BitVec 64))
(declare-fun b_ack!900 () (_ BitVec 64))
(declare-fun a_ack!899 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!901) ((_ to_fp 11 53) x1_ack!897)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!897) ((_ to_fp 11 53) x2_ack!898)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!897)
                       ((_ to_fp 11 53) x0_ack!901))
               ((_ to_fp 11 53) x0_ack!901))
       ((_ to_fp 11 53) x1_ack!897)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!897)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!897)
                       ((_ to_fp 11 53) x0_ack!901)))
       ((_ to_fp 11 53) x0_ack!901)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!898)
                       ((_ to_fp 11 53) x1_ack!897))
               ((_ to_fp 11 53) x1_ack!897))
       ((_ to_fp 11 53) x2_ack!898)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!898)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!898)
                       ((_ to_fp 11 53) x1_ack!897)))
       ((_ to_fp 11 53) x1_ack!897)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!897)
                    ((_ to_fp 11 53) x0_ack!901))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!898)
                    ((_ to_fp 11 53) x1_ack!897))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!899) ((_ to_fp 11 53) b_ack!900))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!899) ((_ to_fp 11 53) x0_ack!901))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!900) ((_ to_fp 11 53) x2_ack!898))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!899) ((_ to_fp 11 53) b_ack!900))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!899) ((_ to_fp 11 53) x0_ack!901))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!899) ((_ to_fp 11 53) x1_ack!897))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!900) ((_ to_fp 11 53) x0_ack!901))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!900) ((_ to_fp 11 53) x1_ack!897)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!897) ((_ to_fp 11 53) b_ack!900))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!897)
                    ((_ to_fp 11 53) x0_ack!901))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!899 x0_ack!901))

(check-sat)
(exit)
