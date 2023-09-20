(declare-fun x1_ack!6371 () (_ BitVec 64))
(declare-fun x0_ack!6375 () (_ BitVec 64))
(declare-fun x2_ack!6372 () (_ BitVec 64))
(declare-fun b_ack!6374 () (_ BitVec 64))
(declare-fun a_ack!6373 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6375) ((_ to_fp 11 53) x1_ack!6371)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6371) ((_ to_fp 11 53) x2_ack!6372)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6371)
                       ((_ to_fp 11 53) x0_ack!6375))
               ((_ to_fp 11 53) x0_ack!6375))
       ((_ to_fp 11 53) x1_ack!6371)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6371)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6371)
                       ((_ to_fp 11 53) x0_ack!6375)))
       ((_ to_fp 11 53) x0_ack!6375)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6372)
                       ((_ to_fp 11 53) x1_ack!6371))
               ((_ to_fp 11 53) x1_ack!6371))
       ((_ to_fp 11 53) x2_ack!6372)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6372)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6372)
                       ((_ to_fp 11 53) x1_ack!6371)))
       ((_ to_fp 11 53) x1_ack!6371)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6371)
                    ((_ to_fp 11 53) x0_ack!6375))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6372)
                    ((_ to_fp 11 53) x1_ack!6371))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6373) ((_ to_fp 11 53) b_ack!6374))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6373) ((_ to_fp 11 53) x0_ack!6375))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6374) ((_ to_fp 11 53) x2_ack!6372))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6373) ((_ to_fp 11 53) b_ack!6374))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6373) ((_ to_fp 11 53) x0_ack!6375))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6373) ((_ to_fp 11 53) x1_ack!6371)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6371) ((_ to_fp 11 53) a_ack!6373))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6374) ((_ to_fp 11 53) x1_ack!6371))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6374) ((_ to_fp 11 53) x2_ack!6372))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6372)
                    ((_ to_fp 11 53) x1_ack!6371))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!6374 x1_ack!6371))

(check-sat)
(exit)
