(declare-fun x1_ack!398 () (_ BitVec 64))
(declare-fun x0_ack!402 () (_ BitVec 64))
(declare-fun x2_ack!399 () (_ BitVec 64))
(declare-fun b_ack!401 () (_ BitVec 64))
(declare-fun a_ack!400 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!402) ((_ to_fp 11 53) x1_ack!398)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!398) ((_ to_fp 11 53) x2_ack!399)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!398)
                       ((_ to_fp 11 53) x0_ack!402))
               ((_ to_fp 11 53) x0_ack!402))
       ((_ to_fp 11 53) x1_ack!398)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!398)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!398)
                       ((_ to_fp 11 53) x0_ack!402)))
       ((_ to_fp 11 53) x0_ack!402)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!399)
                       ((_ to_fp 11 53) x1_ack!398))
               ((_ to_fp 11 53) x1_ack!398))
       ((_ to_fp 11 53) x2_ack!399)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!399)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!399)
                       ((_ to_fp 11 53) x1_ack!398)))
       ((_ to_fp 11 53) x1_ack!398)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!398)
                    ((_ to_fp 11 53) x0_ack!402))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!399)
                    ((_ to_fp 11 53) x1_ack!398))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) b_ack!401))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) x0_ack!402))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!401) ((_ to_fp 11 53) x2_ack!399))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) b_ack!401))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) x0_ack!402))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) x1_ack!398))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!401) ((_ to_fp 11 53) x0_ack!402))))

(check-sat)
(exit)
