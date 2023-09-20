(declare-fun x1_ack!3507 () (_ BitVec 64))
(declare-fun x0_ack!3511 () (_ BitVec 64))
(declare-fun y0_ack!3508 () (_ BitVec 64))
(declare-fun x_ack!3509 () (_ BitVec 64))
(declare-fun y_ack!3510 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3511) ((_ to_fp 11 53) x1_ack!3507))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3508) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3509) ((_ to_fp 11 53) x0_ack!3511))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3509) ((_ to_fp 11 53) x1_ack!3507))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3510) ((_ to_fp 11 53) y0_ack!3508))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3510) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3507)
                       ((_ to_fp 11 53) x0_ack!3511))
               ((_ to_fp 11 53) x0_ack!3511))
       ((_ to_fp 11 53) x1_ack!3507)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3507)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3507)
                       ((_ to_fp 11 53) x0_ack!3511)))
       ((_ to_fp 11 53) x0_ack!3511)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3508))
               ((_ to_fp 11 53) y0_ack!3508))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3508)))
       ((_ to_fp 11 53) y0_ack!3508)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3510)
                       ((_ to_fp 11 53) y0_ack!3508))
               ((_ to_fp 11 53) y0_ack!3508))
       ((_ to_fp 11 53) y_ack!3510)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3510)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3510)
                       ((_ to_fp 11 53) y0_ack!3508)))
       ((_ to_fp 11 53) y0_ack!3508)))

(check-sat)
(exit)
