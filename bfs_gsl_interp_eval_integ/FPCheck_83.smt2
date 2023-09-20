(declare-fun x1_ack!917 () (_ BitVec 64))
(declare-fun x0_ack!921 () (_ BitVec 64))
(declare-fun x2_ack!918 () (_ BitVec 64))
(declare-fun b_ack!920 () (_ BitVec 64))
(declare-fun a_ack!919 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!921) ((_ to_fp 11 53) x1_ack!917)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!917) ((_ to_fp 11 53) x2_ack!918)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!917)
                       ((_ to_fp 11 53) x0_ack!921))
               ((_ to_fp 11 53) x0_ack!921))
       ((_ to_fp 11 53) x1_ack!917)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!917)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!917)
                       ((_ to_fp 11 53) x0_ack!921)))
       ((_ to_fp 11 53) x0_ack!921)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!918)
                       ((_ to_fp 11 53) x1_ack!917))
               ((_ to_fp 11 53) x1_ack!917))
       ((_ to_fp 11 53) x2_ack!918)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!918)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!918)
                       ((_ to_fp 11 53) x1_ack!917)))
       ((_ to_fp 11 53) x1_ack!917)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!917)
                    ((_ to_fp 11 53) x0_ack!921))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!918)
                    ((_ to_fp 11 53) x1_ack!917))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!919) ((_ to_fp 11 53) b_ack!920))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!919) ((_ to_fp 11 53) x0_ack!921))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!920) ((_ to_fp 11 53) x2_ack!918))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!919) ((_ to_fp 11 53) b_ack!920))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!919) ((_ to_fp 11 53) x0_ack!921))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!919) ((_ to_fp 11 53) x1_ack!917))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!920) ((_ to_fp 11 53) x0_ack!921)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!917)
                    ((_ to_fp 11 53) x0_ack!921))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!919 x0_ack!921))

(check-sat)
(exit)
