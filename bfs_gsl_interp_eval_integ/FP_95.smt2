(declare-fun x1_ack!5166 () (_ BitVec 64))
(declare-fun x0_ack!5170 () (_ BitVec 64))
(declare-fun x2_ack!5167 () (_ BitVec 64))
(declare-fun b_ack!5169 () (_ BitVec 64))
(declare-fun a_ack!5168 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5170) ((_ to_fp 11 53) x1_ack!5166)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5166) ((_ to_fp 11 53) x2_ack!5167)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5166)
                       ((_ to_fp 11 53) x0_ack!5170))
               ((_ to_fp 11 53) x0_ack!5170))
       ((_ to_fp 11 53) x1_ack!5166)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5166)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5166)
                       ((_ to_fp 11 53) x0_ack!5170)))
       ((_ to_fp 11 53) x0_ack!5170)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5167)
                       ((_ to_fp 11 53) x1_ack!5166))
               ((_ to_fp 11 53) x1_ack!5166))
       ((_ to_fp 11 53) x2_ack!5167)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5167)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5167)
                       ((_ to_fp 11 53) x1_ack!5166)))
       ((_ to_fp 11 53) x1_ack!5166)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5166)
                    ((_ to_fp 11 53) x0_ack!5170))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5167)
                    ((_ to_fp 11 53) x1_ack!5166))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5168) ((_ to_fp 11 53) b_ack!5169))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5168) ((_ to_fp 11 53) x0_ack!5170))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5169) ((_ to_fp 11 53) x2_ack!5167))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5168) ((_ to_fp 11 53) b_ack!5169))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5168) ((_ to_fp 11 53) x0_ack!5170))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5168) ((_ to_fp 11 53) x1_ack!5166)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5166) ((_ to_fp 11 53) a_ack!5168))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5169) ((_ to_fp 11 53) x1_ack!5166))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5169) ((_ to_fp 11 53) x2_ack!5167)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5167)
                    ((_ to_fp 11 53) x1_ack!5166))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5168)
                       ((_ to_fp 11 53) x1_ack!5166))
               ((_ to_fp 11 53) x1_ack!5166))
       ((_ to_fp 11 53) a_ack!5168)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5168)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5168)
                       ((_ to_fp 11 53) x1_ack!5166)))
       ((_ to_fp 11 53) x1_ack!5166)))

(check-sat)
(exit)
